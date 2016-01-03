.class final Landroid/widget/TextView$Marquee;
.super Landroid/os/Handler;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Marquee"
.end annotation


# static fields
.field private static final MARQUEE_DELAY:I = 0x4b0

.field private static final MARQUEE_DELTA_MAX:F = 0.07f

.field private static final MARQUEE_PIXELS_PER_SECOND:I = 0x1e

.field private static final MARQUEE_RESOLUTION:I = 0x21

.field private static final MARQUEE_RESTART_DELAY:I = 0x4b0

.field private static final MARQUEE_RUNNING:B = 0x2t

.field private static final MARQUEE_STARTING:B = 0x1t

.field private static final MARQUEE_STOPPED:B = 0x0t

.field private static final MESSAGE_RESTART:I = 0x3

.field private static final MESSAGE_START:I = 0x1

.field private static final MESSAGE_TICK:I = 0x2


# instance fields
.field private mFadeStop:F

.field private mGhostOffset:F

.field private mGhostStart:F

.field private mMaxFadeScroll:F

.field private mMaxScroll:F

.field private mRepeatLimit:I

.field private mScroll:F

.field private final mScrollUnit:F

.field private mStatus:B

.field private final mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 3
    .param p1, "v"    # Landroid/widget/TextView;

    .prologue
    .line 11166
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 11155
    const/4 v1, 0x0

    iput-byte v1, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    .line 11167
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 11168
    .local v0, "density":F
    const/high16 v1, 0x41f00000    # 30.0f

    mul-float/2addr v1, v0

    const/high16 v2, 0x42040000    # 33.0f

    div-float/2addr v1, v2

    iput v1, p0, Landroid/widget/TextView$Marquee;->mScrollUnit:F

    .line 11169
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/widget/TextView$Marquee;->mView:Ljava/lang/ref/WeakReference;

    .line 11170
    return-void
.end method

.method private resetScroll()V
    .locals 2

    .prologue
    .line 11222
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    .line 11223
    iget-object v1, p0, Landroid/widget/TextView$Marquee;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 11224
    .local v0, "textView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 11225
    :cond_0
    return-void
.end method


# virtual methods
.method getGhostOffset()F
    .locals 1

    .prologue
    .line 11253
    iget v0, p0, Landroid/widget/TextView$Marquee;->mGhostOffset:F

    return v0
.end method

.method getMaxFadeScroll()F
    .locals 1

    .prologue
    .line 11261
    iget v0, p0, Landroid/widget/TextView$Marquee;->mMaxFadeScroll:F

    return v0
.end method

