.class public final Lcom/android/ss/c/c;
.super Ljava/lang/Object;


# static fields
.field public static a:[J

.field public static b:[C


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x7

    const/4 v2, 0x3

    const/4 v1, 0x1

    new-array v0, v4, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/ss/c/c;->a:[J

    const/16 v0, 0x9

    new-array v0, v0, [C

    aput-char v1, v0, v1

    const/4 v1, 0x2

    aput-char v2, v0, v1

    aput-char v3, v0, v2

    const/4 v1, 0x4

    const/16 v2, 0xf

    aput-char v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x1f

    aput-char v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x3f

    aput-char v2, v0, v1

    const/16 v1, 0x7f

    aput-char v1, v0, v3

    const/16 v1, 0xff

    aput-char v1, v0, v4

    sput-object v0, Lcom/android/ss/c/c;->b:[C

    return-void

    nop

    :array_0
    .array-data 8
        -0x4ef096b1a1fed969L    # -2.2222744022974718E-72
        -0x19f9adf965eb9e41L    # -2.9638048713314914E183
        -0x3ec65e75e250677eL    # -1679754.1159606283
        0x48714e3e86331547L    # 9.422087464996023E40
        -0x4e4c3a89410c2e16L    # -2.8646870190983873E-69
        0x430e97b4e4bad2baL    # 1.0763815610845032E15
        0x6d0c7ae4b68b6b2cL    # 1.9635758173418516E217
        -0x50822d292ba6b9e2L    # -6.288123896553165E-80
    .end array-data
.end method

.method private static a(I[J)C
    .locals 6

    div-int/lit8 v0, p0, 0x8

    aget-wide v0, p1, v0

    rem-int/lit8 v2, p0, 0x8

    rsub-int/lit8 v2, v2, 0x7

    const-wide/16 v3, 0xff

    mul-int/lit8 v5, v2, 0x8

    shl-long/2addr v3, v5

    and-long/2addr v0, v3

    mul-int/lit8 v2, v2, 0x8

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    int-to-char v0, v0

    return v0
.end method

.method public static a([B)V
    .locals 8

    array-length v0, p0

    add-int/lit8 v1, v0, -0x1

    array-length v0, p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/android/ss/c/c;->a(I)[J

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    if-le v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    rem-int/lit8 v3, v0, 0x40

    invoke-static {v3, v2}, Lcom/android/ss/c/c;->a(I[J)C

    move-result v3

    rem-int/lit8 v3, v3, 0x8

    aget-byte v4, p0, v0

    xor-int/lit8 v4, v4, -0x1

    sget-object v5, Lcom/android/ss/c/c;->b:[C

    aget-char v5, v5, v3

    and-int/2addr v5, v4

    sget-object v6, Lcom/android/ss/c/c;->b:[C

    rsub-int/lit8 v7, v3, 0x8

    aget-char v6, v6, v7

    shl-int/2addr v6, v3

    and-int/2addr v4, v6

    rsub-int/lit8 v6, v3, 0x8

    shl-int/2addr v5, v6

    ushr-int v3, v4, v3

    or-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static a(I)[J
    .locals 9

    const/16 v8, 0x8

    new-array v1, v8, [J

    rem-int/lit16 v0, p0, 0x100

    int-to-long v2, v0

    shl-long v4, v2, v8

    or-long/2addr v4, v2

    const/16 v0, 0x10

    shl-long v6, v2, v0

    or-long/2addr v4, v6

    const/16 v0, 0x18

    shl-long v6, v2, v0

    or-long/2addr v4, v6

    const/16 v0, 0x20

    shl-long v6, v2, v0

    or-long/2addr v4, v6

    const/16 v0, 0x28

    shl-long v6, v2, v0

    or-long/2addr v4, v6

    const/16 v0, 0x30

    shl-long v6, v2, v0

    or-long/2addr v4, v6

    const/16 v0, 0x38

    shl-long/2addr v2, v0

    or-long/2addr v2, v4

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v8, :cond_0

    return-object v1

    :cond_0
    sget-object v4, Lcom/android/ss/c/c;->a:[J

    aget-wide v4, v4, v0

    xor-long/2addr v4, v2

    aput-wide v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static b([B)V
    .locals 8

    array-length v0, p0

    add-int/lit8 v1, v0, -0x1

    array-length v0, p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/android/ss/c/c;->a(I)[J

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    if-le v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    rem-int/lit8 v3, v0, 0x40

    invoke-static {v3, v2}, Lcom/android/ss/c/c;->a(I[J)C

    move-result v3

    rem-int/lit8 v3, v3, 0x8

    aget-byte v4, p0, v0

    sget-object v5, Lcom/android/ss/c/c;->b:[C

    aget-char v5, v5, v3

    rsub-int/lit8 v6, v3, 0x8

    shl-int/2addr v5, v6

    and-int/2addr v5, v4

    sget-object v6, Lcom/android/ss/c/c;->b:[C

    rsub-int/lit8 v7, v3, 0x8

    aget-char v6, v6, v7

    and-int/2addr v4, v6

    shl-int/2addr v4, v3

    rsub-int/lit8 v3, v3, 0x8

    ushr-int v3, v5, v3

    or-int/2addr v3, v4

    xor-int/lit8 v3, v3, -0x1

    int-to-byte v3, v3

    aput-byte v3, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
