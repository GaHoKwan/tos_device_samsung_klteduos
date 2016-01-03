.class public Landroid/telephony/SignalStrength;
.super Ljava/lang/Object;
.source "SignalStrength.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/SignalStrength;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field public static final INVALID:I = 0x7fffffff

.field private static final LOG_TAG:Ljava/lang/String; = "SignalStrength"

.field public static NUM_SIGNAL_STRENGTH_BINS:I = 0x0

.field private static final PROPERTY_IMS_REGISTERED:Ljava/lang/String; = "persist.sys.ims.reg"

.field private static final PROPERTY_IMS_VOLTE_ENALBLED:Ljava/lang/String; = "persist.sys.ims.volte_enabled"

.field private static final PROPERTY_IMS_VOLTE_SUPPORTED:Ljava/lang/String; = "persist.sys.ims.volte_supported"

.field public static final SIGNAL_STRENGTH_GOOD:I = 0x3

.field public static final SIGNAL_STRENGTH_GREAT:I = 0x4

.field public static final SIGNAL_STRENGTH_MODERATE:I = 0x2

.field public static final SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

.field public static final SIGNAL_STRENGTH_NONE_OR_UNKNOWN:I = 0x0

.field public static final SIGNAL_STRENGTH_POOR:I = 0x1


# instance fields
.field private isGsm:Z

.field private mCdmaDbm:I

.field private mCdmaEcio:I

.field private mEvdoDbm:I

.field private mEvdoEcio:I

.field private mEvdoSnr:I

.field private mGsmBitErrorRate:I

.field private mGsmSignalStrength:I

.field private mLteCqi:I

.field private mLteRsrp:I

.field private mLteRsrq:I

.field private mLteRssnr:I

.field private mLteSignalStrength:I

.field private mSignalBar:I

.field private mTdScdmaRscp:I

