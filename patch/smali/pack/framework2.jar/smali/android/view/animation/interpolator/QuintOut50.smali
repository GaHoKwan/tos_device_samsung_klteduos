.class public Landroid/view/animation/interpolator/QuintOut50;
.super Ljava/lang/Object;
.source "QuintOut50.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field private static final segments:[[F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 9
    const/4 v0, 0x2

    new-array v0, v0, [[F

    const/4 v1, 0x0

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [F

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    sput-object v0, Landroid/view/animation/interpolator/QuintOut50;->segments:[[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f008312    # 0.502f
        0x3f3df3b6    # 0.742f
    .end array-data

    :array_1
    .array-data 4
        0x3f3df3b6    # 0.742f
        0x3f8a7efa    # 1.082f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 13
    .param p1, "input"    # F

    .prologue
    const/4 v12, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    .line 19
    div-float v0, p1, v11

    .line 20
    .local v0, "_loc_5":F
    sget-object v6, Landroid/view/animation/interpolator/QuintOut50;->segments:[[F

    array-length v1, v6

    .line 21
    .local v1, "_loc_6":I
    int-to-float v6, v1

    mul-float/2addr v6, v0

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v4, v6

    .line 22
    .local v4, "_loc_9":I
    sget-object v6, Landroid/view/animation/interpolator/QuintOut50;->segments:[[F

    array-length v6, v6

    if-lt v4, v6, :cond_0

    sget-object v6, Landroid/view/animation/interpolator/QuintOut50;->segments:[[F

    array-length v6, v6

    add-int/lit8 v4, v6, -0x1

    .line 24
    :cond_0
    int-to-float v6, v4

    int-to-float v7, v1

    div-float v7, v11, v7

    mul-float/2addr v6, v7

    sub-float v6, v0, v6

    int-to-float v7, v1

    mul-float v2, v6, v7

    .line 25
    .local v2, "_loc_7":F
    sget-object v6, Landroid/view/animation/interpolator/QuintOut50;->segments:[[F

    aget-object v3, v6, v4

    .line 26
    .local v3, "_loc_8":[F
    const/4 v6, 0x0

    aget v7, v3, v12

    const/high16 v8, 0x40000000    # 2.0f

    sub-float v9, v11, v2

    mul-float/2addr v8, v9

    const/4 v9, 0x1

    aget v9, v3, v9

    aget v10, v3, v12

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    const/4 v9, 0x2

    aget v9, v3, v9

    aget v10, v3, v12

    sub-float/2addr v9, v10

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    mul-float/2addr v7, v11

    add-float v5, v6, v7

    .line 28
    .local v5, "ret":F
    return v5
.end method
