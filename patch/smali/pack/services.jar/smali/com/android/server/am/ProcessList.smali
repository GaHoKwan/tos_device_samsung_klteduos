.class final Lcom/android/server/am/ProcessList;
.super Ljava/lang/Object;
.source "ProcessList.java"


# static fields
.field static final BACKUP_APP_ADJ:I = 0x3

.field static final CACHED_APP_MAX_ADJ:I = 0xf

.field static final CACHED_APP_MIN_ADJ:I = 0x9

.field static DEBUG:Z = false

.field static DHA_INCREASE_THRESHOLD:J = 0x0L

.field static final DHA_MAX_MARGIN:J = 0x800000L

.field static final DHA_MIN_MARGIN:J = 0x400000L

.field static final FOREGROUND_APP_ADJ:I = 0x0

.field static final HEAVY_WEIGHT_APP_ADJ:I = 0x4

.field static final HOME_APP_ADJ:I = 0x6

.field static INIT_CACHED_APPS:I = 0x0

.field static INIT_EMPTY_APPS:I = 0x0

.field static MAX_CACHED_APPS:I = 0x0

.field static MAX_EMPTY_APPS:I = 0x0

.field static final MAX_EMPTY_TIME:J = 0x1b7740L

.field static MAX_KNOX_CACHED_APPS:I = 0x0

.field static MAX_KNOX_EMPTY_APPS:I = 0x0

.field static MID_EMPTY_APPS_FOR_DHA:I = 0x0

.field static MIN_CACHED_APPS:I = 0x0

.field static final MIN_CRASH_INTERVAL:I = 0xea60

.field static MIN_EMPTY_APPS_FOR_DHA:I = 0x0

.field static final NATIVE_ADJ:I = -0x11

.field static final PAGE_SIZE:I = 0x1000

.field static final PERCEPTIBLE_APP_ADJ:I = 0x2

.field static final PERSISTENT_PROC_ADJ:I = -0xc

.field static final PREVIOUS_APP_ADJ:I = 0x7

.field public static final PROC_MEM_CACHED:I = 0x4

.field public static final PROC_MEM_IMPORTANT:I = 0x2

.field public static final PROC_MEM_PERSISTENT:I = 0x0

.field public static final PROC_MEM_SERVICE:I = 0x3

.field public static final PROC_MEM_TOP:I = 0x1

.field public static final PSS_ALL_INTERVAL:I = 0x927c0

.field private static final PSS_FIRST_BACKGROUND_INTERVAL:I = 0x4e20

.field private static final PSS_FIRST_CACHED_INTERVAL:I = 0x7530

.field private static final PSS_FIRST_TOP_INTERVAL:I = 0x2710

.field public static final PSS_MAX_INTERVAL:I = 0x1b7740

.field public static final PSS_MIN_TIME_FROM_STATE_CHANGE:I = 0x3a98

.field private static final PSS_SAME_CACHED_INTERVAL:I = 0x1b7740

.field private static final PSS_SAME_IMPORTANT_INTERVAL:I = 0xdbba0

.field private static final PSS_SAME_SERVICE_INTERVAL:I = 0x124f80

.field private static final PSS_SHORT_INTERVAL:I = 0x1d4c0

.field static final SERVICE_ADJ:I = 0x5

.field static final SERVICE_B_ADJ:I = 0x8

.field static SMART_DHA_BG_APPS_MAX:I = 0x0

.field static final SMART_DHA_BG_APPS_MAX_HIGH:I = 0x28

.field static final SMART_DHA_BG_APPS_MAX_LOW:I = 0xf

.field static SMART_DHA_BG_APPS_MIN:I = 0x0

.field static final SMART_DHA_BG_APPS_MIN_HIGH:I = 0x1

.field static final SMART_DHA_MARGIN_MIN_HIGH:J = 0x2800000L

.field static final SMART_DHA_MARGIN_MIN_LOW:J = 0x1400000L

.field static final SYSTEM_ADJ:I = -0x10

.field static final TOTAL_DEVICE_MEMORY:J

.field static TRIM_CACHED_APPS:I = 0x0

.field static TRIM_CRITICAL_THRESHOLD:I = 0x0

.field static TRIM_EMPTY_APPS:I = 0x0

.field static TRIM_LOW_THRESHOLD:I = 0x0

.field static final UNKNOWN_ADJ:I = 0x10

.field static final VISIBLE_APP_ADJ:I = 0x1

.field private static mInfo:Lcom/android/internal/util/MemInfoReader;

.field static mMaxCached:I

.field static mWhitelistEnable:I