.field private mWeakRssi:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Landroid/telephony/SignalStrength;->InitializeSignalBins()I

    move-result v0

    sput v0, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    .line 63
    invoke-static {}, Landroid/telephony/SignalStrength;->InitializeSignalNames()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    .line 566
    new-instance v0, Landroid/telephony/SignalStrength$1;

    invoke-direct {v0}, Landroid/telephony/SignalStrength$1;-><init>()V

    sput-object v0, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x63

    const/4 v2, 0x0

    const v1, 0x7fffffff

    const/4 v0, -0x1

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-boolean v2, p0, Landroid/telephony/SignalStrength;->mWeakRssi:Z

    .line 155
    iput v3, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 156
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 157
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 158
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 159
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 160
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 161
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 162
    iput v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 163
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 164
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 165
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 166
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 167
    iput v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 170
    iput v2, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    .line 172
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIIZ)V
    .locals 15
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "tdScdmaRscp"    # I
    .param p14, "gsmFlag"    # Z

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/telephony/SignalStrength;->mWeakRssi:Z

    move-object v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p14

    .line 227
    invoke-virtual/range {v1 .. v14}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 230
    move/from16 v0, p13

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 232
    const/4 v1, 0x0

    iput v1, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    .line 234
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIIZI)V
    .locals 15
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "tdScdmaRscp"    # I
    .param p14, "gsmFlag"    # Z
    .param p15, "signalBar"    # I

    .prologue
    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/telephony/SignalStrength;->mWeakRssi:Z

    move-object v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p14

    .line 259
    invoke-virtual/range {v1 .. v14}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 262
    move/from16 v0, p13

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 263
    move/from16 v0, p15

    iput v0, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    .line 264
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIIZIZ)V
    .locals 15
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "tdScdmaRscp"    # I
    .param p14, "gsmFlag"    # Z
    .param p15, "signalBar"    # I
    .param p16, "lowRSSI"    # Z

    .prologue
    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/telephony/SignalStrength;->mWeakRssi:Z

    move-object v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p14

    .line 291
    invoke-virtual/range {v1 .. v14}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 294
    move/from16 v0, p13

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 295
    move/from16 v0, p15

    iput v0, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    .line 296
    move/from16 v0, p16

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->mWeakRssi:Z

    .line 297
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIZ)V
    .locals 1
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsmFlag"    # Z

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->mWeakRssi:Z

    .line 212
    invoke-virtual/range {p0 .. p13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 215
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIZI)V
    .locals 1
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsmFlag"    # Z
    .param p14, "signalBar"    # I

    .prologue
    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->mWeakRssi:Z

    .line 245
    invoke-virtual/range {p0 .. p13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 248
    iput p14, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    .line 249
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIZIZ)V
    .locals 2
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsmFlag"    # Z
    .param p14, "signalBar"    # I
    .param p15, "lowRSSI"    # Z

    .prologue
    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/telephony/SignalStrength;->mWeakRssi:Z

    .line 276
    invoke-virtual/range {p0 .. p13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 279
    move/from16 v0, p14

    iput v0, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    .line 280
    move/from16 v0, p15

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->mWeakRssi:Z

    .line 281
    return-void
.end method

.method public constructor <init>(IIIIIIIZ)V
    .locals 14
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "gsmFlag"    # Z

    .prologue
    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->mWeakRssi:Z

    .line 309
    const/16 v8, 0x63

    const v9, 0x7fffffff

    const v10, 0x7fffffff

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v13, p8

    invoke-virtual/range {v0 .. v13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 312
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-boolean v2, p0, Landroid/telephony/SignalStrength;->mWeakRssi:Z

    .line 474
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 475
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 476
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 477
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 478
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 479
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 480
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 481
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 482
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 483
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 484
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 485
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 486
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 487
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 489
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    .line 492
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Landroid/telephony/SignalStrength;->mWeakRssi:Z

    .line 494
    return-void

    :cond_0
    move v0, v2

    .line 487
    goto :goto_0

    :cond_1
    move v1, v2

    .line 492
    goto :goto_1
.end method

.method public constructor <init>(Landroid/telephony/SignalStrength;)V
    .locals 1
    .param p1, "s"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->mWeakRssi:Z

    .line 322
    invoke-virtual {p0, p1}, Landroid/telephony/SignalStrength;->copyFrom(Landroid/telephony/SignalStrength;)V

    .line 323
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 4
    .param p1, "gsmFlag"    # Z

    .prologue
    const/16 v3, 0x63

    const/4 v2, 0x0

    const v1, 0x7fffffff

    const/4 v0, -0x1

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-boolean v2, p0, Landroid/telephony/SignalStrength;->mWeakRssi:Z

    .line 183
    iput v3, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 184
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 185
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 186
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 187
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 188
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 189
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 190
    iput v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 191
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 192
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 193
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 194
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 195
    iput v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 196
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 198
    iput v2, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    .line 200
    return-void
.end method

.method private static InitializeSignalBins()I
    .locals 3

    .prologue
    .line 119
    const/4 v0, 0x5

    .line 121
    .local v0, "maxRSSI":I
    const-string v1, "1"

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "2"

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "4"

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 124
    :cond_0
    const/4 v0, 0x6

    .line 129
    :cond_1
    :goto_0
    return v0

    .line 126
    :cond_2
    const-string v1, "5"

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    const/4 v0, 0x7

    goto :goto_0
.end method

.method private static InitializeSignalNames()[Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 134
    const-string v3, "1"

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "2"

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "4"

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 137
    :cond_0
    const/4 v3, 0x6

    new-array v2, v3, [Ljava/lang/String;

    const-string/jumbo v3, "none"

    aput-object v3, v2, v5

    const-string/jumbo v3, "poor"

    aput-object v3, v2, v6

    const-string/jumbo v3, "moderate"

    aput-object v3, v2, v7

    const-string v3, "good"

    aput-object v3, v2, v8

    const-string v3, "great"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "excellent"

    aput-object v4, v2, v3

    .local v2, "vzwName":[Ljava/lang/String;
    move-object v1, v2

    .line 145
    .end local v2    # "vzwName":[Ljava/lang/String;
    .local v0, "defualtName":[Ljava/lang/String;
    :goto_0
    return-object v1

    .line 140
    .end local v0    # "defualtName":[Ljava/lang/String;
    :cond_1
    const-string v3, "5"

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 141
    const/4 v3, 0x7

    new-array v1, v3, [Ljava/lang/String;

    const-string/jumbo v3, "none"

    aput-object v3, v1, v5

    const-string/jumbo v3, "poor"

    aput-object v3, v1, v6

    const-string/jumbo v3, "moderate"

    aput-object v3, v1, v7

    const-string v3, "good"

    aput-object v3, v1, v8

    const-string v3, "great"

    aput-object v3, v1, v9

    const/4 v3, 0x5

    const-string v4, "excellent"

    aput-object v4, v1, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "perfect"

    aput-object v4, v1, v3

    .line 142
    .local v1, "sprName":[Ljava/lang/String;
    goto :goto_0

    .line 144
    .end local v1    # "sprName":[Ljava/lang/String;
    :cond_2
    const/4 v3, 0x5

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v3, "none"

    aput-object v3, v0, v5

    const-string/jumbo v3, "poor"

    aput-object v3, v0, v6

    const-string/jumbo v3, "moderate"

    aput-object v3, v0, v7

    const-string v3, "good"

    aput-object v3, v0, v8

    const-string v3, "great"

    aput-object v3, v0, v9

    .restart local v0    # "defualtName":[Ljava/lang/String;
    move-object v1, v0

    .line 145
    goto :goto_0
.end method

.method private is2G(Ljava/lang/String;)Z
    .locals 4
    .param p1, "netType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1255
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1258
    .local v0, "mDataType":[Ljava/lang/String;
    const-string v2, "EDGE"

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "GPRS"

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "GSM"

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1259
    :cond_0
    const/4 v1, 0x1

    .line 1261
    :cond_1
    return v1
.end method

.method private is3GDataType(Ljava/lang/String;)Z
    .locals 4
    .param p1, "netType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1293
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1295
    .local v0, "mDataType":[Ljava/lang/String;
    const-string v2, "UMTS"

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "HSDPA"

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "HSUPA"

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "HSPA"

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "HSPAP"

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "TD-SCDMA"

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1296
    :cond_0
    const/4 v1, 0x1

    .line 1298
    :cond_1
    return v1
.end method

.method private isCMCCNetwork(Ljava/lang/String;)Z
    .locals 1
    .param p1, "netValue"    # Ljava/lang/String;

    .prologue
    .line 1284
    if-eqz p1, :cond_1

    const-string v0, "46000"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "46002"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "46007"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "46008"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1285
    :cond_0
    const/4 v0, 0x1

    .line 1287
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1861
    const-string v0, "SignalStrength"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    return-void
.end method

.method public static makeSignalStrengthFromRilParcel(Landroid/os/Parcel;)Landroid/telephony/SignalStrength;
    .locals 2
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    .line 506
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    .line 507
    .local v0, "ss":Landroid/telephony/SignalStrength;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 508
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 509
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 510
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 511
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 512
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 513
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 514
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 515
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 516
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 517
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 518
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 524
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 525
    return-object v0
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/SignalStrength;
    .locals 1
    .param p0, "m"    # Landroid/os/Bundle;

    .prologue
    .line 112
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    .line 113
    .local v0, "ret":Landroid/telephony/SignalStrength;
    invoke-direct {v0, p0}, Landroid/telephony/SignalStrength;->setFromNotifierBundle(Landroid/os/Bundle;)V

    .line 114
    return-object v0
.end method

.method private setFromNotifierBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 1806
    const-string v0, "GsmSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 1807
    const-string v0, "GsmBitErrorRate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 1808
    const-string v0, "CdmaDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 1809
    const-string v0, "CdmaEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 1810
    const-string v0, "EvdoDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 1811
    const-string v0, "EvdoEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 1812
    const-string v0, "EvdoSnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 1813
    const-string v0, "LteSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 1814
    const-string v0, "LteRsrp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 1815
    const-string v0, "LteRsrq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 1816
    const-string v0, "LteRssnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 1817
    const-string v0, "LteCqi"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 1818
    const-string v0, "TdScdma"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 1819
    const-string v0, "isGsm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 1821
    const-string v0, "GsmSignalBar"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    .line 1824
    const-string/jumbo v0, "mWeakRssi"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->mWeakRssi:Z

    .line 1826
    return-void
.end method


# virtual methods
.method protected copyFrom(Landroid/telephony/SignalStrength;)V
    .locals 1
    .param p1, "s"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 444
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 445
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 446
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 447
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 448
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 449
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 450
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 451
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 452
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 453
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 454
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 455
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteCqi:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 456
    iget v0, p1, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 457
    iget-boolean v0, p1, Landroid/telephony/SignalStrength;->isGsm:Z

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 459
    iget v0, p1, Landroid/telephony/SignalStrength;->mSignalBar:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    .line 462
    iget-boolean v0, p1, Landroid/telephony/SignalStrength;->mWeakRssi:Z

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->mWeakRssi:Z

    .line 464
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 558
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 1706
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/SignalStrength;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1711
    .local v2, "s":Landroid/telephony/SignalStrength;
    if-nez p1, :cond_1

    .line 1734
    .end local v2    # "s":Landroid/telephony/SignalStrength;
    :cond_0
    :goto_0
    return v3

    .line 1707
    :catch_0
    move-exception v1

    .line 1708
    .local v1, "ex":Ljava/lang/ClassCastException;
    goto :goto_0

    .line 1734
    .end local v1    # "ex":Ljava/lang/ClassCastException;
    .restart local v2    # "s":Landroid/telephony/SignalStrength;
    :cond_1
    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRsrq:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteCqi:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    if-ne v4, v5, :cond_0

    iget-boolean v4, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    iget-boolean v5, v2, Landroid/telephony/SignalStrength;->isGsm:Z

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mSignalBar:I

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 1835
    const-string v0, "GsmSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1836
    const-string v0, "GsmBitErrorRate"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1837
    const-string v0, "CdmaDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1838
    const-string v0, "CdmaEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1839
    const-string v0, "EvdoDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1840
    const-string v0, "EvdoEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1841
    const-string v0, "EvdoSnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1842
    const-string v0, "LteSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1843
    const-string v0, "LteRsrp"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1844
    const-string v0, "LteRsrq"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1845
    const-string v0, "LteRssnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1846
    const-string v0, "LteCqi"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1847
    const-string v0, "TdScdma"

    iget v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1848
    const-string v0, "isGsm"

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1850
    const-string v0, "GsmSignalBar"

    iget v1, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1853
    const-string/jumbo v0, "mWeakRssi"

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->mWeakRssi:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1855
    return-void
.end method

.method public getAsuLevel()I
    .locals 8

    .prologue
    const/16 v7, 0x63

    .line 973
    const/4 v0, 0x0

    .line 975
    .local v0, "asuLevel":I
    const-string v5, "4"

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 976
    const-string v5, "gsm.current.phone-type"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 977
    .local v3, "currentPhone":I
    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 978
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmAsuLevel()I

    move-result v0

    :goto_0
    move v1, v0

    .line 1030
    .end local v0    # "asuLevel":I
    .end local v3    # "currentPhone":I
    .local v1, "asuLevel":I
    :goto_1
    return v1

    .line 980
    .end local v1    # "asuLevel":I
    .restart local v0    # "asuLevel":I
    .restart local v3    # "currentPhone":I
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaAsuLevel()I

    move-result v0

    goto :goto_0

    .line 984
    .end local v3    # "currentPhone":I
    :cond_1
    iget-boolean v5, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v5, :cond_6

    .line 986
    iget v5, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-eq v5, v7, :cond_3

    .line 987
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmAsuLevel()I

    move-result v0

    .line 1028
    :cond_2
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAsuLevel="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    move v1, v0

    .line 1030
    .end local v0    # "asuLevel":I
    .restart local v1    # "asuLevel":I
    goto :goto_1

    .line 988
    .end local v1    # "asuLevel":I
    .restart local v0    # "asuLevel":I
    :cond_3
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-eq v5, v7, :cond_4

    .line 989
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteAsuLevel()I

    move-result v0

    goto :goto_2

    .line 990
    :cond_4
    iget v5, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    const/16 v6, -0x78

    if-eq v5, v6, :cond_5

    iget v5, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    const v6, 0x7fffffff

    if-eq v5, v6, :cond_5

    .line 991
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaAsuLevel()I

    move-result v0

    goto :goto_2

    .line 993
    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    .line 1007
    :cond_6
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaAsuLevel()I

    move-result v2

    .line 1008
    .local v2, "cdmaAsuLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoAsuLevel()I

    move-result v4

    .line 1009
    .local v4, "evdoAsuLevel":I
    if-nez v4, :cond_7

    .line 1011
    move v0, v2

    goto :goto_2

    .line 1012
    :cond_7
    if-nez v2, :cond_8

    .line 1014
    move v0, v4

    goto :goto_2

    .line 1017
    :cond_8
    if-ge v2, v4, :cond_9

    move v0, v2

    .line 1020
    :goto_3
    const-string v5, "2"

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "5"

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "4"

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_9
    move v0, v4

    .line 1017
    goto :goto_3

    .line 1022
    :cond_a
    move v0, v4

    goto :goto_2
.end method

.method public getCdmaAsuLevel()I
    .locals 8

    .prologue
    const/16 v7, -0x5a

    const/16 v6, -0x64

    .line 1375
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    .line 1376
    .local v1, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v2

    .line 1380
    .local v2, "cdmaEcio":I
    const/16 v5, -0x4b

    if-lt v1, v5, :cond_0

    const/16 v0, 0x10

    .line 1388
    .local v0, "cdmaAsuLevel":I
    :goto_0
    if-lt v2, v7, :cond_5

    const/16 v3, 0x10

    .line 1395
    .local v3, "ecioAsuLevel":I
    :goto_1
    if-ge v0, v3, :cond_a

    move v4, v0

    .line 1397
    .local v4, "level":I
    :goto_2
    return v4

    .line 1381
    .end local v0    # "cdmaAsuLevel":I
    .end local v3    # "ecioAsuLevel":I
    .end local v4    # "level":I
    :cond_0
    const/16 v5, -0x52

    if-lt v1, v5, :cond_1

    const/16 v0, 0x8

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 1382
    .end local v0    # "cdmaAsuLevel":I
    :cond_1
    if-lt v1, v7, :cond_2

    const/4 v0, 0x4

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 1383
    .end local v0    # "cdmaAsuLevel":I
    :cond_2
    const/16 v5, -0x5f

    if-lt v1, v5, :cond_3

    const/4 v0, 0x2

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 1384
    .end local v0    # "cdmaAsuLevel":I
    :cond_3
    if-lt v1, v6, :cond_4

    const/4 v0, 0x1

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 1385
    .end local v0    # "cdmaAsuLevel":I
    :cond_4
    const/16 v0, 0x63

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 1389
    :cond_5
    if-lt v2, v6, :cond_6

    const/16 v3, 0x8

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    .line 1390
    .end local v3    # "ecioAsuLevel":I
    :cond_6
    const/16 v5, -0x73

    if-lt v2, v5, :cond_7

    const/4 v3, 0x4

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    .line 1391
    .end local v3    # "ecioAsuLevel":I
    :cond_7
    const/16 v5, -0x82

    if-lt v2, v5, :cond_8

    const/4 v3, 0x2

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    .line 1392
    .end local v3    # "ecioAsuLevel":I
    :cond_8
    const/16 v5, -0x96

    if-lt v2, v5, :cond_9

    const/4 v3, 0x1

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    .line 1393
    .end local v3    # "ecioAsuLevel":I
    :cond_9
    const/16 v3, 0x63

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    :cond_a
    move v4, v3

    .line 1395
    goto :goto_2
.end method

.method public getCdmaDbm()I
    .locals 2

    .prologue
    .line 671
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    const/16 v1, -0x78

    if-ne v0, v1, :cond_0

    .line 672
    const/4 v0, 0x0

    .line 675
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    goto :goto_0
.end method

.method public getCdmaEcio()I
    .locals 1

    .prologue
    .line 682
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    return v0
.end method

.method public getCdmaLevel()I
    .locals 9

    .prologue
    const/16 v8, -0x55

    const/16 v7, -0x5f

    .line 1322
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 1323
    .local v0, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    .line 1327
    .local v1, "cdmaEcio":I
    const-string v5, "CTC"

    const-string v6, "CMCC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1328
    if-lt v0, v8, :cond_1

    const/4 v3, 0x4

    .line 1343
    .local v3, "levelDbm":I
    :goto_0
    const/16 v5, -0x5a

    if-lt v1, v5, :cond_a

    const/4 v4, 0x4

    .line 1349
    .local v4, "levelEcio":I
    :goto_1
    if-ge v3, v4, :cond_e

    move v2, v3

    .line 1350
    .local v2, "level":I
    :goto_2
    const-string v5, "CTC"

    const-string v6, "CMCC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1351
    if-le v3, v4, :cond_f

    move v2, v3

    .line 1361
    :cond_0
    :goto_3
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getSignalBar()I

    move-result v5

    and-int/lit16 v5, v5, 0xf00

    shr-int/lit8 v2, v5, 0x8

    .line 1366
    return v2

    .line 1329
    .end local v2    # "level":I
    .end local v3    # "levelDbm":I
    .end local v4    # "levelEcio":I
    :cond_1
    if-lt v0, v7, :cond_2

    const/4 v3, 0x3

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 1330
    .end local v3    # "levelDbm":I
    :cond_2
    const/16 v5, -0x66

    if-lt v0, v5, :cond_3

    const/4 v3, 0x2

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 1331
    .end local v3    # "levelDbm":I
    :cond_3
    const/16 v5, -0x6c

    if-lt v0, v5, :cond_4

    const/4 v3, 0x1

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 1332
    .end local v3    # "levelDbm":I
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 1335
    .end local v3    # "levelDbm":I
    :cond_5
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_6

    const/4 v3, 0x4

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 1336
    .end local v3    # "levelDbm":I
    :cond_6
    if-lt v0, v8, :cond_7

    const/4 v3, 0x3

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 1337
    .end local v3    # "levelDbm":I
    :cond_7
    if-lt v0, v7, :cond_8

    const/4 v3, 0x2

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 1338
    .end local v3    # "levelDbm":I
    :cond_8
    const/16 v5, -0x64

    if-lt v0, v5, :cond_9

    const/4 v3, 0x1

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 1339
    .end local v3    # "levelDbm":I
    :cond_9
    const/4 v3, 0x0

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 1344
    :cond_a
    const/16 v5, -0x6e

    if-lt v1, v5, :cond_b

    const/4 v4, 0x3

    .restart local v4    # "levelEcio":I
    goto :goto_1

    .line 1345
    .end local v4    # "levelEcio":I
    :cond_b
    const/16 v5, -0x82

    if-lt v1, v5, :cond_c

    const/4 v4, 0x2

    .restart local v4    # "levelEcio":I
    goto :goto_1

    .line 1346
    .end local v4    # "levelEcio":I
    :cond_c
    const/16 v5, -0x96

    if-lt v1, v5, :cond_d

    const/4 v4, 0x1

    .restart local v4    # "levelEcio":I
    goto :goto_1

    .line 1347
    .end local v4    # "levelEcio":I
    :cond_d
    const/4 v4, 0x0

    .restart local v4    # "levelEcio":I
    goto :goto_1

    :cond_e
    move v2, v4

    .line 1349
    goto :goto_2

    .restart local v2    # "level":I
    :cond_f
    move v2, v4

    .line 1351
    goto :goto_3
.end method

.method public getDbm()I
    .locals 8

    .prologue
    const/16 v7, 0x63

    const/16 v6, -0x78

    .line 1039
    const v2, 0x7fffffff

    .line 1042
    .local v2, "dBm":I
    const-string v4, "4"

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1043
    const-string v4, "gsm.current.phone-type"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1044
    .local v1, "currentPhone":I
    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    .line 1045
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmDbm()I

    move-result v2

    :goto_0
    move v0, v2

    .line 1113
    .end local v1    # "currentPhone":I
    :cond_0
    :goto_1
    return v0

    .line 1047
    .restart local v1    # "currentPhone":I
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v2

    goto :goto_0

    .line 1052
    .end local v1    # "currentPhone":I
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1054
    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-eq v4, v7, :cond_3

    .line 1055
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmDbm()I

    move-result v2

    .line 1111
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDbm="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    move v0, v2

    .line 1113
    goto :goto_1

    .line 1056
    :cond_3
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-eq v4, v7, :cond_4

    .line 1057
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v2

    goto :goto_2

    .line 1058
    :cond_4
    iget v4, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    if-eq v4, v6, :cond_5

    iget v4, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_5

    .line 1059
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    move-result v2

    goto :goto_2

    .line 1061
    :cond_5
    const/16 v2, -0x71

    goto :goto_2

    .line 1098
    :cond_6
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 1099
    .local v0, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v3

    .line 1101
    .local v3, "evdoDbm":I
    const-string v4, "2"

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "5"

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "4"

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1106
    :cond_7
    if-eq v3, v6, :cond_0

    if-ne v0, v6, :cond_9

    move v0, v3

    goto/16 :goto_1

    .line 1103
    :cond_8
    if-eq v3, v6, :cond_0

    move v0, v3

    goto/16 :goto_1

    .line 1106
    :cond_9
    if-lt v0, v3, :cond_0

    move v0, v3

    goto/16 :goto_1
.end method

.method public getEvdoAsuLevel()I
    .locals 6

    .prologue
    .line 1458
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 1459
    .local v0, "evdoDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 1463
    .local v1, "evdoSnr":I
    const/16 v5, -0x41

    if-lt v0, v5, :cond_0

    const/16 v3, 0x10

    .line 1470
    .local v3, "levelEvdoDbm":I
    :goto_0
    const/4 v5, 0x7

    if-lt v1, v5, :cond_5

    const/16 v4, 0x10

    .line 1477
    .local v4, "levelEvdoSnr":I
    :goto_1
    if-ge v3, v4, :cond_a

    move v2, v3

    .line 1479
    .local v2, "level":I
    :goto_2
    return v2

    .line 1464
    .end local v2    # "level":I
    .end local v3    # "levelEvdoDbm":I
    .end local v4    # "levelEvdoSnr":I
    :cond_0
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_1

    const/16 v3, 0x8

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1465
    .end local v3    # "levelEvdoDbm":I
    :cond_1
    const/16 v5, -0x55

    if-lt v0, v5, :cond_2

    const/4 v3, 0x4

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1466
    .end local v3    # "levelEvdoDbm":I
    :cond_2
    const/16 v5, -0x5f

    if-lt v0, v5, :cond_3

    const/4 v3, 0x2

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1467
    .end local v3    # "levelEvdoDbm":I
    :cond_3
    const/16 v5, -0x69

    if-lt v0, v5, :cond_4

    const/4 v3, 0x1

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1468
    .end local v3    # "levelEvdoDbm":I
    :cond_4
    const/16 v3, 0x63

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1471
    :cond_5
    const/4 v5, 0x6

    if-lt v1, v5, :cond_6

    const/16 v4, 0x8

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 1472
    .end local v4    # "levelEvdoSnr":I
    :cond_6
    const/4 v5, 0x5

    if-lt v1, v5, :cond_7

    const/4 v4, 0x4

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 1473
    .end local v4    # "levelEvdoSnr":I
    :cond_7
    const/4 v5, 0x3

    if-lt v1, v5, :cond_8

    const/4 v4, 0x2

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 1474
    .end local v4    # "levelEvdoSnr":I
    :cond_8
    const/4 v5, 0x1

    if-lt v1, v5, :cond_9

    const/4 v4, 0x1

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 1475
    .end local v4    # "levelEvdoSnr":I
    :cond_9
    const/16 v4, 0x63

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    :cond_a
    move v2, v4

    .line 1477
    goto :goto_2
.end method

.method public getEvdoDbm()I
    .locals 1

    .prologue
    .line 689
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    return v0
.end method

.method public getEvdoEcio()I
    .locals 1

    .prologue
    .line 696
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    return v0
.end method

.method public getEvdoLevel()I
    .locals 7

    .prologue
    .line 1406
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 1407
    .local v0, "evdoDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 1411
    .local v1, "evdoSnr":I
    const-string v5, "CTC"

    const-string v6, "CMCC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1412
    const/16 v5, -0x55

    if-lt v0, v5, :cond_1

    const/4 v3, 0x4

    .line 1426
    .local v3, "levelEvdoDbm":I
    :goto_0
    const/4 v5, 0x7

    if-lt v1, v5, :cond_a

    const/4 v4, 0x4

    .line 1432
    .local v4, "levelEvdoSnr":I
    :goto_1
    if-ge v3, v4, :cond_e

    move v2, v3

    .line 1433
    .local v2, "level":I
    :goto_2
    const-string v5, "CTC"

    const-string v6, "CMCC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1434
    if-le v3, v4, :cond_f

    move v2, v3

    .line 1439
    :cond_0
    :goto_3
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getSignalBar()I

    move-result v2

    .line 1444
    const v5, 0xf000

    and-int/2addr v5, v2

    shr-int/lit8 v2, v5, 0xc

    .line 1449
    return v2

    .line 1413
    .end local v2    # "level":I
    .end local v3    # "levelEvdoDbm":I
    .end local v4    # "levelEvdoSnr":I
    :cond_1
    const/16 v5, -0x5f

    if-lt v0, v5, :cond_2

    const/4 v3, 0x3

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1414
    .end local v3    # "levelEvdoDbm":I
    :cond_2
    const/16 v5, -0x66

    if-lt v0, v5, :cond_3

    const/4 v3, 0x2

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1415
    .end local v3    # "levelEvdoDbm":I
    :cond_3
    const/16 v5, -0x6c

    if-lt v0, v5, :cond_4

    const/4 v3, 0x1

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1416
    .end local v3    # "levelEvdoDbm":I
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1419
    .end local v3    # "levelEvdoDbm":I
    :cond_5
    const/16 v5, -0x41

    if-lt v0, v5, :cond_6

    const/4 v3, 0x4

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1420
    .end local v3    # "levelEvdoDbm":I
    :cond_6
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_7

    const/4 v3, 0x3

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1421
    .end local v3    # "levelEvdoDbm":I
    :cond_7
    const/16 v5, -0x5a

    if-lt v0, v5, :cond_8

    const/4 v3, 0x2

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1422
    .end local v3    # "levelEvdoDbm":I
    :cond_8
    const/16 v5, -0x69

    if-lt v0, v5, :cond_9

    const/4 v3, 0x1

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1423
    .end local v3    # "levelEvdoDbm":I
    :cond_9
    const/4 v3, 0x0

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1427
    :cond_a
    const/4 v5, 0x5

    if-lt v1, v5, :cond_b

    const/4 v4, 0x3

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 1428
    .end local v4    # "levelEvdoSnr":I
    :cond_b
    const/4 v5, 0x3

    if-lt v1, v5, :cond_c

    const/4 v4, 0x2

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 1429
    .end local v4    # "levelEvdoSnr":I
    :cond_c
    const/4 v5, 0x1

    if-lt v1, v5, :cond_d

    const/4 v4, 0x1

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 1430
    .end local v4    # "levelEvdoSnr":I
    :cond_d
    const/4 v4, 0x0

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    :cond_e
    move v2, v4

    .line 1432
    goto :goto_2

    .restart local v2    # "level":I
    :cond_f
    move v2, v4

    .line 1434
    goto :goto_3
.end method

.method public getEvdoSnr()I
    .locals 1

    .prologue
    .line 703
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    return v0
.end method

.method public getGsmAsuLevel()I
    .locals 1

    .prologue
    .line 1311
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 1313
    .local v0, "level":I
    return v0
.end method

.method public getGsmBitErrorRate()I
    .locals 1

    .prologue
    .line 662
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    return v0
.end method

.method public getGsmDbm()I
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 1124
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v2

    .line 1125
    .local v2, "gsmSignalStrength":I
    const/16 v4, 0x63

    if-ne v2, v4, :cond_0

    move v0, v3

    .line 1126
    .local v0, "asu":I
    :goto_0
    if-eq v0, v3, :cond_1

    .line 1127
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v1, v3, -0x71

    .line 1132
    .local v1, "dBm":I
    :goto_1
    return v1

    .end local v0    # "asu":I
    .end local v1    # "dBm":I
    :cond_0
    move v0, v2

    .line 1125
    goto :goto_0

    .line 1129
    .restart local v0    # "asu":I
    :cond_1
    const/4 v1, -0x1

    .restart local v1    # "dBm":I
    goto :goto_1
.end method

.method public getGsmLevel()I
    .locals 8

    .prologue
    const/16 v7, -0x5a

    const/16 v6, 0x63

    .line 1147
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 1148
    .local v0, "asu":I
    const/4 v4, 0x2

    if-le v0, v4, :cond_0

    if-ne v0, v6, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 1158
    .local v2, "level":I
    :goto_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getSignalBar()I

    move-result v4

    and-int/lit16 v2, v4, 0xff

    .line 1163
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmDbm()I

    move-result v1

    .line 1164
    .local v1, "dbm":I
    const-string v4, "gsm.voice.network.type"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1165
    .local v3, "mAct":Ljava/lang/String;
    invoke-direct {p0, v3}, Landroid/telephony/SignalStrength;->is2G(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1167
    if-ne v0, v6, :cond_5

    .line 1168
    const/4 v2, 0x0

    .line 1198
    :goto_1
    return v2

    .line 1149
    .end local v1    # "dbm":I
    .end local v2    # "level":I
    .end local v3    # "mAct":Ljava/lang/String;
    :cond_1
    const/16 v4, 0xc

    if-lt v0, v4, :cond_2

    const/4 v2, 0x4

    .restart local v2    # "level":I
    goto :goto_0

    .line 1150
    .end local v2    # "level":I
    :cond_2
    const/16 v4, 0x8

    if-lt v0, v4, :cond_3

    const/4 v2, 0x3

    .restart local v2    # "level":I
    goto :goto_0

    .line 1151
    .end local v2    # "level":I
    :cond_3
    const/4 v4, 0x5

    if-lt v0, v4, :cond_4

    const/4 v2, 0x2

    .restart local v2    # "level":I
    goto :goto_0

    .line 1152
    .end local v2    # "level":I
    :cond_4
    const/4 v2, 0x1

    .restart local v2    # "level":I
    goto :goto_0

    .line 1169
    .restart local v1    # "dbm":I
    .restart local v3    # "mAct":Ljava/lang/String;
    :cond_5
    const/16 v4, -0x55

    if-lt v1, v4, :cond_6

    .line 1170
    const/4 v2, 0x4

    goto :goto_1

    .line 1171
    :cond_6
    if-lt v1, v7, :cond_7

    .line 1172
    const/4 v2, 0x3

    goto :goto_1

    .line 1173
    :cond_7
    const/16 v4, -0x5f

    if-lt v1, v4, :cond_8

    .line 1174
    const/4 v2, 0x2

    goto :goto_1

    .line 1175
    :cond_8
    const/16 v4, -0x66

    if-lt v1, v4, :cond_9

    .line 1176
    const/4 v2, 0x1

    goto :goto_1

    .line 1178
    :cond_9
    const/4 v2, 0x0

    goto :goto_1

    .line 1183
    :cond_a
    if-ne v0, v6, :cond_b

    .line 1184
    const/4 v2, 0x0

    goto :goto_1

    .line 1185
    :cond_b
    if-lt v1, v7, :cond_c

    .line 1186
    const/4 v2, 0x4

    goto :goto_1

    .line 1187
    :cond_c
    const/16 v4, -0x62

    if-lt v1, v4, :cond_d

    .line 1188
    const/4 v2, 0x3

    goto :goto_1

    .line 1189
    :cond_d
    const/16 v4, -0x68

    if-lt v1, v4, :cond_e

    .line 1190
    const/4 v2, 0x2

    goto :goto_1

    .line 1191
    :cond_e
    const/16 v4, -0x6e

    if-lt v1, v4, :cond_f

    .line 1192
    const/4 v2, 0x1

    goto :goto_1

    .line 1194
    :cond_f
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getGsmSignalBar()I
    .locals 1

    .prologue
    .line 963
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getSignalBar()I

    move-result v0

    return v0
.end method

.method public getGsmSignalStrength()I
    .locals 2

    .prologue
    const/16 v0, 0x63

    .line 649
    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-eq v1, v0, :cond_1

    .line 650
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 654
    :cond_0
    :goto_0
    return v0

    .line 651
    :cond_1
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-eq v1, v0, :cond_0

    .line 652
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    goto :goto_0
.end method

.method public getLevel()I
    .locals 5

    .prologue
    .line 824
    const/4 v1, 0x0

    .line 827
    .local v1, "level":I
    const-string v3, "4"

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 828
    const-string v3, "gsm.current.phone-type"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 829
    .local v0, "currentPhone":I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 830
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v1

    .line 834
    :goto_0
    sget v3, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    if-lt v1, v3, :cond_0

    .line 835
    sget v3, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    add-int/lit8 v1, v3, -0x1

    .line 837
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLevel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    move v2, v1

    .line 849
    .end local v0    # "currentPhone":I
    .end local v1    # "level":I
    .local v2, "level":I
    :goto_1
    return v2

    .line 832
    .end local v2    # "level":I
    .restart local v0    # "currentPhone":I
    .restart local v1    # "level":I
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v1

    goto :goto_0

    .line 842
    .end local v0    # "currentPhone":I
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v3

    const v4, 0xf000

    and-int/2addr v3, v4

    shr-int/lit8 v1, v3, 0xc

    .line 843
    const/4 v3, 0x4

    if-le v1, v3, :cond_4

    .line 844
    const/4 v1, 0x4

    .line 848
    :cond_3
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SGLTE RSSI getLevel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    move v2, v1

    .line 849
    .end local v1    # "level":I
    .restart local v2    # "level":I
    goto :goto_1

    .line 845
    .end local v2    # "level":I
    .restart local v1    # "level":I
    :cond_4
    if-gez v1, :cond_3

    .line 846
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public getLteAsuLevel()I
    .locals 3

    .prologue
    .line 1599
    const/16 v0, 0x63

    .line 1600
    .local v0, "lteAsuLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    .line 1614
    .local v1, "lteDbm":I
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    const/16 v0, 0xff

    .line 1617
    :goto_0
    return v0

    .line 1615
    :cond_0
    add-int/lit16 v0, v1, 0x8c

    goto :goto_0
.end method

.method public getLteCqi()I
    .locals 1

    .prologue
    .line 728
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    return v0
.end method

.method public getLteDbm()I
    .locals 1

    .prologue
    .line 1488
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteLevel()I
    .locals 8

    .prologue
    const/16 v7, -0x73

    const/16 v6, -0x2c

    const/16 v5, -0x8c

    .line 1503
    const/4 v1, 0x0

    .local v1, "rssiIconLevel":I
    const/4 v0, -0x1

    .local v0, "rsrpIconLevel":I
    const/4 v2, -0x1

    .line 1505
    .local v2, "snrIconLevel":I
    const-string v3, "CTC"

    const-string v4, "CMCC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1506
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-le v3, v6, :cond_3

    const/4 v0, -0x1

    .line 1528
    :cond_0
    :goto_0
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0x12c

    if-le v3, v4, :cond_e

    const/4 v2, -0x1

    .line 1541
    :cond_1
    :goto_1
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-le v3, v6, :cond_13

    const/4 v0, -0x1

    .line 1549
    :cond_2
    :goto_2
    return v0

    .line 1507
    :cond_3
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x6b

    if-lt v3, v4, :cond_4

    const/4 v0, 0x4

    goto :goto_0

    .line 1508
    :cond_4
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x72

    if-lt v3, v4, :cond_5

    const/4 v0, 0x3

    goto :goto_0

    .line 1509
    :cond_5
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x76

    if-lt v3, v4, :cond_6

    const/4 v0, 0x2

    goto :goto_0

    .line 1510
    :cond_6
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x7b

    if-lt v3, v4, :cond_7

    const/4 v0, 0x1

    goto :goto_0

    .line 1511
    :cond_7
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v3, v5, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1514
    :cond_8
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-le v3, v6, :cond_9

    const/4 v0, -0x1

    goto :goto_0

    .line 1515
    :cond_9
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x55

    if-lt v3, v4, :cond_a

    const/4 v0, 0x4

    goto :goto_0

    .line 1516
    :cond_a
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x5f

    if-lt v3, v4, :cond_b

    const/4 v0, 0x3

    goto :goto_0

    .line 1517
    :cond_b
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x69

    if-lt v3, v4, :cond_c

    const/4 v0, 0x2

    goto :goto_0

    .line 1518
    :cond_c
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v3, v7, :cond_d

    const/4 v0, 0x1

    goto :goto_0

    .line 1519
    :cond_d
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v3, v5, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1529
    :cond_e
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0x82

    if-lt v3, v4, :cond_f

    const/4 v2, 0x4

    goto :goto_1

    .line 1530
    :cond_f
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0x2d

    if-lt v3, v4, :cond_10

    const/4 v2, 0x3

    goto :goto_1

    .line 1531
    :cond_10
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0xa

    if-lt v3, v4, :cond_11

    const/4 v2, 0x2

    goto :goto_1

    .line 1532
    :cond_11
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, -0x1e

    if-lt v3, v4, :cond_12

    const/4 v2, 0x1

    goto :goto_1

    .line 1533
    :cond_12
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, -0xc8

    if-lt v3, v4, :cond_1

    .line 1534
    const/4 v2, 0x0

    goto :goto_1

    .line 1542
    :cond_13
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x4f

    if-lt v3, v4, :cond_14

    const/4 v0, 0x4

    goto :goto_2

    .line 1543
    :cond_14
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x5b

    if-lt v3, v4, :cond_15

    const/4 v0, 0x3

    goto/16 :goto_2

    .line 1544
    :cond_15
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x67

    if-lt v3, v4, :cond_16

    const/4 v0, 0x2

    goto/16 :goto_2

    .line 1545
    :cond_16
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v3, v7, :cond_17

    const/4 v0, 0x1

    goto/16 :goto_2

    .line 1546
    :cond_17
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v3, v5, :cond_2

    const/4 v0, 0x0

    goto/16 :goto_2
.end method

.method public getLteRsrp()I
    .locals 1

    .prologue
    .line 713
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteRsrq()I
    .locals 1

    .prologue
    .line 718
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    return v0
.end method

.method public getLteRssnr()I
    .locals 1

    .prologue
    .line 723
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    return v0
.end method

.method public getLteSignalStrength()I
    .locals 1

    .prologue
    .line 708
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    return v0
.end method

.method public getSglteGsmLevel()I
    .locals 3

    .prologue
    .line 1243
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    and-int/lit16 v1, v1, 0xf00

    shr-int/lit8 v0, v1, 0x8

    .line 1244
    .local v0, "level":I
    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    .line 1245
    const/4 v0, 0x4

    .line 1249
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SGLTE RSSI getSglteGsmLevel level= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1250
    return v0

    .line 1246
    :cond_1
    if-gez v0, :cond_0

    .line 1247
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSglteRssiDisplayNum()I
    .locals 3

    .prologue
    .line 1270
    const/4 v1, 0x0

    .line 1271
    .local v1, "mRet":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v2

    and-int/lit16 v0, v2, 0xff

    .line 1272
    .local v0, "isSglteMode":I
    if-ltz v0, :cond_0

    const/4 v2, 0x2

    if-gt v0, v2, :cond_0

    .line 1273
    move v1, v0

    .line 1277
    :cond_0
    return v1
.end method

.method public getSignalBar()I
    .locals 1

    .prologue
    .line 954
    iget v0, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTdScdmaAsuLevel()I
    .locals 3

    .prologue
    .line 1666
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    move-result v1

    .line 1670
    .local v1, "tdScdmaDbm":I
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    .line 1674
    .local v0, "tdScdmaAsuLevel":I
    :goto_0
    return v0

    .line 1672
    .end local v0    # "tdScdmaAsuLevel":I
    :cond_0
    add-int/lit8 v0, v1, 0x78

    .restart local v0    # "tdScdmaAsuLevel":I
    goto :goto_0
.end method

.method public getTdScdmaDbm()I
    .locals 1

    .prologue
    .line 1633
    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    return v0
.end method

.method public getTdScdmaLevel()I
    .locals 3

    .prologue
    .line 1645
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    move-result v1

    .line 1648
    .local v1, "tdScdmaDbm":I
    const/16 v2, -0x19

    if-gt v1, v2, :cond_0

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_1

    .line 1649
    :cond_0
    const/4 v0, 0x0

    .line 1657
    .local v0, "level":I
    :goto_0
    return v0

    .line 1650
    .end local v0    # "level":I
    :cond_1
    const/16 v2, -0x58

    if-lt v1, v2, :cond_2

    const/4 v0, 0x4

    .restart local v0    # "level":I
    goto :goto_0

    .line 1651
    .end local v0    # "level":I
    :cond_2
    const/16 v2, -0x5c

    if-lt v1, v2, :cond_3

    const/4 v0, 0x3

    .restart local v0    # "level":I
    goto :goto_0

    .line 1652
    .end local v0    # "level":I
    :cond_3
    const/16 v2, -0x61

    if-lt v1, v2, :cond_4

    const/4 v0, 0x2

    .restart local v0    # "level":I
    goto :goto_0

    .line 1653
    .end local v0    # "level":I
    :cond_4
    const/16 v2, -0x66

    if-lt v1, v2, :cond_5

    const/4 v0, 0x1

    .restart local v0    # "level":I
    goto :goto_0

    .line 1654
    .end local v0    # "level":I
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "level":I
    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1682
    const/16 v0, 0x1f

    .line 1683
    .local v0, "primeNum":I
    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    mul-int/2addr v1, v0

    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    mul-int/2addr v4, v0

    add-int/2addr v1, v4

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    mul-int/2addr v4, v0

    add-int/2addr v1, v4

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    mul-int/2addr v4, v0

    add-int/2addr v1, v4

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    mul-int/2addr v4, v0

    add-int/2addr v1, v4

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    mul-int/2addr v4, v0

    add-int/2addr v1, v4

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    mul-int/2addr v4, v0

    add-int/2addr v1, v4

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    mul-int/2addr v4, v0

    add-int/2addr v1, v4

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    mul-int/2addr v4, v0

    add-int/2addr v1, v4

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    mul-int/2addr v4, v0

    add-int/2addr v1, v4

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    mul-int/2addr v4, v0

    add-int/2addr v1, v4

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    mul-int/2addr v4, v0

    add-int/2addr v1, v4

    iget v4, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    add-int/2addr v4, v1

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->mWeakRssi:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    add-int/2addr v1, v4

    iget v4, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    mul-int/2addr v4, v0

    add-int/2addr v1, v4

    iget-boolean v4, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v4, :cond_1

    :goto_1
    add-int/2addr v1, v2

    return v1

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public initialize(IIIIIIIIIIIIIZI)V
    .locals 15
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "tdScdmaRscp"    # I
    .param p14, "gsm"    # Z
    .param p15, "signalBar"    # I

    .prologue
    .line 432
    move-object v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p14

    invoke-virtual/range {v1 .. v14}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 435
    move/from16 v0, p13

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 436
    move/from16 v0, p15

    iput v0, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    .line 437
    return-void
.end method

.method public initialize(IIIIIIIIIIIIZ)V
    .locals 1
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsm"    # Z

    .prologue
    .line 372
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 373
    iput p2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 374
    iput p3, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 375
    iput p4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 376
    iput p5, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 377
    iput p6, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 378
    iput p7, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 379
    iput p8, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 380
    iput p9, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 381
    iput p10, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 382
    iput p11, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 383
    iput p12, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 384
    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 385
    iput-boolean p13, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 387
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    .line 390
    return-void
.end method

.method public initialize(IIIIIIIIIIIIZI)V
    .locals 0
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsm"    # Z
    .param p14, "signalBar"    # I

    .prologue
    .line 418
    invoke-virtual/range {p0 .. p13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 421
    iput p14, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    .line 422
    return-void
.end method

.method public initialize(IIIIIIIZ)V
    .locals 14
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "gsm"    # Z

    .prologue
    .line 343
    const/16 v8, 0x63

    const v9, 0x7fffffff

    const v10, 0x7fffffff

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v13, p8

    invoke-virtual/range {v0 .. v13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 346
    return-void
.end method

.method public isDataSignalMarginal()Z
    .locals 1

    .prologue
    .line 942
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->mWeakRssi:Z

    return v0
.end method

.method public isGsm()Z
    .locals 1

    .prologue
    .line 1624
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    return v0
.end method

.method public setGsm(Z)V
    .locals 0
    .param p1, "gsmFlag"    # Z

    .prologue
    .line 641
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 642
    return-void
.end method

.method public setSignalBars()V
    .locals 17

    .prologue
    .line 737
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v1, :cond_0

    .line 738
    move-object/from16 v0, p0

    iget v1, v0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    const v2, 0xff00

    and-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x8

    move-object/from16 v0, p0

    iput v1, v0, Landroid/telephony/SignalStrength;->mSignalBar:I

    .line 739
    move-object/from16 v0, p0

    iget v1, v0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    and-int/lit16 v1, v1, 0xff

    move-object/from16 v0, p0

    iput v1, v0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 741
    move-object/from16 v0, p0

    iget v2, v0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    move-object/from16 v0, p0

    iget v9, v0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    move-object/from16 v0, p0

    iget v11, v0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/telephony/SignalStrength;->mLteCqi:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/telephony/SignalStrength;->isGsm:Z

    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/SignalStrength;->mSignalBar:I

    move/from16 v16, v0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v16}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIIZI)V

    .line 763
    :goto_0
    return-void

    .line 754
    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    const v2, 0xff00

    and-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Landroid/telephony/SignalStrength;->mSignalBar:I

    .line 755
    move-object/from16 v0, p0

    iget v1, v0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    and-int/lit16 v1, v1, 0xff

    move-object/from16 v0, p0

    iput v1, v0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 756
    move-object/from16 v0, p0

    iget v1, v0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    and-int/lit16 v1, v1, 0xff

    move-object/from16 v0, p0

    iput v1, v0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 759
    const/16 v2, 0x63

    const/4 v3, -0x1

    move-object/from16 v0, p0

    iget v4, v0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    move-object/from16 v0, p0

    iget v8, v0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    move-object/from16 v0, p0

    iget v9, v0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    move-object/from16 v0, p0

    iget v11, v0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/telephony/SignalStrength;->mLteCqi:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Landroid/telephony/SignalStrength;->mSignalBar:I

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v15}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZI)V

    goto :goto_0
.end method

.method public setSignalBarsLTE()V
    .locals 15

    .prologue
    .line 771
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_0

    .line 772
    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    iget v8, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iget v9, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget v10, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iget v11, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/4 v12, 0x0

    const/4 v13, 0x1

    iget v14, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v14}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZI)V

    .line 780
    :goto_0
    return-void

    .line 776
    :cond_0
    const/16 v1, 0x63

    const/4 v2, -0x1

    iget v3, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iget v5, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iget v6, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iget v7, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, 0x0

    iget v14, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v14}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZI)V

    goto :goto_0
.end method

.method public setSignalBarsLTE(II)V
    .locals 19
    .param p1, "rilRadioTechnology"    # I
    .param p2, "ssRilRadioTechnology"    # I

    .prologue
    .line 789
    move/from16 v0, p1

    move/from16 v1, p2

    if-eq v0, v1, :cond_1

    .line 790
    move-object/from16 v0, p0

    iget v3, v0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/4 v14, -0x1

    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/telephony/SignalStrength;->isGsm:Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/SignalStrength;->mLteCqi:I

    move/from16 v16, v0

    :goto_0
    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v16}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZI)V

    .line 816
    :goto_1
    return-void

    .line 790
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Landroid/telephony/SignalStrength;->mLteCqi:I

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v16, v2, 0xf

    goto :goto_0

    .line 795
    :cond_1
    const/16 v17, 0x0

    .line 796
    .local v17, "rssi_weak_strong":I
    const/16 v18, 0x0

    .line 798
    .local v18, "signal_bar":I
    const-string/jumbo v2, "true"

    const-string/jumbo v3, "persist.sys.ims.reg"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "true"

    const-string/jumbo v3, "persist.sys.ims.volte_enabled"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "0"

    const-string/jumbo v3, "persist.sys.ims.volte_supported"

    const-string v4, "-1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 801
    move-object/from16 v0, p0

    iget v2, v0, Landroid/telephony/SignalStrength;->mLteCqi:I

    and-int/lit8 v18, v2, 0xf

    .line 805
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v3, -0x69

    if-ge v2, v3, :cond_3

    .line 806
    const/16 v17, 0x2000

    .line 810
    :goto_3
    or-int v2, v18, v17

    move-object/from16 v0, p0

    iput v2, v0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 812
    move-object/from16 v0, p0

    iget v3, v0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    move-object/from16 v0, p0

    iget v10, v0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    move-object/from16 v0, p0

    iget v11, v0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/SignalStrength;->mLteCqi:I

    move/from16 v16, v0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v16}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZI)V

    goto :goto_1

    .line 803
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Landroid/telephony/SignalStrength;->mLteCqi:I

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v18, v2, 0xf

    goto :goto_2

    .line 808
    :cond_3
    const/16 v17, 0x3000

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1779
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignalStrength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_0

    const-string v0, "gsm|lte"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "cdma"

    goto :goto_0
.end method

.method public validateInput()V
    .locals 6

    .prologue
    const/16 v1, 0x63

    const/4 v3, -0x1

    const/16 v2, -0x78

    const v4, 0x7fffffff

    .line 601
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ltz v0, :cond_4

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    :goto_0
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 606
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-lez v0, :cond_5

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    :goto_1
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SGLTE RSSI mCdmaDbm="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 612
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-lez v0, :cond_6

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    neg-int v0, v0

    :goto_2
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 614
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    neg-int v2, v0

    :cond_0
    iput v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 615
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-ltz v0, :cond_7

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    neg-int v0, v0

    :goto_3
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 616
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-lez v0, :cond_1

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    const/16 v2, 0x8

    if-gt v0, v2, :cond_1

    iget v3, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    :cond_1
    iput v3, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 619
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ltz v0, :cond_2

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    :cond_2
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 620
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v1, 0x2c

    if-lt v0, v1, :cond_8

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v1, 0x8c

    if-gt v0, v1, :cond_8

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    neg-int v0, v0

    :goto_4
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 621
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_9

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_9

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    neg-int v0, v0

    :goto_5
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 622
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v1, -0xc8

    if-lt v0, v1, :cond_a

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v1, 0x12c

    if-gt v0, v1, :cond_a

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    :goto_6
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 625
    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_3

    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    const/16 v1, 0x78

    if-gt v0, v1, :cond_3

    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    neg-int v4, v0

    :cond_3
    iput v4, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 630
    return-void

    :cond_4
    move v0, v1

    .line 601
    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 606
    goto/16 :goto_1

    .line 612
    :cond_6
    const/16 v0, -0xa0

    goto :goto_2

    :cond_7
    move v0, v3

    .line 615
    goto :goto_3

    :cond_8
    move v0, v4

    .line 620
    goto :goto_4

    :cond_9
    move v0, v4

    .line 621
    goto :goto_5

    :cond_a
    move v0, v4

    .line 622
    goto :goto_6
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 532
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 533
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 534
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 535
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 536
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 537
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 538
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 539
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 540
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 541
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 542
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 543
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 544
    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 545
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 547
    iget v0, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 550
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->mWeakRssi:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 552
    return-void

    :cond_0
    move v0, v2

    .line 545
    goto :goto_0

    :cond_1
    move v1, v2

    .line 550
    goto :goto_1
.end method
