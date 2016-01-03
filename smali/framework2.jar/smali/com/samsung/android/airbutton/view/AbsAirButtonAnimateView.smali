.class public abstract Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;
.super Lcom/samsung/android/airbutton/view/AbsAirButtonView;
.source "AbsAirButtonAnimateView.java"


# static fields
.field private static final CLOSE_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/airbutton_close.ogg"

.field private static final OPEN_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/airbutton_open.ogg"

.field private static sAirbuttonSounds:Landroid/media/SoundPool;

.field private static sCloseSoundId:I

.field private static sOpenSoundId:I


# instance fields
.field protected final ANIMATION_DURATION:I

.field private final SCALE_FOCUSED:F

.field private final SCALE_NORMAL:F

.field private final TAG:Ljava/lang/String;

.field protected mFinishAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private mHoverEnterAnimator:[Landroid/animation/AnimatorSet;

.field private mHoverExitAnimator:[Landroid/animation/AnimatorSet;

.field protected mIsFinishing:Z

.field protected mStartAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private mStreamSoundId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->sAirbuttonSounds:Landroid/media/SoundPool;

    .line 52
    sput v1, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->sOpenSoundId:I

    .line 53
    sput v1, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->sCloseSoundId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;Lcom/samsung/android/airbutton/Attributes;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;
    .param p3, "attrs"    # Lcom/samsung/android/airbutton/Attributes;

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;-><init>(Landroid/content/Context;Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;Lcom/samsung/android/airbutton/Attributes;)V

    .line 32
    const-string v0, "AbsAirButtonAnimateView"

    iput-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->TAG:Ljava/lang/String;

    .line 38
    const/16 v0, 0x50

    iput v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->ANIMATION_DURATION:I

    .line 39
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->SCALE_NORMAL:F

    .line 40
    const v0, 0x3f8ccccd    # 1.1f

    iput v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->SCALE_FOCUSED:F

    .line 41
    iput-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->mHoverEnterAnimator:[Landroid/animation/AnimatorSet;

    .line 42
    iput-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->mHoverExitAnimator:[Landroid/animation/AnimatorSet;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->mIsFinishing:Z

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->mStreamSoundId:I

    .line 225
    new-instance v0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView$1;-><init>(Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;)V

    iput-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->mStartAnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 246
    new-instance v0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView$2;-><init>(Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;)V

    iput-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->mFinishAnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 64
    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->loadSounds()V

    .line 66
    iget v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    new-array v0, v0, [Landroid/animation/AnimatorSet;

    iput-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->mHoverEnterAnimator:[Landroid/animation/AnimatorSet;

    .line 67
    iget v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    new-array v0, v0, [Landroid/animation/AnimatorSet;

    iput-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->mHoverExitAnimator:[Landroid/animation/AnimatorSet;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->playYPositionAdjustAnimationIfNeeded()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->shouldSendItemSelectedNotiFirst()Z

    move-result v0

    return v0
.end method

.method private loadSounds()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 71
    sget-object v0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->sAirbuttonSounds:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v2, v1}, Landroid/media/SoundPool;-><init>(III)V

    sput-object v0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->sAirbuttonSounds:Landroid/media/SoundPool;

    .line 74
    :cond_0
    sget v0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->sOpenSoundId:I

    if-ne v0, v3, :cond_1

    .line 75
    sget-object v0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->sAirbuttonSounds:Landroid/media/SoundPool;

    const-string v1, "/system/media/audio/ui/airbutton_open.ogg"

    invoke-virtual {v0, v1, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->sOpenSoundId:I

    .line 77
    sget v0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->sOpenSoundId:I

    if-nez v0, :cond_1

    .line 78
    const-string v0, "AbsAirButtonAnimateView"

    const-string v1, "failed to load sound from /system/media/audio/ui/airbutton_open.ogg"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_1
    sget v0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->sCloseSoundId:I

    if-ne v0, v3, :cond_2

    .line 82
    sget-object v0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->sAirbuttonSounds:Landroid/media/SoundPool;

    const-string v1, "/system/media/audio/ui/airbutton_close.ogg"

    invoke-virtual {v0, v1, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->sCloseSoundId:I

    .line 84
    sget v0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->sCloseSoundId:I

    if-nez v0, :cond_2

    .line 85
    const-string v0, "AbsAirButtonAnimateView"

    const-string v1, "failed to load sound from /system/media/audio/ui/airbutton_close.ogg"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_2
    return-void
.end method

.method private playYPositionAdjustAnimationIfNeeded()V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->UIType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 309
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsTouchEventEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsHoverEventEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsKeyEventEnabled:Z

    .line 310
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->generateAndPlayYPositionAdjustAnimation()V

    .line 312
    :cond_0
    return-void
.end method

.method private shouldSendItemSelectedNotiFirst()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 269
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    if-nez v2, :cond_1

    .line 277
    :cond_0
    :goto_0
    return v0

    .line 272
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->UIType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 273
    iget v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mSelectedViewIdx:I

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mSelectedViewIdx:I

    if-eq v2, v1, :cond_2

    iget v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mSelectedViewIdx:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    :cond_2
    move v0, v1

    .line 274
    goto :goto_0
.end method


# virtual methods
.method protected abstract generateAndPlayFinishAnimation()V
.end method

.method protected abstract generateAndPlayStartAnimation()V
.end method

.method protected generateAndPlayYPositionAdjustAnimation()V
    .locals 0

    .prologue
    .line 321
    return-void
.end method

.method protected getChildDrawingOrder(II)I
    .locals 5
    .param p1, "childCount"    # I
    .param p2, "viewIdx"    # I

    .prologue
    .line 96
    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v3, v3, Lcom/samsung/android/airbutton/Attributes;->UIType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 125
    .end local p2    # "viewIdx":I
    :goto_0
    return p2

    .line 100
    .restart local p2    # "viewIdx":I
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v3, v3, Lcom/samsung/android/airbutton/Attributes;->direction:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v3, v3, Lcom/samsung/android/airbutton/Attributes;->direction:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    :cond_1
    const/4 v2, 0x1

    .line 101
    .local v2, "isReverseDisplay":Z
    :goto_1
    const/4 v1, -0x1

    .line 103
    .local v1, "currentIdx":I
    if-eqz v2, :cond_5

    .line 104
    add-int/lit8 v3, p1, -0x1

    sub-int v1, v3, p2

    .line 106
    iget v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mFocusedViewIdx:I

    if-ltz v3, :cond_2

    .line 107
    add-int/lit8 v3, p1, -0x1

    iget v4, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mFocusedViewIdx:I

    sub-int v0, v3, v4

    .line 109
    .local v0, "convertedFocusedidx":I
    add-int/lit8 v3, p1, -0x1

    if-ne p2, v3, :cond_4

    .line 110
    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mFocusedViewIdx:I

    .end local v0    # "convertedFocusedidx":I
    :cond_2
    :goto_2
    move p2, v1

    .line 125
    goto :goto_0

    .line 100
    .end local v1    # "currentIdx":I
    .end local v2    # "isReverseDisplay":Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 111
    .restart local v0    # "convertedFocusedidx":I
    .restart local v1    # "currentIdx":I
    .restart local v2    # "isReverseDisplay":Z
    :cond_4
    if-lt p2, v0, :cond_2

    .line 112
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 115
    .end local v0    # "convertedFocusedidx":I
    :cond_5
    move v1, p2

    .line 117
    iget v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mFocusedViewIdx:I

    if-ltz v3, :cond_2

    .line 118
    add-int/lit8 v3, p1, -0x1

    if-ne p2, v3, :cond_6

    .line 119
    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mFocusedViewIdx:I

    goto :goto_2

    .line 120
    :cond_6
    iget v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mFocusedViewIdx:I

    if-lt p2, v3, :cond_2

    .line 121
    add-int/lit8 v1, p2, 0x1

    goto :goto_2
.end method

.method protected getScaleAnimation(IFF)Landroid/animation/AnimatorSet;
    .locals 9
    .param p1, "viewIdx"    # I
    .param p2, "scaleFrom"    # F
    .param p3, "scaleTo"    # F

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 297
    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v3, v3, p1

    const-string/jumbo v4, "scaleX"

    new-array v5, v8, [F

    aput p2, v5, v6

    aput p3, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 298
    .local v1, "mScaleX":Landroid/animation/ObjectAnimator;
    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v3, v3, p1

    const-string/jumbo v4, "scaleY"

    new-array v5, v8, [F

    aput p2, v5, v6

    aput p3, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 300
    .local v2, "mScaleY":Landroid/animation/ObjectAnimator;
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 301
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    new-array v3, v8, [Landroid/animation/Animator;

    aput-object v1, v3, v6

    aput-object v2, v3, v7

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 302
    const-wide/16 v3, 0x50

    invoke-virtual {v0, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 304
    return-object v0
.end method

.method protected onFinishing()V
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->mIsFinishing:Z

    .line 216
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsTouchEventEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsHoverEventEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsKeyEventEnabled:Z

    .line 217
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->generateAndPlayFinishAnimation()V

    .line 218
    return-void
.end method

.method protected onHoverEnter(I)V
    .locals 1
    .param p1, "viewIdx"    # I

    .prologue
    .line 167
    iget v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mFocusedViewIdx:I

    if-ne v0, p1, :cond_0

    .line 179
    :goto_0
    return-void

    .line 170
    :cond_0
    iget v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mFocusedViewIdx:I

    if-ltz v0, :cond_1

    .line 171
    iget v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mFocusedViewIdx:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->showHoverExitAnimation(I)V

    .line 173
    :cond_1
    iput p1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mFocusedViewIdx:I

    .line 175
    iget v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mFocusedViewIdx:I

    if-ltz v0, :cond_2

    .line 176
    iget v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mFocusedViewIdx:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->showHoverEnterAnimation(I)V

    .line 178
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method protected onHoverExit(I)V
    .locals 1
    .param p1, "viewIdx"    # I

    .prologue
    .line 183
    invoke-virtual {p0, p1}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->showHoverExitAnimation(I)V

    .line 185
    iget v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mFocusedViewIdx:I

    if-ne v0, p1, :cond_0

    .line 186
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mFocusedViewIdx:I

    .line 187
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 189
    :cond_0
    return-void
.end method

.method protected onLayoutChanged()V
    .locals 2

    .prologue
    .line 198
    iget-boolean v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsStartUp:Z

    if-eqz v1, :cond_1

    .line 199
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->initAllViewDelta()V

    .line 200
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->generateAndPlayStartAnimation()V

    .line 201
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsStartUp:Z

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAddedViewIdx:I

    if-ltz v1, :cond_0

    .line 203
    const/4 v0, 0x0

    .local v0, "viewIdx":I
    :goto_1
    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAddedViewIdx:I

    if-ge v0, v1, :cond_3

    .line 204
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsViewInitialized:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_2

    .line 205
    invoke-virtual {p0, v0}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->adjustViewDelta(I)V

    .line 203
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 208
    :cond_3
    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAddedViewIdx:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->adjustViewDelta(I)V

    .line 209
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAddedViewIdx:I

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->setStartViewIdx(I)V

    .line 194
    return-void
.end method

.method protected playCloseSound()V
    .locals 7

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 134
    sget-object v0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->sAirbuttonSounds:Landroid/media/SoundPool;

    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->mStreamSoundId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 135
    sget-object v0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->sAirbuttonSounds:Landroid/media/SoundPool;

    sget v1, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->sCloseSoundId:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->mStreamSoundId:I

    .line 136
    return-void
.end method

.method protected playOpenSound()V
    .locals 7

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 129
    sget-object v0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->sAirbuttonSounds:Landroid/media/SoundPool;

    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->mStreamSoundId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 130
    sget-object v0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->sAirbuttonSounds:Landroid/media/SoundPool;

    sget v1, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->sOpenSoundId:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->mStreamSoundId:I

    .line 131
    return-void
.end method

.method public reAdjustViewYPosition(II)V
    .locals 2
    .param p1, "yPosition"    # I
    .param p2, "parentViewHeight"    # I

    .prologue
    const/4 v1, 0x1

    .line 140
    invoke-super {p0, p1, p2}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->reAdjustViewYPosition(II)V

    .line 142
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsReservedToResetPosition:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsKeyEventEnabled:Z

    if-ne v0, v1, :cond_0

    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsReservedToResetPosition:Z

    .line 144
    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->playYPositionAdjustAnimationIfNeeded()V

    .line 146
    :cond_0
    return-void
.end method

.method public requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 151
    const/4 v0, 0x1

    return v0
.end method

.method public sendAccessibilityEvent(I)V
    .locals 0
    .param p1, "eventType"    # I

    .prologue
    .line 157
    return-void
.end method

.method protected showHoverEnterAnimation(I)V
    .locals 3
    .param p1, "viewIdx"    # I

    .prologue
    .line 281
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->mHoverExitAnimator:[Landroid/animation/AnimatorSet;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->mHoverExitAnimator:[Landroid/animation/AnimatorSet;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->mHoverExitAnimator:[Landroid/animation/AnimatorSet;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->mHoverEnterAnimator:[Landroid/animation/AnimatorSet;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f8ccccd    # 1.1f

    invoke-virtual {p0, p1, v1, v2}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->getScaleAnimation(IFF)Landroid/animation/AnimatorSet;

    move-result-object v1

    aput-object v1, v0, p1

    .line 285
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->mHoverEnterAnimator:[Landroid/animation/AnimatorSet;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 286
    return-void
.end method

.method protected showHoverExitAnimation(I)V
    .locals 3
    .param p1, "viewIdx"    # I

    .prologue
    .line 289
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->mHoverEnterAnimator:[Landroid/animation/AnimatorSet;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->mHoverEnterAnimator:[Landroid/animation/AnimatorSet;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->mHoverEnterAnimator:[Landroid/animation/AnimatorSet;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->mHoverExitAnimator:[Landroid/animation/AnimatorSet;

    const v1, 0x3f8ccccd    # 1.1f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v1, v2}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->getScaleAnimation(IFF)Landroid/animation/AnimatorSet;

    move-result-object v1

    aput-object v1, v0, p1

    .line 293
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->mHoverExitAnimator:[Landroid/animation/AnimatorSet;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 294
    return-void
.end method