.field private static final sFirstAwakePssTimes:[J

.field private static final sProcStateToProcMem:[I

.field private static final sSameAwakePssTimes:[J


# instance fields
.field private mCachedRestoreLevel:J

.field private mHaveDisplaySize:Z

.field private final mOomAdj:[I

.field private final mOomMinFree:[J

.field private final mOomMinFreeHigh:[J

.field private final mOomMinFreeLow:[J

.field private mSmartDHADefaultMargin:J

.field private mSmartDHAKswapdWatermark:J

.field private mSz2ndDHAThreshold:J

.field private mSzDHADefendThreshold:J

.field private mSzDHAStep:I

.field private mSzDHAThreshold:J

.field private mSzDHAThresholdRate:F

.field private mSzMidDHA:I

.field private mSzMidDHA2nd:I

.field private mSzMidDHA2ndStep:I

.field private mSzMidDHAStep:I

.field private mSzUpdateDHACount:I

.field private mSzUpdateDHAMaxCount:I

.field private final mTotalMemMb:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0xe

    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/ProcessList;->DEBUG:Z

    .line 122
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    .line 124
    invoke-static {}, Lcom/android/server/am/ProcessList;->totalDeviceMemory()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    .line 146
    const-string v0, "ro.config.dha_cached_max"

    const-string v1, "6"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->INIT_CACHED_APPS:I

    .line 150
    const-string v0, "ro.config.dha_cached_min"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->MIN_CACHED_APPS:I

    .line 152
    const-string v0, "ro.config.dha_cached_max"

    const-string v1, "6"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->MAX_CACHED_APPS:I

    .line 154
    const-string v0, "ro.config.dha_cached_max_knox"

    const-string v1, "6"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->MAX_KNOX_CACHED_APPS:I

    .line 160
    const-string v0, "ro.config.dha_empty_init"

    const-string v1, "30"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->INIT_EMPTY_APPS:I

    .line 162
    const-string v0, "ro.config.dha_empty_min"

    const-string v1, "6"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->MIN_EMPTY_APPS_FOR_DHA:I

    .line 164
    const-string v0, "ro.config.dha_empty_mid"

    const-string v1, "12"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->MID_EMPTY_APPS_FOR_DHA:I

    .line 166
    const-string v0, "ro.config.dha_empty_max"

    const-string v1, "30"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    .line 168
    const-string v0, "ro.config.dha_empty_max_knox"

    const-string v1, "60"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->MAX_KNOX_EMPTY_APPS:I

    .line 172
    sget v0, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    div-int/lit8 v0, v0, 0x3

    sput v0, Lcom/android/server/am/ProcessList;->TRIM_EMPTY_APPS:I

    .line 176
    sget v0, Lcom/android/server/am/ProcessList;->MAX_CACHED_APPS:I

    div-int/lit8 v0, v0, 0x3

    sput v0, Lcom/android/server/am/ProcessList;->TRIM_CACHED_APPS:I

    .line 179
    const/4 v0, 0x3

    sput v0, Lcom/android/server/am/ProcessList;->TRIM_CRITICAL_THRESHOLD:I

    .line 182
    const/4 v0, 0x5

    sput v0, Lcom/android/server/am/ProcessList;->TRIM_LOW_THRESHOLD:I

    .line 230
    sget v0, Lcom/android/server/am/ProcessList;->INIT_CACHED_APPS:I

    sput v0, Lcom/android/server/am/ProcessList;->mMaxCached:I

    .line 232
    const-string v0, "ro.config.dha_whitelist_enable"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->mWhitelistEnable:I

    .line 238
    const-wide/32 v0, 0x200000

    sput-wide v0, Lcom/android/server/am/ProcessList;->DHA_INCREASE_THRESHOLD:J

    .line 249
    const/16 v0, 0x28

    sput v0, Lcom/android/server/am/ProcessList;->SMART_DHA_BG_APPS_MAX:I

    .line 252
    const/4 v0, 0x1

    sput v0, Lcom/android/server/am/ProcessList;->SMART_DHA_BG_APPS_MIN:I

    .line 636
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    .line 653
    new-array v0, v2, [J

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    .line 670
    new-array v0, v2, [J

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    return-void

    .line 636
    :array_0
    .array-data 4
        0x0
        0x0
        0x1
        0x2
        0x2
        0x2
        0x2
        0x3
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    .line 653
    :array_1
    .array-data 8
        0x1d4c0
        0x1d4c0
        0x2710
        0x4e20
        0x4e20
        0x4e20
        0x4e20
        0x4e20
        0x7530
        0x7530
        0x7530
        0x7530
        0x7530
        0x7530
    .end array-data

    .line 670
    :array_2
    .array-data 8
        0xdbba0
        0xdbba0
        0x1d4c0
        0xdbba0
        0xdbba0
        0xdbba0
        0xdbba0
        0x124f80
        0x124f80
        0x1b7740
        0x1b7740
        0x1b7740
        0x1b7740
        0x1b7740
    .end array-data
.end method

.method constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x6

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    new-array v3, v5, [I

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    .line 193
    new-array v3, v5, [J

    fill-array-data v3, :array_1

    iput-object v3, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[J

    .line 199
    new-array v3, v5, [J

    fill-array-data v3, :array_2

    iput-object v3, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[J

    .line 204
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v3, v3

    new-array v3, v3, [J

    iput-object v3, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    .line 208
    const-wide/32 v3, 0x2000000

    iput-wide v3, p0, Lcom/android/server/am/ProcessList;->mSzDHAThreshold:J

    .line 210
    const-wide/32 v3, 0x1000000

    iput-wide v3, p0, Lcom/android/server/am/ProcessList;->mSz2ndDHAThreshold:J

    .line 212
    const-wide/32 v3, 0x800000

    iput-wide v3, p0, Lcom/android/server/am/ProcessList;->mSzDHADefendThreshold:J

    .line 214
    iput v7, p0, Lcom/android/server/am/ProcessList;->mSzUpdateDHACount:I

    .line 216
    const/4 v3, 0x7

    iput v3, p0, Lcom/android/server/am/ProcessList;->mSzUpdateDHAMaxCount:I

    .line 218
    iput v5, p0, Lcom/android/server/am/ProcessList;->mSzMidDHAStep:I

    .line 220
    iput v5, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA2ndStep:I

    .line 222
    sget v3, Lcom/android/server/am/ProcessList;->INIT_EMPTY_APPS:I

    iget v4, p0, Lcom/android/server/am/ProcessList;->mSzMidDHAStep:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    .line 224
    iget v3, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    iget v4, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA2ndStep:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA2nd:I

    .line 226
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/server/am/ProcessList;->mSzDHAStep:I

    .line 228
    const/high16 v3, 0x40000000    # 2.0f

    iput v3, p0, Lcom/android/server/am/ProcessList;->mSzDHAThresholdRate:F

    .line 241
    const-wide/32 v3, 0x1400000

    iput-wide v3, p0, Lcom/android/server/am/ProcessList;->mSmartDHAKswapdWatermark:J

    .line 242
    const-wide/32 v3, 0x2800000

    iput-wide v3, p0, Lcom/android/server/am/ProcessList;->mSmartDHADefaultMargin:J

    .line 260
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 261
    .local v0, "minfo":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 262
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v3

    const-wide/32 v5, 0x100000

    div-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    .line 266
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getWatermark()J

    move-result-wide v1

    .line 267
    .local v1, "watermark":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    iput-wide v1, p0, Lcom/android/server/am/ProcessList;->mSmartDHAKswapdWatermark:J

    .line 269
    :cond_0
    invoke-direct {p0, v7, v7, v7}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 270
    return-void

    .line 187
    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x9
        0xf
    .end array-data

    .line 193
    :array_1
    .array-data 8
        0x2000
        0x3000
        0x4000
        0x6000
        0x7000
        0x8000
    .end array-data

    .line 199
    :array_2
    .array-data 8
        0xc000
        0xf000
        0x12000
        0x15000
        0x18000
        0x1e000
    .end array-data
.end method

.method public static appendRamKb(Ljava/lang/StringBuilder;J)V
    .locals 4
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "ramKb"    # J

    .prologue
    .line 592
    const/4 v1, 0x0

    .local v1, "j":I
    const/16 v0, 0xa

    .local v0, "fact":I
    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    .line 593
    int-to-long v2, v0

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    .line 594
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 592
    :cond_0
    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 597
    :cond_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 598
    return-void
.end method

.method private static buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "space"    # Ljava/lang/String;
    .param p2, "val"    # I
    .param p3, "base"    # I

    .prologue
    .line 497
    if-ne p2, p3, :cond_1

    .line 498
    if-nez p1, :cond_0

    .line 501
    .end local p0    # "prefix":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 499
    .restart local p0    # "prefix":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 501
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-int v1, p2, p3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static computeNextPssTime(IZZJ)J
    .locals 3
    .param p0, "procState"    # I
    .param p1, "first"    # Z
    .param p2, "sleeping"    # Z
    .param p3, "now"    # J

    .prologue
    .line 693
    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    .line 700
    .local v0, "table":[J
    :goto_0
    aget-wide v1, v0, p0

    add-long/2addr v1, p3

    return-wide v1

    .line 693
    .end local v0    # "table":[J
    :cond_0
    sget-object v0, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    sget-object v0, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    goto :goto_0
.end method

.method public static makeOomAdjString(I)Ljava/lang/String;
    .locals 6
    .param p0, "setAdj"    # I

    .prologue
    const/4 v5, 0x1

    const/16 v4, -0xc

    const/16 v3, -0x10

    const/16 v1, -0x11

    const/4 v2, 0x0

    .line 505
    const/16 v0, 0x9

    if-lt p0, v0, :cond_0

    .line 506
    const-string v0, "cch"

    const-string v1, "  "

    const/16 v2, 0x9

    invoke-static {v0, v1, p0, v2}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 532
    :goto_0
    return-object v0

    .line 507
    :cond_0
    const/16 v0, 0x8

    if-lt p0, v0, :cond_1

    .line 508
    const-string/jumbo v0, "svcb "

    const/16 v1, 0x8

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 509
    :cond_1
    const/4 v0, 0x7

    if-lt p0, v0, :cond_2

    .line 510
    const-string v0, "prev "

    const/4 v1, 0x7

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 511
    :cond_2
    const/4 v0, 0x6

    if-lt p0, v0, :cond_3

    .line 512
    const-string v0, "home "

    const/4 v1, 0x6

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 513
    :cond_3
    const/4 v0, 0x5

    if-lt p0, v0, :cond_4

    .line 514
    const-string/jumbo v0, "svc  "

    const/4 v1, 0x5

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 515
    :cond_4
    const/4 v0, 0x4

    if-lt p0, v0, :cond_5

    .line 516
    const-string v0, "hvy  "

    const/4 v1, 0x4

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 517
    :cond_5
    const/4 v0, 0x3

    if-lt p0, v0, :cond_6

    .line 518
    const-string v0, "bkup "

    const/4 v1, 0x3

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 519
    :cond_6
    const/4 v0, 0x2

    if-lt p0, v0, :cond_7

    .line 520
    const-string v0, "prcp "

    const/4 v1, 0x2

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 521
    :cond_7
    if-lt p0, v5, :cond_8

    .line 522
    const-string/jumbo v0, "vis  "

    invoke-static {v0, v2, p0, v5}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 523
    :cond_8
    if-ltz p0, :cond_9

    .line 524
    const-string v0, "fore "

    const/4 v1, 0x0

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 525
    :cond_9
    if-lt p0, v4, :cond_a

    .line 526
    const-string v0, "pers "

    invoke-static {v0, v2, p0, v4}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 527
    :cond_a
    if-lt p0, v3, :cond_b

    .line 528
    const-string/jumbo v0, "sys  "

    invoke-static {v0, v2, p0, v3}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 529
    :cond_b
    if-lt p0, v1, :cond_c

    .line 530
    const-string v0, "ntv  "

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 532
    :cond_c
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static makeProcStateString(I)Ljava/lang/String;
    .locals 1
    .param p0, "curProcState"    # I

    .prologue
    .line 538
    packed-switch p0, :pswitch_data_0

    .line 585
    const-string v0, "??"

    .line 588
    .local v0, "procState":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 540
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_0
    const-string v0, "N "

    .line 541
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 543
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_1
    const-string v0, "P "

    .line 544
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 546
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_2
    const-string v0, "PU"

    .line 547
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 549
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_3
    const-string v0, "T "

    .line 550
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 552
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_4
    const-string v0, "IF"

    .line 553
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 555
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_5
    const-string v0, "IB"

    .line 556
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 558
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_6
    const-string v0, "BU"

    .line 559
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 561
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_7
    const-string v0, "HW"

    .line 562
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 564
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_8
    const-string v0, "S "

    .line 565
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 567
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_9
    const-string v0, "R "

    .line 568
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 570
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_a
    const-string v0, "HO"

    .line 571
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 573
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_b
    const-string v0, "LA"

    .line 574
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 576
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_c
    const-string v0, "CA"

    .line 577
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 579
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_d
    const-string v0, "Ca"

    .line 580
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 582
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_e
    const-string v0, "CE"

    .line 583
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 538
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public static procStatesDifferForMem(II)Z
    .locals 2
    .param p0, "procState1"    # I
    .param p1, "procState2"    # I

    .prologue
    .line 688
    sget-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget v0, v0, p0

    sget-object v1, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget v1, v1, p1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static totalDeviceMemory()J
    .locals 4

    .prologue
    .line 127
    sget-object v0, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    sput-object v0, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    .line 130
    :cond_0
    sget-object v0, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 132
    sget-object v0, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private updateOomLevels(IIZ)V
    .locals 37
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I
    .param p3, "write"    # Z

    .prologue
    .line 286
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    move-wide/from16 v31, v0

    const-wide/16 v33, 0x12c

    sub-long v31, v31, v33

    move-wide/from16 v0, v31

    long-to-float v0, v0

    move/from16 v31, v0

    const/high16 v32, 0x43c80000    # 400.0f

    div-float v29, v31, v32

    .line 289
    .local v29, "scaleMem":F
    const v20, 0x5dc00

    .line 290
    .local v20, "minSize":I
    const v17, 0xfa000

    .line 292
    .local v17, "maxSize":I
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v31

    if-nez v31, :cond_0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    move-wide/from16 v31, v0

    const-wide/16 v33, 0x600

    cmp-long v31, v31, v33

    if-gez v31, :cond_1

    mul-int v31, p1, p2

    const v32, 0xfa000

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_1

    .line 294
    :cond_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    move-wide/from16 v31, v0

    const-wide/16 v33, 0x12c

    sub-long v31, v31, v33

    move-wide/from16 v0, v31

    long-to-float v0, v0

    move/from16 v31, v0

    const v32, 0x44b54000    # 1450.0f

    div-float v29, v31, v32

    .line 296
    const v20, 0x25800

    .line 297
    const v17, 0x1fa400

    .line 300
    :cond_1
    sget v31, Lcom/android/server/am/ProcessList;->mWhitelistEnable:I

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_2

    .line 302
    const/high16 v10, 0x3f800000    # 1.0f

    .line 303
    .local v10, "enableWhitelist":F
    const-string v31, "ro.sf.lcd_density"

    const-string v32, "160"

    invoke-static/range {v31 .. v32}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 304
    .local v7, "densityS":Ljava/lang/String;
    const-string v31, "ro.build.characteristics"

    const-string/jumbo v32, "smartphone"

    invoke-static/range {v31 .. v32}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 306
    .local v30, "typeS":Ljava/lang/String;
    :try_start_0
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 307
    .local v6, "densityI":I
    const-string v31, "DHA"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "density is "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    move-wide/from16 v31, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide/from16 v0, v31

    long-to-float v0, v0

    move/from16 v31, v0

    int-to-float v0, v6

    move/from16 v32, v0

    div-float v10, v31, v32

    .line 315
    .end local v6    # "densityI":I
    :goto_0
    const/high16 v31, 0x41000000    # 8.0f

    cmpl-float v31, v10, v31

    if-lez v31, :cond_5

    const-string/jumbo v31, "tablet"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v31

    if-eqz v31, :cond_5

    .line 317
    const/16 v31, 0x1

    sput v31, Lcom/android/server/am/ProcessList;->mWhitelistEnable:I

    .line 318
    sget v31, Lcom/android/server/am/ProcessList;->MAX_CACHED_APPS:I

    const/16 v32, 0x6

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_2

    .line 319
    const/16 v31, 0xc

    sput v31, Lcom/android/server/am/ProcessList;->MAX_CACHED_APPS:I

    .line 325
    .end local v7    # "densityS":Ljava/lang/String;
    .end local v10    # "enableWhitelist":F
    .end local v30    # "typeS":Ljava/lang/String;
    :cond_2
    :goto_1
    mul-int v31, p1, p2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v31, v31, v32

    sub-int v32, v17, v20

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    div-float v28, v31, v32

    .line 332
    .local v28, "scaleDisp":F
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 333
    .local v3, "adjString":Ljava/lang/StringBuilder;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 335
    .local v18, "memString":Ljava/lang/StringBuilder;
    cmpl-float v31, v29, v28

    if-lez v31, :cond_6

    move/from16 v27, v29

    .line 338
    .local v27, "scale":F
    :goto_2
    const-string v31, "ro.config.dha_lmk_scale"

    const-string v32, "-1"

    invoke-static/range {v31 .. v32}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    .line 340
    .local v8, "dha_lmk_scale_property":F
    const/high16 v31, -0x40800000    # -1.0f

    cmpl-float v31, v8, v31

    if-eqz v31, :cond_3

    .line 341
    move/from16 v27, v8

    .line 344
    :cond_3
    const/16 v31, 0x0

    cmpg-float v31, v27, v31

    if-gez v31, :cond_7

    const/16 v27, 0x0

    .line 346
    :cond_4
    :goto_3
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x10e0009

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v22

    .line 348
    .local v22, "minfree_adj":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x10e0008

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v21

    .line 354
    .local v21, "minfree_abs":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v13, v0, :cond_8

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[J

    move-object/from16 v31, v0

    aget-wide v14, v31, v13

    .line 356
    .local v14, "low":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[J

    move-object/from16 v31, v0

    aget-wide v11, v31, v13

    .line 357
    .local v11, "high":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v31, v0

    long-to-float v0, v14

    move/from16 v32, v0

    sub-long v33, v11, v14

    move-wide/from16 v0, v33

    long-to-float v0, v0

    move/from16 v33, v0

    mul-float v33, v33, v27

    add-float v32, v32, v33

    move/from16 v0, v32

    float-to-long v0, v0

    move-wide/from16 v32, v0

    aput-wide v32, v31, v13

    .line 354
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 310
    .end local v3    # "adjString":Ljava/lang/StringBuilder;
    .end local v8    # "dha_lmk_scale_property":F
    .end local v11    # "high":J
    .end local v13    # "i":I
    .end local v14    # "low":J
    .end local v18    # "memString":Ljava/lang/StringBuilder;
    .end local v21    # "minfree_abs":I
    .end local v22    # "minfree_adj":I
    .end local v27    # "scale":F
    .end local v28    # "scaleDisp":F
    .restart local v7    # "densityS":Ljava/lang/String;
    .restart local v10    # "enableWhitelist":F
    .restart local v30    # "typeS":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 311
    .local v9, "e":Ljava/lang/NumberFormatException;
    const-string v31, "DHA"

    const-string v32, "densityS is invalid"

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const/high16 v10, 0x3f800000    # 1.0f

    goto/16 :goto_0

    .line 322
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    const/16 v31, 0x0

    sput v31, Lcom/android/server/am/ProcessList;->mWhitelistEnable:I

    goto/16 :goto_1

    .end local v7    # "densityS":Ljava/lang/String;
    .end local v10    # "enableWhitelist":F
    .end local v30    # "typeS":Ljava/lang/String;
    .restart local v3    # "adjString":Ljava/lang/StringBuilder;
    .restart local v18    # "memString":Ljava/lang/StringBuilder;
    .restart local v28    # "scaleDisp":F
    :cond_6
    move/from16 v27, v28

    .line 335
    goto/16 :goto_2

    .line 345
    .restart local v8    # "dha_lmk_scale_property":F
    .restart local v27    # "scale":F
    :cond_7
    const/high16 v31, 0x3f800000    # 1.0f

    cmpl-float v31, v27, v31

    if-lez v31, :cond_4

    const/high16 v27, 0x3f800000    # 1.0f

    goto :goto_3

    .line 360
    .restart local v13    # "i":I
    .restart local v21    # "minfree_abs":I
    .restart local v22    # "minfree_adj":I
    :cond_8
    if-ltz v21, :cond_9

    .line 361
    const/4 v13, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v13, v0, :cond_9

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v31, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v33, v0

    aget-wide v33, v33, v13

    move-wide/from16 v0, v33

    long-to-float v0, v0

    move/from16 v33, v0

    mul-float v32, v32, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    add-int/lit8 v34, v34, -0x1

    aget-wide v33, v33, v34

    move-wide/from16 v0, v33

    long-to-float v0, v0

    move/from16 v33, v0

    div-float v32, v32, v33

    move/from16 v0, v32

    float-to-long v0, v0

    move-wide/from16 v32, v0

    aput-wide v32, v31, v13

    .line 361
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 366
    :cond_9
    if-eqz v22, :cond_b

    .line 367
    const/4 v13, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v13, v0, :cond_b

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v31, v0

    aget-wide v32, v31, v13

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v35, v0

    aget-wide v35, v35, v13

    move-wide/from16 v0, v35

    long-to-float v0, v0

    move/from16 v35, v0

    mul-float v34, v34, v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v36, v0

    add-int/lit8 v36, v36, -0x1

    aget-wide v35, v35, v36

    move-wide/from16 v0, v35

    long-to-float v0, v0

    move/from16 v35, v0

    div-float v34, v34, v35

    move/from16 v0, v34

    float-to-long v0, v0

    move-wide/from16 v34, v0

    add-long v32, v32, v34

    aput-wide v32, v31, v13

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v31, v0

    aget-wide v31, v31, v13

    const-wide/16 v33, 0x0

    cmp-long v31, v31, v33

    if-gez v31, :cond_a

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v31, v0

    const-wide/16 v32, 0x0

    aput-wide v32, v31, v13

    .line 367
    :cond_a
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 378
    :cond_b
    const/16 v31, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v31

    const-wide/16 v33, 0x400

    div-long v31, v31, v33

    const-wide/16 v33, 0x3

    div-long v31, v31, v33

    move-wide/from16 v0, v31

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    .line 380
    const/4 v13, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v13, v0, :cond_d

    .line 381
    if-lez v13, :cond_c

    .line 382
    const/16 v31, 0x2c

    move/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 383
    const/16 v31, 0x2c

    move-object/from16 v0, v18

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 385
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v31, v0

    aget v31, v31, v13

    move/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v31, v0

    aget-wide v31, v31, v13

    const-wide/16 v33, 0x400

    mul-long v31, v31, v33

    const-wide/16 v33, 0x1000

    div-long v31, v31, v33

    move-object/from16 v0, v18

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 380
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 391
    :cond_d
    mul-int v31, p1, p2

    mul-int/lit8 v31, v31, 0x4

    mul-int/lit8 v31, v31, 0x3

    move/from16 v0, v31

    div-int/lit16 v0, v0, 0x400

    move/from16 v24, v0

    .line 392
    .local v24, "reserve":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x10e000b

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v26

    .line 393
    .local v26, "reserve_adj":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x10e000a

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v25

    .line 395
    .local v25, "reserve_abs":I
    if-ltz v25, :cond_e

    .line 396
    move/from16 v24, v25

    .line 399
    :cond_e
    if-eqz v26, :cond_f

    .line 400
    add-int v24, v24, v26

    .line 401
    if-gez v24, :cond_f

    .line 402
    const/16 v24, 0x0

    .line 425
    :cond_f
    if-eqz p3, :cond_10

    .line 426
    const-string v31, "/sys/module/lowmemorykiller/parameters/adj"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ProcessList;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    const-string v31, "/sys/module/lowmemorykiller/parameters/minfree"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ProcessList;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const-string/jumbo v31, "sys.sysctl.extra_free_kbytes"

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    :cond_10
    const/16 v31, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v31

    move-wide/from16 v0, v31

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/ProcessList;->mSzDHAThreshold:J

    .line 434
    const/16 v31, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v31

    move-wide/from16 v0, v31

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/ProcessList;->mSz2ndDHAThreshold:J

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[J

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aget-wide v31, v31, v32

    const-wide/16 v33, 0x400

    mul-long v31, v31, v33

    move-wide/from16 v0, v31

    long-to-float v0, v0

    move/from16 v31, v0

    mul-float v31, v31, v27

    move/from16 v0, v31

    float-to-long v0, v0

    move-wide/from16 v31, v0

    move-wide/from16 v0, v31

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/ProcessList;->mSzDHADefendThreshold:J

    .line 438
    const-string v31, "ro.com.google.gmsversion"

    const-string v32, "none"

    invoke-static/range {v31 .. v32}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const-string v32, "none"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_11

    .line 439
    const-string v31, "ro.config.dha_empty_max"

    const-string v32, "30"

    invoke-static/range {v31 .. v32}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    add-int/lit8 v31, v31, 0xc

    sput v31, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    .line 440
    const-string v31, "DHA_PROPERTY"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "No GMS,  MAX_EMPTY_APPS = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget v33, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_11
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v4

    .line 444
    .local v4, "at":Landroid/app/ActivityThread;
    invoke-virtual {v4}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v5

    .line 446
    .local v5, "context":Landroid/content/Context;
    const-string v31, "persona"

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/PersonaManager;

    .line 447
    .local v16, "mPersona":Landroid/os/PersonaManager;
    invoke-virtual/range {v16 .. v16}, Landroid/os/PersonaManager;->getPersonas()Ljava/util/List;

    move-result-object v23

    .line 449
    .local v23, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v23, :cond_12

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v31

    if-lez v31, :cond_12

    .line 451
    sget v31, Lcom/android/server/am/ProcessList;->MAX_KNOX_CACHED_APPS:I

    sput v31, Lcom/android/server/am/ProcessList;->MAX_CACHED_APPS:I

    .line 452
    sget v31, Lcom/android/server/am/ProcessList;->MAX_KNOX_EMPTY_APPS:I

    sput v31, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    .line 453
    const-string v31, "DHA_PROPERTY"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "KNOX is installed. MAX_CACHED_APPS = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget v33, Lcom/android/server/am/ProcessList;->MAX_CACHED_APPS:I

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " , MAX_EMPTY_APPS = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget v33, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_12
    const-string v31, "ro.config.dha_update_max_count"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ProcessList;->mSzUpdateDHAMaxCount:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ProcessList;->mSzUpdateDHAMaxCount:I

    .line 458
    const-string v31, "ro.config.dha_mid_step"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ProcessList;->mSzMidDHAStep:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ProcessList;->mSzMidDHAStep:I

    .line 460
    const-string v31, "ro.config.dha_mid_2nd_step"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ProcessList;->mSzMidDHA2ndStep:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ProcessList;->mSzMidDHA2ndStep:I

    .line 462
    const-string v31, "ro.config.dha_step"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ProcessList;->mSzDHAStep:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ProcessList;->mSzDHAStep:I

    .line 464
    const-string v31, "ro.config.dha_th_rate"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ProcessList;->mSzDHAThresholdRate:F

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ProcessList;->mSzDHAThresholdRate:F

    .line 466
    const-string v31, "ro.config.dha_th_level"

    const-string v32, "15"

    invoke-static/range {v31 .. v32}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v31

    move-wide/from16 v0, v31

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/ProcessList;->mSzDHAThreshold:J

    .line 467
    const-string v31, "ro.config.dha_th_2nd_level"

    const-string v32, "3"

    invoke-static/range {v31 .. v32}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v31

    move-wide/from16 v0, v31

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/ProcessList;->mSz2ndDHAThreshold:J

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[J

    move-object/from16 v31, v0

    const-string v32, "ro.config.dha_defend_th_level"

    const-string v33, "0"

    invoke-static/range {v32 .. v33}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    aget-wide v31, v31, v32

    const-wide/16 v33, 0x400

    mul-long v31, v31, v33

    move-wide/from16 v0, v31

    long-to-float v0, v0

    move/from16 v31, v0

    mul-float v31, v31, v27

    move/from16 v0, v31

    float-to-long v0, v0

    move-wide/from16 v31, v0

    move-wide/from16 v0, v31

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/ProcessList;->mSzDHADefendThreshold:J

    .line 469
    const-string v31, "ro.config.dha_increase_th"

    sget-wide v32, Lcom/android/server/am/ProcessList;->DHA_INCREASE_THRESHOLD:J

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v31

    sput-wide v31, Lcom/android/server/am/ProcessList;->DHA_INCREASE_THRESHOLD:J

    .line 471
    const-string v31, "DHA_PROPERTY"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "DHA UPDATE MAX COUNT "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ProcessList;->mSzUpdateDHAMaxCount:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const-string v31, "DHA_PROPERTY"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "DHA MID STEP "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ProcessList;->mSzMidDHAStep:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const-string v31, "DHA_PROPERTY"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "DHA MID 2ND STEP "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ProcessList;->mSzMidDHA2ndStep:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const-string v31, "DHA_PROPERTY"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "DHA STEP "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ProcessList;->mSzDHAStep:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const-string v31, "DHA_PROPERTY"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "DHA TH RATE "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ProcessList;->mSzDHAThresholdRate:F

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const-string v31, "DHA_PROPERTY"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "DHA mSzDHAThreshold "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/ProcessList;->mSzDHAThreshold:J

    move-wide/from16 v33, v0

    invoke-virtual/range {v32 .. v34}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const-string v31, "DHA_PROPERTY"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "DHA mSz2ndDHAThreshold "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/ProcessList;->mSz2ndDHAThreshold:J

    move-wide/from16 v33, v0

    invoke-virtual/range {v32 .. v34}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const-string v31, "DHA_PROPERTY"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "DHA mSzDHADefendThreshold "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/ProcessList;->mSzDHADefendThreshold:J

    move-wide/from16 v33, v0

    invoke-virtual/range {v32 .. v34}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    const-string v31, "DHA_PROPERTY"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "DHA DHA_INCREASE_THRESHOLD "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-wide v33, Lcom/android/server/am/ProcessList;->DHA_INCREASE_THRESHOLD:J

    invoke-virtual/range {v32 .. v34}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    const/high16 v31, 0x4ba00000    # 2.097152E7f

    const/high16 v32, 0x4ba00000    # 2.097152E7f

    mul-float v32, v32, v27

    add-float v31, v31, v32

    move/from16 v0, v31

    float-to-long v0, v0

    move-wide/from16 v31, v0

    move-wide/from16 v0, v31

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/ProcessList;->mSmartDHADefaultMargin:J

    .line 485
    const/high16 v31, 0x3f800000    # 1.0f

    mul-float v31, v31, v27

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    add-int/lit8 v19, v31, 0x1

    .line 486
    .local v19, "minBG":I
    const/16 v31, 0x1

    move/from16 v0, v19

    move/from16 v1, v31

    if-ge v0, v1, :cond_13

    sput v19, Lcom/android/server/am/ProcessList;->SMART_DHA_BG_APPS_MIN:I

    .line 487
    :cond_13
    const/high16 v31, 0x41700000    # 15.0f

    const/high16 v32, 0x41c80000    # 25.0f

    mul-float v32, v32, v27

    add-float v31, v31, v32

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    sput v31, Lcom/android/server/am/ProcessList;->SMART_DHA_BG_APPS_MAX:I

    .line 490
    return-void
.end method

.method private writeFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 740
    const/4 v1, 0x0

    .line 742
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 743
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 747
    if-eqz v2, :cond_2

    .line 749
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 754
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 750
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 751
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 744
    :catch_1
    move-exception v0

    .line 745
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to write "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 747
    if-eqz v1, :cond_0

    .line 749
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 750
    :catch_2
    move-exception v3

    goto :goto_0

    .line 747
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_1

    .line 749
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 751
    :cond_1
    :goto_3
    throw v3

    .line 750
    :catch_3
    move-exception v4

    goto :goto_3

    .line 747
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 744
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :cond_2
    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0
.end method


# virtual methods
.method applyDisplaySize(Lcom/android/server/wm/WindowManagerService;)V
    .locals 4
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v3, 0x1

    .line 273
    iget-boolean v1, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    if-nez v1, :cond_0

    .line 274
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 275
    .local v0, "p":Landroid/graphics/Point;
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/WindowManagerService;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    .line 276
    iget v1, v0, Landroid/graphics/Point;->x:I

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/graphics/Point;->y:I

    if-eqz v1, :cond_0

    .line 277
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 278
    iput-boolean v3, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    .line 281
    .end local v0    # "p":Landroid/graphics/Point;
    :cond_0
    return-void
.end method

.method decrementEmptyAppCount(II)I
    .locals 2
    .param p1, "empty"    # I
    .param p2, "cached"    # I

    .prologue
    .line 857
    const/4 v0, 0x0

    .line 859
    .local v0, "ret":I
    iget v1, p0, Lcom/android/server/am/ProcessList;->mSzDHAStep:I

    sub-int v0, p1, v1

    .line 861
    sget v1, Lcom/android/server/am/ProcessList;->MIN_EMPTY_APPS_FOR_DHA:I

    if-ge v0, v1, :cond_0

    .line 862
    sget v0, Lcom/android/server/am/ProcessList;->MIN_EMPTY_APPS_FOR_DHA:I

    .line 864
    :cond_0
    sget v1, Lcom/android/server/am/ProcessList;->MIN_CACHED_APPS:I

    if-le p2, v1, :cond_1

    .line 865
    add-int/lit8 v1, p2, -0x1

    sput v1, Lcom/android/server/am/ProcessList;->mMaxCached:I

    .line 867
    :cond_1
    iget v1, p0, Lcom/android/server/am/ProcessList;->mSzUpdateDHACount:I

    if-nez v1, :cond_2

    .line 868
    iget v1, p0, Lcom/android/server/am/ProcessList;->mSzUpdateDHACount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/am/ProcessList;->mSzUpdateDHACount:I

    .line 870
    :cond_2
    return v0
.end method

.method getCachedRestoreThresholdKb()J
    .locals 2

    .prologue
    .line 717
    iget-wide v0, p0, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    return-wide v0
.end method

.method getKswapdWatermark()J
    .locals 2

    .prologue
    .line 731
    iget-wide v0, p0, Lcom/android/server/am/ProcessList;->mSmartDHAKswapdWatermark:J

    return-wide v0
.end method

.method getLMKThreshold(I)J
    .locals 2
    .param p1, "adj"    # I

    .prologue
    const/16 v0, 0xf

    .line 723
    if-ge p1, v0, :cond_0

    const/16 v0, 0x9

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxMinfree()J
    .locals 4

    .prologue
    .line 758
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method getMemLevel(I)J
    .locals 5
    .param p1, "adjustment"    # I

    .prologue
    const-wide/16 v3, 0x400

    .line 704
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 705
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    aget v1, v1, v0

    if-gt p1, v1, :cond_0

    .line 706
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    aget-wide v1, v1, v0

    mul-long/2addr v1, v3

    .line 709
    :goto_1
    return-wide v1

    .line 704
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 709
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-wide v1, v1, v2

    mul-long/2addr v1, v3

    goto :goto_1
.end method

.method getSmartDHADefaultMargin()J
    .locals 2

    .prologue
    .line 727
    iget-wide v0, p0, Lcom/android/server/am/ProcessList;->mSmartDHADefaultMargin:J

    return-wide v0
.end method

.method public setSmartDHADefaultMargin(J)V
    .locals 0
    .param p1, "margin"    # J

    .prologue
    .line 735
    iput-wide p1, p0, Lcom/android/server/am/ProcessList;->mSmartDHADefaultMargin:J

    .line 736
    return-void
.end method

.method public setTrimCachedApps(I)V
    .locals 0
    .param p1, "lValue"    # I

    .prologue
    .line 879
    sput p1, Lcom/android/server/am/ProcessList;->TRIM_CACHED_APPS:I

    .line 880
    return-void
.end method

.method public setTrimCriticalTH(I)V
    .locals 0
    .param p1, "lValue"    # I

    .prologue
    .line 883
    sput p1, Lcom/android/server/am/ProcessList;->TRIM_CRITICAL_THRESHOLD:I

    .line 884
    return-void
.end method

.method public setTrimEmptyApps(I)V
    .locals 0
    .param p1, "lValue"    # I

    .prologue
    .line 875
    sput p1, Lcom/android/server/am/ProcessList;->TRIM_EMPTY_APPS:I

    .line 876
    return-void
.end method

.method public setTrimLowlTH(I)V
    .locals 0
    .param p1, "lValue"    # I

    .prologue
    .line 887
    sput p1, Lcom/android/server/am/ProcessList;->TRIM_LOW_THRESHOLD:I

    .line 888
    return-void
.end method

.method public updateHiddenAppNum(III)I
    .locals 15
    .param p1, "maxEmptyApp"    # I
    .param p2, "curCached"    # I
    .param p3, "curEmpty"    # I

    .prologue
    .line 764
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzUpdateDHACount:I

    if-lez v9, :cond_0

    .line 765
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzUpdateDHACount:I

    iget v10, p0, Lcom/android/server/am/ProcessList;->mSzUpdateDHAMaxCount:I

    if-ge v9, v10, :cond_4

    .line 766
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzUpdateDHACount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/server/am/ProcessList;->mSzUpdateDHACount:I

    .line 775
    :cond_0
    :goto_0
    move/from16 v3, p1

    .line 777
    .local v3, "ret":I
    sget-object v9, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    if-eqz v9, :cond_9

    .line 779
    sget-object v9, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v9}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 782
    sget-object v9, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v9}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v7

    .line 783
    .local v7, "szFreeMem":J
    sget-object v9, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v9}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v9

    sget-object v11, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v11}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v11

    add-long v5, v9, v11

    .line 785
    .local v5, "szAvailableMem":J
    move/from16 v2, p1

    .line 786
    .local v2, "maxEmpty":I
    div-int/lit8 v9, v2, 0x2

    sput v9, Lcom/android/server/am/ProcessList;->mMaxCached:I

    .line 788
    sget v9, Lcom/android/server/am/ProcessList;->mMaxCached:I

    sget v10, Lcom/android/server/am/ProcessList;->MIN_CACHED_APPS:I

    if-ge v9, v10, :cond_1

    .line 789
    sget v9, Lcom/android/server/am/ProcessList;->MIN_CACHED_APPS:I

    sput v9, Lcom/android/server/am/ProcessList;->mMaxCached:I

    .line 791
    :cond_1
    sget v9, Lcom/android/server/am/ProcessList;->mMaxCached:I

    sget v10, Lcom/android/server/am/ProcessList;->MAX_CACHED_APPS:I

    if-le v9, v10, :cond_2

    .line 792
    sget v9, Lcom/android/server/am/ProcessList;->MAX_CACHED_APPS:I

    sput v9, Lcom/android/server/am/ProcessList;->mMaxCached:I

    .line 795
    :cond_2
    sget-boolean v9, Lcom/android/server/am/ProcessList;->DEBUG:Z

    if-eqz v9, :cond_3

    .line 796
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "AvailableMem = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-wide/16 v11, 0x400

    div-long v11, v5, v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "kB (Free: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v11}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v11

    const-wide/16 v13, 0x400

    div-long/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "kB, Cached: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v11}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v11

    const-wide/16 v13, 0x400

    div-long/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "kB) "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "Threshold = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, p0, Lcom/android/server/am/ProcessList;->mSzDHAThreshold:J

    const-wide/16 v13, 0x400

    div-long/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "kB [MaxHidden: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/android/server/am/ProcessList;->mMaxCached:I

    add-int v11, v11, p1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", Current Hidden"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", Current Empty"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    :cond_3
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-gtz v9, :cond_7

    move v4, v3

    .line 853
    .end local v2    # "maxEmpty":I
    .end local v3    # "ret":I
    .end local v5    # "szAvailableMem":J
    .end local v7    # "szFreeMem":J
    .local v4, "ret":I
    :goto_1
    return v4

    .line 769
    .end local v4    # "ret":I
    :cond_4
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/server/am/ProcessList;->mSzUpdateDHACount:I

    .line 770
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHAStep:I

    sub-int v9, p1, v9

    sget v10, Lcom/android/server/am/ProcessList;->MID_EMPTY_APPS_FOR_DHA:I

    if-ge v9, v10, :cond_5

    sget v9, Lcom/android/server/am/ProcessList;->MID_EMPTY_APPS_FOR_DHA:I

    :goto_2
    iput v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    .line 771
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    iget v10, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA2ndStep:I

    sub-int/2addr v9, v10

    sget v10, Lcom/android/server/am/ProcessList;->MIN_EMPTY_APPS_FOR_DHA:I

    if-ge v9, v10, :cond_6

    sget v9, Lcom/android/server/am/ProcessList;->MIN_EMPTY_APPS_FOR_DHA:I

    :goto_3
    iput v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA2nd:I

    goto/16 :goto_0

    .line 770
    :cond_5
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHAStep:I

    sub-int v9, p1, v9

    goto :goto_2

    .line 771
    :cond_6
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    iget v10, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA2ndStep:I

    sub-int/2addr v9, v10

    goto :goto_3

    .line 807
    .restart local v2    # "maxEmpty":I
    .restart local v3    # "ret":I
    .restart local v5    # "szAvailableMem":J
    .restart local v7    # "szFreeMem":J
    :cond_7
    long-to-float v9, v5

    iget-wide v10, p0, Lcom/android/server/am/ProcessList;->mSz2ndDHAThreshold:J

    long-to-float v10, v10

    iget v11, p0, Lcom/android/server/am/ProcessList;->mSzDHAThresholdRate:F

    mul-float/2addr v10, v11

    cmpg-float v9, v9, v10

    if-ltz v9, :cond_8

    iget-wide v9, p0, Lcom/android/server/am/ProcessList;->mSzDHADefendThreshold:J

    cmp-long v9, v7, v9

    if-gez v9, :cond_a

    :cond_8
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    if-gt v3, v9, :cond_a

    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA2nd:I

    if-le v3, v9, :cond_a

    .line 809
    move/from16 v0, p3

    move/from16 v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ProcessList;->decrementEmptyAppCount(II)I

    move-result v3

    .line 810
    sget-boolean v9, Lcom/android/server/am/ProcessList;->DEBUG:Z

    if-eqz v9, :cond_9

    .line 811
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Decrease Hidden App1 Number from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "maxEmpty":I
    .end local v5    # "szAvailableMem":J
    .end local v7    # "szFreeMem":J
    :cond_9
    :goto_4
    move v4, v3

    .line 853
    .end local v3    # "ret":I
    .restart local v4    # "ret":I
    goto :goto_1

    .line 815
    .end local v4    # "ret":I
    .restart local v2    # "maxEmpty":I
    .restart local v3    # "ret":I
    .restart local v5    # "szAvailableMem":J
    .restart local v7    # "szFreeMem":J
    :cond_a
    long-to-float v9, v5

    iget-wide v10, p0, Lcom/android/server/am/ProcessList;->mSzDHAThreshold:J

    long-to-float v10, v10

    iget v11, p0, Lcom/android/server/am/ProcessList;->mSzDHAThresholdRate:F

    mul-float/2addr v10, v11

    cmpg-float v9, v9, v10

    if-ltz v9, :cond_b

    iget-wide v9, p0, Lcom/android/server/am/ProcessList;->mSzDHADefendThreshold:J

    cmp-long v9, v7, v9

    if-gez v9, :cond_c

    :cond_b
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    if-le v3, v9, :cond_c

    .line 817
    move/from16 v0, p3

    move/from16 v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ProcessList;->decrementEmptyAppCount(II)I

    move-result v3

    .line 818
    sget-boolean v9, Lcom/android/server/am/ProcessList;->DEBUG:Z

    if-eqz v9, :cond_9

    .line 819
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Decrease Hidden App2 Number from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 824
    :cond_c
    long-to-float v9, v5

    iget-wide v10, p0, Lcom/android/server/am/ProcessList;->mSz2ndDHAThreshold:J

    long-to-float v10, v10

    iget v11, p0, Lcom/android/server/am/ProcessList;->mSzDHAThresholdRate:F

    mul-float/2addr v10, v11

    sget-wide v11, Lcom/android/server/am/ProcessList;->DHA_INCREASE_THRESHOLD:J

    long-to-float v11, v11

    add-float/2addr v10, v11

    cmpl-float v9, v9, v10

    if-lez v9, :cond_10

    iget-wide v9, p0, Lcom/android/server/am/ProcessList;->mSzDHADefendThreshold:J

    cmp-long v9, v7, v9

    if-lez v9, :cond_10

    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    if-ge v3, v9, :cond_10

    move/from16 v0, p3

    if-lt v0, v2, :cond_10

    .line 827
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzDHAStep:I

    add-int/2addr v3, v9

    .line 828
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/server/am/ProcessList;->mSzUpdateDHACount:I

    .line 829
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    if-gt v9, v3, :cond_d

    .line 830
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHAStep:I

    sub-int v9, v3, v9

    sget v10, Lcom/android/server/am/ProcessList;->MID_EMPTY_APPS_FOR_DHA:I

    if-ge v9, v10, :cond_e

    sget v9, Lcom/android/server/am/ProcessList;->MID_EMPTY_APPS_FOR_DHA:I

    :goto_5
    iput v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    .line 831
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    iget v10, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA2ndStep:I

    sub-int/2addr v9, v10

    sget v10, Lcom/android/server/am/ProcessList;->MIN_EMPTY_APPS_FOR_DHA:I

    if-ge v9, v10, :cond_f

    sget v9, Lcom/android/server/am/ProcessList;->MIN_EMPTY_APPS_FOR_DHA:I

    :goto_6
    iput v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA2nd:I

    .line 833
    :cond_d
    sget-boolean v9, Lcom/android/server/am/ProcessList;->DEBUG:Z

    if-eqz v9, :cond_9

    .line 834
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Increase Hidden App1 Number from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 830
    :cond_e
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHAStep:I

    sub-int v9, v3, v9

    goto :goto_5

    .line 831
    :cond_f
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    iget v10, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA2ndStep:I

    sub-int/2addr v9, v10

    goto :goto_6

    .line 838
    :cond_10
    long-to-float v9, v5

    iget-wide v10, p0, Lcom/android/server/am/ProcessList;->mSzDHAThreshold:J

    long-to-float v10, v10

    iget v11, p0, Lcom/android/server/am/ProcessList;->mSzDHAThresholdRate:F

    mul-float/2addr v10, v11

    sget-wide v11, Lcom/android/server/am/ProcessList;->DHA_INCREASE_THRESHOLD:J

    long-to-float v11, v11

    add-float/2addr v10, v11

    cmpl-float v9, v9, v10

    if-lez v9, :cond_9

    iget-wide v9, p0, Lcom/android/server/am/ProcessList;->mSzDHADefendThreshold:J

    cmp-long v9, v7, v9

    if-lez v9, :cond_9

    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    if-lt v3, v9, :cond_9

    sget v9, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    if-ge v3, v9, :cond_9

    move/from16 v0, p3

    if-lt v0, v2, :cond_9

    .line 841
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzDHAStep:I

    add-int/2addr v3, v9

    .line 842
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/server/am/ProcessList;->mSzUpdateDHACount:I

    .line 843
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    if-gt v9, v3, :cond_11

    .line 844
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHAStep:I

    sub-int v9, v3, v9

    sget v10, Lcom/android/server/am/ProcessList;->MID_EMPTY_APPS_FOR_DHA:I

    if-ge v9, v10, :cond_12

    sget v9, Lcom/android/server/am/ProcessList;->MID_EMPTY_APPS_FOR_DHA:I

    :goto_7
    iput v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    .line 845
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    iget v10, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA2ndStep:I

    sub-int/2addr v9, v10

    sget v10, Lcom/android/server/am/ProcessList;->MIN_EMPTY_APPS_FOR_DHA:I

    if-ge v9, v10, :cond_13

    sget v9, Lcom/android/server/am/ProcessList;->MIN_EMPTY_APPS_FOR_DHA:I

    :goto_8
    iput v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA2nd:I

    .line 847
    :cond_11
    sget-boolean v9, Lcom/android/server/am/ProcessList;->DEBUG:Z

    if-eqz v9, :cond_9

    .line 848
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Increase Hidden App2 Number from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 844
    :cond_12
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHAStep:I

    sub-int v9, v3, v9

    goto :goto_7

    .line 845
    :cond_13
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    iget v10, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA2ndStep:I

    sub-int/2addr v9, v10

    goto :goto_8
.end method