.method getScroll()F
    .locals 1

    .prologue
    .line 11257
    iget v0, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x2

    .line 11174
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 11191
    :cond_0
    :goto_0
    return-void

    .line 11176
    :pswitch_0
    iput-byte v1, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    .line 11177
    invoke-virtual {p0}, Landroid/widget/TextView$Marquee;->tick()V

    goto :goto_0

    .line 11180
    :pswitch_1
    invoke-virtual {p0}, Landroid/widget/TextView$Marquee;->tick()V

    goto :goto_0

    .line 11183
    :pswitch_2
    iget-byte v0, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    if-ne v0, v1, :cond_0

    .line 11184
    iget v0, p0, Landroid/widget/TextView$Marquee;->mRepeatLimit:I

    if-ltz v0, :cond_1

    .line 11185
    iget v0, p0, Landroid/widget/TextView$Marquee;->mRepeatLimit:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/widget/TextView$Marquee;->mRepeatLimit:I

    .line 11187
    :cond_1
    iget v0, p0, Landroid/widget/TextView$Marquee;->mRepeatLimit:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView$Marquee;->start(I)V

    goto :goto_0

    .line 11174
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method isRunning()Z
    .locals 2

    .prologue
    .line 11273
    iget-byte v0, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isStopped()Z
    .locals 1

    .prologue
    .line 11277
    iget-byte v0, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method shouldDrawGhost()Z
    .locals 2

    .prologue
    .line 11269
    iget-byte v0, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    iget v1, p0, Landroid/widget/TextView$Marquee;->mGhostStart:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method shouldDrawLeftFade()Z
    .locals 2

    .prologue
    .line 11265
    iget v0, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    iget v1, p0, Landroid/widget/TextView$Marquee;->mFadeStop:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method start(I)V
    .locals 7
    .param p1, "repeatLimit"    # I

    .prologue
    const/4 v6, 0x1

    .line 11228
    if-nez p1, :cond_1

    .line 11229
    invoke-virtual {p0}, Landroid/widget/TextView$Marquee;->stop()V

    .line 11250
    :cond_0
    :goto_0
    return-void

    .line 11232
    :cond_1
    iput p1, p0, Landroid/widget/TextView$Marquee;->mRepeatLimit:I

    .line 11233
    iget-object v4, p0, Landroid/widget/TextView$Marquee;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 11234
    .local v2, "textView":Landroid/widget/TextView;
    if-eqz v2, :cond_0

    # getter for: Landroid/widget/TextView;->mLayout:Landroid/text/Layout;
    invoke-static {v2}, Landroid/widget/TextView;->access$600(Landroid/widget/TextView;)Landroid/text/Layout;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 11235
    iput-byte v6, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    .line 11236
    const/4 v4, 0x0

    iput v4, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    .line 11237
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v5

    sub-int v3, v4, v5

    .line 11239
    .local v3, "textWidth":I
    # getter for: Landroid/widget/TextView;->mLayout:Landroid/text/Layout;
    invoke-static {v2}, Landroid/widget/TextView;->access$600(Landroid/widget/TextView;)Landroid/text/Layout;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    .line 11240
    .local v1, "lineWidth":F
    int-to-float v4, v3

    const/high16 v5, 0x40400000    # 3.0f

    div-float v0, v4, v5

    .line 11241
    .local v0, "gap":F
    int-to-float v4, v3

    sub-float v4, v1, v4

    add-float/2addr v4, v0

    iput v4, p0, Landroid/widget/TextView$Marquee;->mGhostStart:F

    .line 11242
    iget v4, p0, Landroid/widget/TextView$Marquee;->mGhostStart:F

    int-to-float v5, v3

    add-float/2addr v4, v5

    iput v4, p0, Landroid/widget/TextView$Marquee;->mMaxScroll:F

    .line 11243
    add-float v4, v1, v0

    iput v4, p0, Landroid/widget/TextView$Marquee;->mGhostOffset:F

    .line 11244
    int-to-float v4, v3

    const/high16 v5, 0x40c00000    # 6.0f

    div-float/2addr v4, v5

    add-float/2addr v4, v1

    iput v4, p0, Landroid/widget/TextView$Marquee;->mFadeStop:F

    .line 11245
    iget v4, p0, Landroid/widget/TextView$Marquee;->mGhostStart:F

    add-float/2addr v4, v1

    add-float/2addr v4, v1

    iput v4, p0, Landroid/widget/TextView$Marquee;->mMaxFadeScroll:F

    .line 11247
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 11248
    const-wide/16 v4, 0x4b0

    invoke-virtual {p0, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method stop()V
    .locals 1

    .prologue
    .line 11214
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    .line 11215
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 11216
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 11217
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 11218
    invoke-direct {p0}, Landroid/widget/TextView$Marquee;->resetScroll()V

    .line 11219
    return-void
.end method

.method tick()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 11194
    iget-byte v1, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    if-eq v1, v3, :cond_1

    .line 11211
    :cond_0
    :goto_0
    return-void

    .line 11198
    :cond_1
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 11200
    iget-object v1, p0, Landroid/widget/TextView$Marquee;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 11201
    .local v0, "textView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11202
    :cond_2
    iget v1, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    iget v2, p0, Landroid/widget/TextView$Marquee;->mScrollUnit:F

    add-float/2addr v1, v2

    iput v1, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    .line 11203
    iget v1, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    iget v2, p0, Landroid/widget/TextView$Marquee;->mMaxScroll:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 11204
    iget v1, p0, Landroid/widget/TextView$Marquee;->mMaxScroll:F

    iput v1, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    .line 11205
    const/4 v1, 0x3

    const-wide/16 v2, 0x4b0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 11209
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 11207
    :cond_3
    const-wide/16 v1, 0x21

    invoke-virtual {p0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method
