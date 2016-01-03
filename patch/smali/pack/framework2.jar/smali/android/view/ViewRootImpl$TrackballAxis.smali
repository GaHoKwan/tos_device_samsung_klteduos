.class final Landroid/view/ViewRootImpl$TrackballAxis;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TrackballAxis"
.end annotation


# static fields
.field static final ACCEL_MOVE_SCALING_FACTOR:F = 0.025f

.field static final FAST_MOVE_TIME:J = 0x96L

.field static final FIRST_MOVEMENT_THRESHOLD:F = 0.5f

.field static final MAX_ACCELERATION:F = 20.0f

.field static final SECOND_CUMULATIVE_MOVEMENT_THRESHOLD:F = 2.0f

.field static final SUBSEQUENT_INCREMENTAL_MOVEMENT_THRESHOLD:F = 1.0f


# instance fields
.field acceleration:F

.field dir:I

.field lastMoveTime:J

.field nonAccelMovement:I

.field position:F

.field step:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 5017
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5043
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 5044
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    return-void
.end method


# virtual methods
.method collect(FJLjava/lang/String;)F
    .locals 8
    .param p1, "off"    # F
    .param p2, "time"    # J
    .param p4, "axis"    # Ljava/lang/String;

    .prologue
    .line 5069
    const/4 v6, 0x0

    cmpl-float v6, p1, v6

    if-lez v6, :cond_3

    .line 5070
    const/high16 v6, 0x43160000    # 150.0f

    mul-float/2addr v6, p1

    float-to-long v3, v6

    .line 5071
    .local v3, "normTime":J
    iget v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    if-gez v6, :cond_0

    .line 5073
    const/4 v6, 0x0

    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 5074
    const/4 v6, 0x0

    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    .line 5075
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 5076
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    .line 5078
    :cond_0
    const/4 v6, 0x1

    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    .line 5096
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-lez v6, :cond_2

    .line 5097
    iget-wide v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    sub-long v1, p2, v6

    .line 5098
    .local v1, "delta":J
    iput-wide p2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    .line 5099
    iget v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 5100
    .local v0, "acc":F
    cmp-long v6, v1, v3

    if-gez v6, :cond_7

    .line 5102
    sub-long v6, v3, v1

    long-to-float v6, v6

    const v7, 0x3ccccccd    # 0.025f

    mul-float v5, v6, v7

    .line 5103
    .local v5, "scale":F
    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v5, v6

    if-lez v6, :cond_1

    mul-float/2addr v0, v5

    .line 5107
    :cond_1
    const/high16 v6, 0x41a00000    # 20.0f

    cmpg-float v6, v0, v6

    if-gez v6, :cond_6

    .end local v0    # "acc":F
    :goto_1
    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 5118
    .end local v1    # "delta":J
    .end local v5    # "scale":F
    :cond_2
    :goto_2
    iget v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    add-float/2addr v6, p1

    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 5119
    iget v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    return v6

    .line 5079
    .end local v3    # "normTime":J
    :cond_3
    const/4 v6, 0x0

    cmpg-float v6, p1, v6

    if-gez v6, :cond_5

    .line 5080
    neg-float v6, p1

    const/high16 v7, 0x43160000    # 150.0f

    mul-float/2addr v6, v7

    float-to-long v3, v6

    .line 5081
    .restart local v3    # "normTime":J
    iget v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    if-lez v6, :cond_4

    .line 5083
    const/4 v6, 0x0

    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 5084
    const/4 v6, 0x0

    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    .line 5085
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 5086
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    .line 5088
    :cond_4
    const/4 v6, -0x1

    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    goto :goto_0

    .line 5090
    .end local v3    # "normTime":J
    :cond_5
    const-wide/16 v3, 0x0

    .restart local v3    # "normTime":J
    goto :goto_0

    .line 5107
    .restart local v0    # "acc":F
    .restart local v1    # "delta":J
    .restart local v5    # "scale":F
    :cond_6
    const/high16 v0, 0x41a00000    # 20.0f

    goto :goto_1

    .line 5110
    .end local v5    # "scale":F
    :cond_7
    sub-long v6, v1, v3

    long-to-float v6, v6

    const v7, 0x3ccccccd    # 0.025f

    mul-float v5, v6, v7

    .line 5111
    .restart local v5    # "scale":F
    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v5, v6

    if-lez v6, :cond_8

    div-float/2addr v0, v5

    .line 5115
    :cond_8
    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v0, v6

    if-lez v6, :cond_9

    .end local v0    # "acc":F
    :goto_3
    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    goto :goto_2

    .restart local v0    # "acc":F
    :cond_9
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_3
.end method

.method generate()I
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 5131
    const/4 v2, 0x0

    .line 5132
    .local v2, "movement":I
    const/4 v4, 0x0

    iput v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    .line 5134
    :goto_0
    iget v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    move v1, v3

    .line 5135
    .local v1, "dir":I
    :goto_1
    iget v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    packed-switch v4, :pswitch_data_0

    .line 5167
    iget v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v6

    if-gez v4, :cond_2

    .line 5168
    :cond_0
    return v2

    .line 5134
    .end local v1    # "dir":I
    :cond_1
    const/4 v1, -0x1

    goto :goto_1

    .line 5140
    .restart local v1    # "dir":I
    :pswitch_0
    iget v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_0

    .line 5143
    add-int/2addr v2, v1

    .line 5144
    iget v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    add-int/2addr v4, v1

    iput v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    .line 5145
    iput v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    goto :goto_0

    .line 5151
    :pswitch_1
    iget v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v7

    if-ltz v4, :cond_0

    .line 5154
    add-int/2addr v2, v1

    .line 5155
    iget v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    add-int/2addr v4, v1

    iput v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    .line 5156
    iget v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    int-to-float v5, v1

    mul-float/2addr v5, v7

    sub-float/2addr v4, v5

    iput v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 5157
    const/4 v4, 0x2

    iput v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    goto :goto_0

    .line 5170
    :cond_2
    add-int/2addr v2, v1

    .line 5171
    iget v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    int-to-float v5, v1

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iput v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 5172
    iget v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 5173
    .local v0, "acc":F
    const v4, 0x3f8ccccd    # 1.1f

    mul-float/2addr v0, v4

    .line 5174
    const/high16 v4, 0x41a00000    # 20.0f

    cmpg-float v4, v0, v4

    if-gez v4, :cond_3

    .end local v0    # "acc":F
    :goto_2
    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    goto :goto_0

    .restart local v0    # "acc":F
    :cond_3
    iget v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    goto :goto_2

    .line 5135
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method reset(I)V
    .locals 2
    .param p1, "_step"    # I

    .prologue
    .line 5050
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 5051
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 5052
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    .line 5053
    iput p1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    .line 5054
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    .line 5055
    return-void
.end method
