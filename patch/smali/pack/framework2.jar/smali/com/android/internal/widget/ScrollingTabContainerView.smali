.class public Lcom/android/internal/widget/ScrollingTabContainerView;
.super Landroid/widget/HorizontalScrollView;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;,
        Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;,
        Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;,
        Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final FADE_DURATION:I = 0xc8

.field private static final STYLE_ATTR:[I

.field private static final TAG:Ljava/lang/String; = "ScrollingTabContainerView"

.field private static mtwEnablePreDraw:Z

.field private static mtwEnableStartAnimation:Z

.field private static final mtwIsCapuccino:Z

.field private static final sAlphaInterpolator:Landroid/animation/TimeInterpolator;


# instance fields
.field private mAllowCollapse:Z

.field private mContentHeight:I

.field protected mContentMaxHeight:I

.field private mIsActionBarNonExtended:Z

.field private mIsExtendActionBar:Z

.field private mIsInTouchMode:Z

.field private mIsParentThemeDeviceDefault:Z

.field private mIsgetActionBarExtended:Z

.field mMaxTabWidth:I

.field private mSelectedTabIndex:I

.field mStackedTabMaxWidth:I

.field protected mStatusHeight:I

.field private mTabClickListener:Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;

.field private mTabLayout:Landroid/widget/LinearLayout;

.field mTabSelector:Ljava/lang/Runnable;

.field private mTabSpinner:Landroid/widget/Spinner;

.field public final mTabTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

.field protected final mVisAnimListener:Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

.field protected mVisibilityAnim:Landroid/animation/Animator;

.field private mtwColor:I

.field private mtwInterpolator:Landroid/view/animation/Interpolator;

.field private mtwOutSize:Landroid/graphics/Point;

.field private mtwShadowDx:F

.field private mtwShadowDy:F

.field private mtwShadowRadius:F

.field private mtwTabLayoutMoveAniEnabled:Z

.field private mtwTypefacezSelected:Landroid/graphics/Typeface;

.field private mtwTypefacezUnseleted:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 101
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/internal/widget/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    .line 115
    sput-boolean v1, Lcom/android/internal/widget/ScrollingTabContainerView;->mtwEnableStartAnimation:Z

    .line 116
    sput-boolean v1, Lcom/android/internal/widget/ScrollingTabContainerView;->mtwEnablePreDraw:Z

    .line 124
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/widget/ScrollingTabContainerView;->STYLE_ATTR:[I

    .line 132
    const-string v0, "capuccino"

    const-string/jumbo v1, "ro.build.scafe"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mtwIsCapuccino:Z

    return-void

    .line 124
    :array_0
    .array-data 4
        0x1010161
        0x1010162
        0x1010163
        0x1010164
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 135
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 99
    new-instance v6, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-direct {v6, p0}, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    iput-object v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisAnimListener:Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    .line 110
    iput-boolean v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsActionBarNonExtended:Z

    .line 114
    iput-boolean v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mtwTabLayoutMoveAniEnabled:Z

    .line 117
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    iput-object v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mtwOutSize:Landroid/graphics/Point;

    .line 118
    new-instance v6, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mtwInterpolator:Landroid/view/animation/Interpolator;

    .line 708
    new-instance v6, Lcom/android/internal/widget/ScrollingTabContainerView$3;

    invoke-direct {v6, p0}, Lcom/android/internal/widget/ScrollingTabContainerView$3;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    iput-object v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x111007a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsExtendActionBar:Z

    .line 138
    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x105000c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mStatusHeight:I

    .line 139
    iput v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mContentMaxHeight:I

    .line 141
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 142
    .local v3, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x101046c

    invoke-virtual {v6, v7, v3, v11}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 143
    iget v6, v3, Landroid/util/TypedValue;->data:I

    if-eqz v6, :cond_0

    .line 144
    iput-boolean v11, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsParentThemeDeviceDefault:Z

    .line 146
    :cond_0
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 147
    .local v4, "outValue2":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x1010466

    invoke-virtual {v6, v7, v4, v11}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 148
    iget v6, v4, Landroid/util/TypedValue;->data:I

    if-eqz v6, :cond_1

    .line 149
    iput-boolean v11, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsActionBarNonExtended:Z

    .line 152
    :cond_1
    invoke-virtual {p0, v10}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 154
    invoke-static {p1}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object v0

    .line 155
    .local v0, "abp":Lcom/android/internal/view/ActionBarPolicy;
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getTabContainerHeight()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 156
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getStackedTabMaxWidth()I

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    .line 158
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->createTabLayout()Landroid/widget/LinearLayout;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    .line 159
    iget-object v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x1

    invoke-direct {v7, v8, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v6, v7}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    iget-boolean v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsParentThemeDeviceDefault:Z

    if-eqz v6, :cond_2

    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v6

    if-nez v6, :cond_2

    sget-boolean v6, Lcom/android/internal/widget/ScrollingTabContainerView;->mtwIsCapuccino:Z

    if-eqz v6, :cond_2

    .line 163
    const-string/jumbo v6, "sec-roboto-light"

    invoke-static {v6, v10}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mtwTypefacezUnseleted:Landroid/graphics/Typeface;

    .line 164
    const-string/jumbo v6, "sans-serif"

    invoke-static {v6, v10}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mtwTypefacezSelected:Landroid/graphics/Typeface;

    .line 166
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 167
    .local v1, "actionbarTabText":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x10102f5

    invoke-virtual {v6, v7, v1, v11}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 169
    iget v6, v1, Landroid/util/TypedValue;->resourceId:I

    sget-object v7, Lcom/android/internal/widget/ScrollingTabContainerView;->STYLE_ATTR:[I

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 171
    .local v2, "attr":Landroid/content/res/TypedArray;
    const/high16 v6, -0x1000000

    invoke-virtual {v2, v10, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mtwColor:I

    .line 172
    invoke-virtual {v2, v11, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mtwShadowDx:F

    .line 173
    const/4 v6, 0x2

    invoke-virtual {v2, v6, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mtwShadowDy:F

    .line 174
    const/4 v6, 0x3

    invoke-virtual {v2, v6, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mtwShadowRadius:F

    .line 181
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 185
    .end local v1    # "actionbarTabText":Landroid/util/TypedValue;
    .end local v2    # "attr":Landroid/content/res/TypedArray;
    :cond_2
    iget-object v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    .line 186
    .local v5, "vto":Landroid/view/ViewTreeObserver;
    new-instance v6, Lcom/android/internal/widget/ScrollingTabContainerView$1;

    invoke-direct {v6, p0}, Lcom/android/internal/widget/ScrollingTabContainerView$1;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 208
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/ScrollingTabContainerView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ScrollingTabContainerView;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/widget/ScrollingTabContainerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ScrollingTabContainerView;

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mtwTabLayoutMoveAniEnabled:Z

    return v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 82
    sget-boolean v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mtwEnablePreDraw:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 82
    sput-boolean p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mtwEnablePreDraw:Z

    return p0
.end method

.method static synthetic access$500(Lcom/android/internal/widget/ScrollingTabContainerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ScrollingTabContainerView;

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsInTouchMode:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/widget/ScrollingTabContainerView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/ScrollingTabContainerView;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsInTouchMode:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/widget/ScrollingTabContainerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ScrollingTabContainerView;

    .prologue
    .line 82
    iget v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/widget/ScrollingTabContainerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ScrollingTabContainerView;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->isCollapsed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/widget/ScrollingTabContainerView;Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ScrollingTabContainerView;
    .param p1, "x1"    # Landroid/app/ActionBar$Tab;
    .param p2, "x2"    # Z

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ScrollingTabContainerView;->createTabView(Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object v0

    return-object v0
.end method

.method private createSpinner()Landroid/widget/Spinner;
    .locals 4

    .prologue
    .line 508
    new-instance v0, Landroid/widget/Spinner;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x10102d7

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 510
    .local v0, "spinner":Landroid/widget/Spinner;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 512
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemClickListenerInt(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 513
    return-object v0
.end method

.method private createTabLayout()Landroid/widget/LinearLayout;
    .locals 4

    .prologue
    .line 498
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x10102f4

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 500
    .local v0, "tabLayout":Landroid/widget/LinearLayout;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMeasureWithLargestChildEnabled(Z)V

    .line 502
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 504
    return-object v0
.end method

.method private createTabView(Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    .locals 7
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "forAdapter"    # Z

    .prologue
    const/4 v6, 0x0

    .line 620
    new-instance v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v5, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsParentThemeDeviceDefault:Z

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;Landroid/content/Context;Landroid/app/ActionBar$Tab;ZZ)V

    .line 621
    .local v0, "tabView":Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    if-eqz p2, :cond_0

    .line 622
    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 623
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 633
    :goto_0
    return-object v0

    .line 626
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 628
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabClickListener:Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;

    if-nez v1, :cond_1

    .line 629
    new-instance v1, Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;

    invoke-direct {v1, p0, v6}, Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;Lcom/android/internal/widget/ScrollingTabContainerView$1;)V

    iput-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabClickListener:Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;

    .line 631
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabClickListener:Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private isCollapsed()Z
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private performCollapse()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 388
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->isCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    :goto_0
    return-void

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_1

    .line 391
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->createSpinner()Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 394
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 396
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 397
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-direct {v1, p0, v4}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;Lcom/android/internal/widget/ScrollingTabContainerView$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 399
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 400
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 401
    iput-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    .line 403
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    iget v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/AbsSpinner;->setSelection(I)V

    goto :goto_0
.end method

.method private performExpand()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 407
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->isCollapsed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 414
    :goto_0
    return v4

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 410
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 412
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    .line 413
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    goto :goto_0
.end method


# virtual methods
.method public addTab(Landroid/app/ActionBar$Tab;IZ)V
    .locals 6
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I
    .param p3, "setSelected"    # Z

    .prologue
    const/4 v5, 0x0

    .line 652
    invoke-direct {p0, p1, v5}, Lcom/android/internal/widget/ScrollingTabContainerView;->createTabView(Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object v0

    .line 653
    .local v0, "tabView":Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, p2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 655
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_0

    .line 656
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 658
    :cond_0
    if-eqz p3, :cond_1

    .line 659
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setSelected(Z)V

    .line 661
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v1, :cond_2

    .line 662
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    .line 664
    :cond_2
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;Z)V
    .locals 6
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "setSelected"    # Z

    .prologue
    const/4 v5, 0x0

    .line 637
    invoke-direct {p0, p1, v5}, Lcom/android/internal/widget/ScrollingTabContainerView;->createTabView(Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object v0

    .line 638
    .local v0, "tabView":Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 640
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_0

    .line 641
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 643
    :cond_0
    if-eqz p2, :cond_1

    .line 644
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setSelected(Z)V

    .line 646
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v1, :cond_2

    .line 647
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    .line 649
    :cond_2
    return-void
.end method

.method public animateToTab(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 575
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 576
    .local v0, "tabView":Landroid/view/View;
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 577
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 579
    :cond_0
    new-instance v1, Lcom/android/internal/widget/ScrollingTabContainerView$2;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView$2;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    .line 586
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 587
    return-void
.end method

.method public animateToVisibility(I)V
    .locals 7
    .param p1, "visibility"    # I

    .prologue
    const-wide/16 v5, 0xc8

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 551
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    .line 552
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 554
    :cond_0
    if-nez p1, :cond_2

    .line 555
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 556
    invoke-virtual {p0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 558
    :cond_1
    const-string v1, "alpha"

    new-array v2, v2, [F

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 559
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 560
    sget-object v1, Lcom/android/internal/widget/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 562
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisAnimListener:Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 563
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 572
    :goto_0
    return-void

    .line 565
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_2
    const-string v1, "alpha"

    new-array v2, v2, [F

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 566
    .restart local v0    # "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 567
    sget-object v1, Lcom/android/internal/widget/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 569
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisAnimListener:Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 570
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public isTabHasFocus()Z
    .locals 4

    .prologue
    .line 725
    iget-object v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 726
    .local v2, "tabCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 727
    iget-object v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 728
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 729
    const/4 v3, 0x1

    .line 731
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return v3

    .line 726
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 731
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 591
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 592
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 603
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v4, 0x0

    .line 518
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 520
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object v0

    .line 523
    .local v0, "abp":Lcom/android/internal/view/ActionBarPolicy;
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getTabContainerHeight()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 524
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getStackedTabMaxWidth()I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    .line 527
    iget-boolean v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsExtendActionBar:Z

    if-eqz v3, :cond_0

    .line 528
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 529
    .local v2, "vp":Landroid/view/ViewParent;
    const/4 v1, 0x0

    .line 531
    .local v1, "mActionBarContainer":Lcom/android/internal/widget/ActionBarContainer;
    instance-of v3, v2, Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v3, :cond_1

    move-object v1, v2

    .line 532
    check-cast v1, Lcom/android/internal/widget/ActionBarContainer;

    .line 533
    invoke-virtual {v1, v4}, Lcom/android/internal/widget/ActionBarContainer;->setScrollingTabExtended(Z)V

    .line 534
    invoke-virtual {p0, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 535
    iput v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mContentMaxHeight:I

    .line 548
    .end local v1    # "mActionBarContainer":Lcom/android/internal/widget/ActionBarContainer;
    .end local v2    # "vp":Landroid/view/ViewParent;
    :cond_0
    :goto_0
    return-void

    .line 536
    .restart local v1    # "mActionBarContainer":Lcom/android/internal/widget/ActionBarContainer;
    .restart local v2    # "vp":Landroid/view/ViewParent;
    :cond_1
    instance-of v3, v2, Lcom/android/internal/widget/ActionBarView;

    if-eqz v3, :cond_0

    .line 537
    check-cast v2, Lcom/android/internal/widget/ActionBarView;

    .end local v2    # "vp":Landroid/view/ViewParent;
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 539
    .restart local v2    # "vp":Landroid/view/ViewParent;
    instance-of v3, v2, Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 540
    check-cast v1, Lcom/android/internal/widget/ActionBarContainer;

    .line 541
    invoke-virtual {v1, v4}, Lcom/android/internal/widget/ActionBarContainer;->setScrollingTabExtended(Z)V

    .line 542
    invoke-virtual {p0, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 543
    iput v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mContentMaxHeight:I

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 607
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 608
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 617
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 698
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object v0, p2

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    .line 700
    .local v0, "tabView":Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 701
    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar$Tab;->select()V

    .line 704
    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 26
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 256
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v21

    .line 257
    .local v21, "widthMode":I
    const/high16 v22, 0x40000000    # 2.0f

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_9

    const/4 v12, 0x1

    .line 258
    .local v12, "lockedExpanded":Z
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    .line 261
    .local v7, "childCount":I
    const/16 v22, 0x1

    move/from16 v0, v22

    if-le v7, v0, :cond_b

    const/high16 v22, 0x40000000    # 2.0f

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    const/high16 v22, -0x80000000

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_b

    .line 263
    :cond_0
    const/16 v22, 0x2

    move/from16 v0, v22

    if-le v7, v0, :cond_a

    .line 264
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const v23, 0x3ecccccd    # 0.4f

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    .line 271
    :goto_1
    new-instance v19, Landroid/util/TypedValue;

    invoke-direct/range {v19 .. v19}, Landroid/util/TypedValue;-><init>()V

    .line 272
    .local v19, "outValue":Landroid/util/TypedValue;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v22

    const v23, 0x1010465

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v19

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 273
    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/TypedValue;->data:I

    move/from16 v22, v0

    if-nez v22, :cond_1

    .line 274
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    .line 282
    .end local v19    # "outValue":Landroid/util/TypedValue;
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsExtendActionBar:Z

    move/from16 v22, v0

    if-eqz v22, :cond_5

    .line 283
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v20

    .line 284
    .local v20, "vp":Landroid/view/ViewParent;
    const/16 v16, 0x0

    .line 285
    .local v16, "mIsUnderActionBarView":Z
    const/4 v13, 0x0

    .line 286
    .local v13, "mActionBarContainer":Lcom/android/internal/widget/ActionBarContainer;
    const/4 v14, 0x0

    .line 287
    .local v14, "mActionBarView":Lcom/android/internal/widget/ActionBarView;
    const/4 v11, 0x0

    .line 289
    .local v11, "isTwGetTabsOnTop":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mContentMaxHeight:I

    move/from16 v22, v0

    if-nez v22, :cond_2

    .line 290
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mStatusHeight:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ScrollingTabContainerView;->mContentMaxHeight:I

    .line 293
    :cond_2
    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/android/internal/widget/ActionBarContainer;

    move/from16 v22, v0

    if-eqz v22, :cond_c

    .line 294
    const/16 v16, 0x0

    move-object/from16 v13, v20

    .line 295
    check-cast v13, Lcom/android/internal/widget/ActionBarContainer;

    .line 296
    invoke-virtual {v13}, Lcom/android/internal/widget/ActionBarContainer;->twGetTabsOnTop()Z

    move-result v11

    .line 306
    :cond_3
    :goto_3
    if-eqz v13, :cond_4

    .line 308
    invoke-virtual {v13}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v15

    .line 310
    .local v15, "mCntActionBarContainerChild":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_4
    if-ge v9, v15, :cond_4

    .line 311
    invoke-virtual {v13, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, v22

    instance-of v0, v0, Lcom/android/internal/widget/ActionBarView;

    move/from16 v22, v0

    if-eqz v22, :cond_d

    .line 312
    invoke-virtual {v13, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Lcom/android/internal/widget/ActionBarView;

    move-object/from16 v14, v22

    check-cast v14, Lcom/android/internal/widget/ActionBarView;

    .line 314
    invoke-virtual {v14}, Lcom/android/internal/widget/ActionBarView;->getDisplayOptions()I

    move-result v22

    and-int/lit8 v22, v22, 0x2

    if-eqz v22, :cond_e

    .line 315
    const/4 v11, 0x0

    .line 324
    .end local v9    # "i":I
    .end local v15    # "mCntActionBarContainerChild":I
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsParentThemeDeviceDefault:Z

    move/from16 v22, v0

    if-eqz v22, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsActionBarNonExtended:Z

    move/from16 v22, v0

    if-nez v22, :cond_5

    if-nez v16, :cond_5

    if-eqz v11, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result v22

    const/high16 v23, 0x40000000    # 2.0f

    and-int v22, v22, v23

    const/high16 v23, 0x40000000    # 2.0f

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    if-eqz v22, :cond_5

    .line 326
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mContentMaxHeight:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    .line 327
    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mStatusHeight:I

    move/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 332
    .end local v11    # "isTwGetTabsOnTop":Z
    .end local v13    # "mActionBarContainer":Lcom/android/internal/widget/ActionBarContainer;
    .end local v14    # "mActionBarView":Lcom/android/internal/widget/ActionBarView;
    .end local v16    # "mIsUnderActionBarView":Z
    .end local v20    # "vp":Landroid/view/ViewParent;
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 334
    if-nez v12, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    move/from16 v22, v0

    if-eqz v22, :cond_f

    const/4 v5, 0x1

    .line 336
    .local v5, "canCollapse":Z
    :goto_5
    const/4 v10, 0x0

    .line 337
    .local v10, "isCustomView":Z
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_6
    if-ge v9, v7, :cond_6

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    .line 339
    .local v6, "child":Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    if-eqz v6, :cond_10

    invoke-virtual {v6}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/app/ActionBar$Tab;

    move-result-object v22

    if-eqz v22, :cond_10

    invoke-virtual {v6}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/app/ActionBar$Tab;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/ActionBar$Tab;->getCustomView()Landroid/view/View;

    move-result-object v22

    if-eqz v22, :cond_10

    .line 340
    const/4 v10, 0x1

    .line 346
    .end local v6    # "child":Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    :cond_6
    if-eqz v5, :cond_12

    if-nez v10, :cond_12

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getMeasuredWidth()I

    move-result v22

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_11

    .line 350
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->performCollapse()V

    .line 358
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    move-object/from16 v22, v0

    if-eqz v22, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsParentThemeDeviceDefault:Z

    move/from16 v22, v0

    if-eqz v22, :cond_7

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 360
    .local v8, "flparams":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x10500cb

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 364
    .end local v8    # "flparams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 365
    .local v18, "oldWidth":I
    invoke-super/range {p0 .. p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 366
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    .line 368
    .local v17, "newWidth":I
    if-eqz v12, :cond_8

    move/from16 v0, v18

    move/from16 v1, v17

    if-eq v0, v1, :cond_8

    .line 370
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    .line 372
    :cond_8
    return-void

    .line 257
    .end local v5    # "canCollapse":Z
    .end local v7    # "childCount":I
    .end local v9    # "i":I
    .end local v10    # "isCustomView":Z
    .end local v12    # "lockedExpanded":Z
    .end local v17    # "newWidth":I
    .end local v18    # "oldWidth":I
    :cond_9
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 266
    .restart local v7    # "childCount":I
    .restart local v12    # "lockedExpanded":Z
    :cond_a
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v22

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    goto/16 :goto_1

    .line 279
    :cond_b
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    goto/16 :goto_2

    .line 297
    .restart local v11    # "isTwGetTabsOnTop":Z
    .restart local v13    # "mActionBarContainer":Lcom/android/internal/widget/ActionBarContainer;
    .restart local v14    # "mActionBarView":Lcom/android/internal/widget/ActionBarView;
    .restart local v16    # "mIsUnderActionBarView":Z
    .restart local v20    # "vp":Landroid/view/ViewParent;
    :cond_c
    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/android/internal/widget/ActionBarView;

    move/from16 v22, v0

    if-eqz v22, :cond_3

    .line 298
    const/16 v16, 0x1

    .line 299
    check-cast v20, Lcom/android/internal/widget/ActionBarView;

    .end local v20    # "vp":Landroid/view/ViewParent;
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v20

    .line 301
    .restart local v20    # "vp":Landroid/view/ViewParent;
    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/android/internal/widget/ActionBarContainer;

    move/from16 v22, v0

    if-eqz v22, :cond_3

    move-object/from16 v13, v20

    .line 302
    check-cast v13, Lcom/android/internal/widget/ActionBarContainer;

    goto/16 :goto_3

    .line 318
    .restart local v9    # "i":I
    .restart local v15    # "mCntActionBarContainerChild":I
    :cond_d
    if-ne v9, v15, :cond_e

    .line 319
    const/4 v11, 0x1

    .line 310
    :cond_e
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_4

    .line 334
    .end local v9    # "i":I
    .end local v11    # "isTwGetTabsOnTop":Z
    .end local v13    # "mActionBarContainer":Lcom/android/internal/widget/ActionBarContainer;
    .end local v14    # "mActionBarView":Lcom/android/internal/widget/ActionBarView;
    .end local v15    # "mCntActionBarContainerChild":I
    .end local v16    # "mIsUnderActionBarView":Z
    .end local v20    # "vp":Landroid/view/ViewParent;
    :cond_f
    const/4 v5, 0x0

    goto/16 :goto_5

    .line 337
    .restart local v5    # "canCollapse":Z
    .restart local v6    # "child":Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    .restart local v9    # "i":I
    .restart local v10    # "isCustomView":Z
    :cond_10
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_6

    .line 352
    .end local v6    # "child":Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->performExpand()Z

    goto/16 :goto_7

    .line 355
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->performExpand()Z

    goto/16 :goto_7
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 231
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onSizeChanged(IIII)V

    .line 233
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 6
    .param p1, "hasWindowFocus"    # Z

    .prologue
    const/4 v5, 0x0

    .line 237
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    .line 240
    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mtwTabLayoutMoveAniEnabled:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/internal/widget/ScrollingTabContainerView;->mtwEnableStartAnimation:Z

    if-eqz v1, :cond_0

    .line 241
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v4, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 242
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 243
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 245
    new-instance v1, Landroid/view/animation/interpolator/SineInOut70;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineInOut70;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 247
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 248
    sput-boolean v5, Lcom/android/internal/widget/ScrollingTabContainerView;->mtwEnableStartAnimation:Z

    .line 251
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_0
    return-void
.end method

.method public removeAllTabs()V
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 688
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 691
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_1

    .line 692
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    .line 694
    :cond_1
    return-void
.end method

.method public removeTabAt(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 677
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 678
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 681
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_1

    .line 682
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    .line 684
    :cond_1
    return-void
.end method

.method public setAllowCollapse(Z)V
    .locals 0
    .param p1, "allowCollapse"    # Z

    .prologue
    .line 384
    iput-boolean p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    .line 385
    return-void
.end method

.method public setContentHeight(I)V
    .locals 0
    .param p1, "contentHeight"    # I

    .prologue
    .line 493
    iput p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    .line 494
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    .line 495
    return-void
.end method

.method public setTabSelected(I)V
    .locals 12
    .param p1, "position"    # I

    .prologue
    const/4 v11, 0x0

    .line 418
    const/4 v8, 0x0

    .line 419
    .local v8, "previousIndex":I
    const/4 v5, 0x0

    .line 421
    .local v5, "isCustomView":Z
    iget v8, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    .line 422
    iput p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    .line 424
    iget-object v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    .line 425
    .local v9, "tabCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v9, :cond_7

    .line 426
    iget-object v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 427
    .local v0, "child":Landroid/view/View;
    if-ne v4, p1, :cond_4

    const/4 v6, 0x1

    .line 428
    .local v6, "isSelected":Z
    :goto_1
    invoke-virtual {v0, v6}, Landroid/view/View;->setSelected(Z)V

    .line 430
    invoke-virtual {v0, v11}, Landroid/view/View;->setPressed(Z)V

    .line 432
    if-eqz v6, :cond_0

    .line 433
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ScrollingTabContainerView;->animateToTab(I)V

    .line 439
    :cond_0
    iget-boolean v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsParentThemeDeviceDefault:Z

    if-eqz v10, :cond_3

    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v10

    if-nez v10, :cond_3

    sget-boolean v10, Lcom/android/internal/widget/ScrollingTabContainerView;->mtwIsCapuccino:Z

    if-eqz v10, :cond_3

    .line 440
    if-nez v5, :cond_1

    instance-of v10, v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    if-eqz v10, :cond_1

    move-object v2, v0

    .line 441
    check-cast v2, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    .line 442
    .local v2, "childTabView":Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/app/ActionBar$Tab;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-virtual {v2}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/app/ActionBar$Tab;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/ActionBar$Tab;->getCustomView()Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 444
    const/4 v5, 0x1

    .line 451
    .end local v2    # "childTabView":Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    :cond_1
    if-nez v5, :cond_3

    .line 453
    if-ne v8, v4, :cond_2

    instance-of v10, v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    if-eqz v10, :cond_2

    move-object v10, v0

    .line 454
    check-cast v10, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 455
    .local v1, "childCount":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2
    if-ge v7, v1, :cond_2

    move-object v10, v0

    .line 456
    check-cast v10, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {v10, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 457
    .local v3, "childView":Landroid/view/View;
    instance-of v10, v3, Landroid/widget/TextView;

    if-eqz v10, :cond_5

    .line 460
    check-cast v3, Landroid/widget/TextView;

    .end local v3    # "childView":Landroid/view/View;
    iget-object v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mtwTypefacezUnseleted:Landroid/graphics/Typeface;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 468
    .end local v1    # "childCount":I
    .end local v7    # "j":I
    :cond_2
    if-ne p1, v4, :cond_3

    instance-of v10, v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    if-eqz v10, :cond_3

    move-object v10, v0

    .line 469
    check-cast v10, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 470
    .restart local v1    # "childCount":I
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_3
    if-ge v7, v1, :cond_3

    move-object v10, v0

    .line 471
    check-cast v10, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {v10, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 472
    .restart local v3    # "childView":Landroid/view/View;
    instance-of v10, v3, Landroid/widget/TextView;

    if-eqz v10, :cond_6

    .line 475
    check-cast v3, Landroid/widget/TextView;

    .end local v3    # "childView":Landroid/view/View;
    iget-object v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mtwTypefacezSelected:Landroid/graphics/Typeface;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 425
    .end local v1    # "childCount":I
    .end local v7    # "j":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .end local v6    # "isSelected":Z
    :cond_4
    move v6, v11

    .line 427
    goto :goto_1

    .line 455
    .restart local v1    # "childCount":I
    .restart local v3    # "childView":Landroid/view/View;
    .restart local v6    # "isSelected":Z
    .restart local v7    # "j":I
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 470
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 487
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childCount":I
    .end local v3    # "childView":Landroid/view/View;
    .end local v6    # "isSelected":Z
    .end local v7    # "j":I
    :cond_7
    iget-object v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v10, :cond_8

    if-ltz p1, :cond_8

    .line 488
    iget-object v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v10, p1}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 490
    :cond_8
    return-void
.end method

.method public twGetMoveLength()I
    .locals 6

    .prologue
    .line 216
    const/4 v2, 0x0

    .line 217
    .local v2, "screenWidth":I
    const/4 v1, 0x0

    .line 218
    .local v1, "movingLength":I
    const/4 v3, 0x0

    .line 220
    .local v3, "tabLayoutWidth":I
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 221
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 222
    .local v0, "display":Landroid/view/Display;
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mtwOutSize:Landroid/graphics/Point;

    invoke-virtual {v0, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 223
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mtwOutSize:Landroid/graphics/Point;

    iget v2, v4, Landroid/graphics/Point;->x:I

    .line 224
    sub-int v1, v3, v2

    .line 226
    return v1
.end method

.method public twSetSCTabMoveEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 212
    iput-boolean p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mtwTabLayoutMoveAniEnabled:Z

    .line 213
    return-void
.end method

.method public updateTab(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 667
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->update()V

    .line 668
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 671
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_1

    .line 672
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    .line 674
    :cond_1
    return-void
.end method
