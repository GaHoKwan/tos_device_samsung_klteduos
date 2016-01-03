.class public Landroid/os/DVFSHelper;
.super Ljava/lang/Object;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/DVFSHelper$1;,
        Landroid/os/DVFSHelper$ModelDegasLTE;,
        Landroid/os/DVFSHelper$ModelKMINI;,
        Landroid/os/DVFSHelper$ModelPXA1088;,
        Landroid/os/DVFSHelper$ModelMSM8x26;,
        Landroid/os/DVFSHelper$ModelHawaii;,
        Landroid/os/DVFSHelper$ModelD2;,
        Landroid/os/DVFSHelper$ModelExynos4;,
        Landroid/os/DVFSHelper$ModelKAM;,
        Landroid/os/DVFSHelper$ModelPicasso3GWIFI;,
        Landroid/os/DVFSHelper$ModelV23GWIFI;,
        Landroid/os/DVFSHelper$ModelV13GWIFI;,
        Landroid/os/DVFSHelper$ModelSA;,
        Landroid/os/DVFSHelper$ModelTF;,
        Landroid/os/DVFSHelper$ModelKQ;,
        Landroid/os/DVFSHelper$ModelKA;,
        Landroid/os/DVFSHelper$ModelKF;,
        Landroid/os/DVFSHelper$ModelHA;,
        Landroid/os/DVFSHelper$ModelHF;,
        Landroid/os/DVFSHelper$ModelSantos10;,
        Landroid/os/DVFSHelper$ModelJF;,
        Landroid/os/DVFSHelper$Model8930AB;,
        Landroid/os/DVFSHelper$ModelJA;,
        Landroid/os/DVFSHelper$ModelJBP;,
        Landroid/os/DVFSHelper$Model;
    }
.end annotation


# static fields
.field public static final ACTION_AMS_RESUME:Ljava/lang/String; = "ActivityManager_resume"

.field public static final ACTION_APP_LAUNCH:Ljava/lang/String; = "Application_launch"

.field public static final ACTION_BROWSER_FLING:Ljava/lang/String; = "Browser_fling"

.field public static final ACTION_GALLERY_TOUCH:Ljava/lang/String; = "Gallery_touch"

.field public static final ACTION_LAUNCHER_HOMEMENU:Ljava/lang/String; = "Launcher_homemenu"

.field public static final ACTION_LAUNCHER_TOUCH:Ljava/lang/String; = "Launcher_touch"

.field public static final ACTION_LISTVIEW_SCROLL:Ljava/lang/String; = "ListView_scroll"

.field public static final ACTION_PWM_ROTATION:Ljava/lang/String; = "PhoneWindowManager_rotation"

.field public static final ACTION_SHAREMUSIC_GROUPPLAY:Ljava/lang/String; = "ShareMusic_groupPlay"

.field public static volatile AMS_RESUME_TAIL_BOOST_TIMEOUT:I = 0x0

.field private static final BASE_MODEL:Ljava/lang/String; = "kf"

.field private static final BOARD_PLATFORM:Ljava/lang/String;

.field public static final BOOST_TYPE_LCD_FRAME_RATE:I = 0x4

.field public static final BOOST_TYPE_TOUCH:I = 0x1

.field public static final BO_BUS_MAX:J = 0x8L

.field public static final BO_CPU_MAX:J = 0x2L

.field public static final BO_CUSTOM_VALUE:J = 0x20L

.field private static final CHIP_NAME:Ljava/lang/String;

.field private static final DEVICE_TYPE:Ljava/lang/String;

.field public static volatile LIST_SCROLL_BOOSTER_CORE_NUM:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "DVFSHelper"

.field public static final OPTION_BUS_MAX:J = 0x8L

.field public static final OPTION_CPU_CORE_NUM_MAX:J = 0x4L

.field public static final OPTION_CPU_MAX:J = 0x2L

.field public static final OPTION_NONE:J = 0x0L

.field public static volatile PWM_ROTATION_BOOST_TIMEOUT:I = 0x0

.field private static final SIOP_MODEL:Ljava/lang/String; = "ssrm_kflte_chn"

.field public static final TYPE_BUS_MAX:I = 0x14

.field public static final TYPE_BUS_MIN:I = 0x13

.field public static final TYPE_CPU_CORE_NUM_MAX:I = 0xf

.field public static final TYPE_CPU_CORE_NUM_MIN:I = 0xe

.field public static final TYPE_CPU_MAX:I = 0xd

.field public static final TYPE_CPU_MIN:I = 0xc

.field public static final TYPE_EMMC_BURST_MODE:I = 0x12

.field public static final TYPE_FPS_MAX:I = 0x15

.field public static final TYPE_GPU_MAX:I = 0x11

.field public static final TYPE_GPU_MIN:I = 0x10

.field public static final TYPE_NONE:I = 0xb

.field private static final isEngBinary:Z

.field private static mToken:I


# instance fields
.field final APP_LAUNCH_BOOSTING_TIMEOUT_L:I

.field final APP_LAUNCH_BOOSTING_TIMEOUT_M:I

.field final APP_LAUNCH_BOOSTING_TIMEOUT_S:I

.field final ROTATION_BOOSTING_TIMEOUT:I

.field final ROTATION_GPU_BOOSTING_TIMEOUT:I

.field busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field private cpuBoost:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field fpsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field mBUSFrequencyTable:[I

.field mCPUCoreTable:[I

.field mCPUFrequencyTable:[I

.field mCameraBUSBooster:Landroid/os/DVFSHelper;

.field mCameraCPUBooster:Landroid/os/DVFSHelper;

.field mCameraCPUCoreNumBooster:Landroid/os/DVFSHelper;

.field mCameraGPUBooster:Landroid/os/DVFSHelper;

.field private mContext:Landroid/content/Context;

.field private mCustomFreqManager:Landroid/os/CustomFrequencyManager;

.field private mCustomValue:I

.field mGPUFrequencyTable:[I

.field private mId:I

.field private mIntent:Landroid/content/Intent;

.field private mIntentExtra:Landroid/content/Intent;

.field private volatile mIsAcquired:Z

.field private mModel:Landroid/os/DVFSHelper$Model;

.field private mOption:J

.field private mPkgName:Ljava/lang/String;

.field private mRandom:Ljava/util/Random;

.field mRotationBUSBooster:Landroid/os/DVFSHelper;

.field mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

.field mRotationGPUBooster:Landroid/os/DVFSHelper;

.field private mSupportedBUSFrequency:[I

.field private mSupportedCPUCoreNum:[I

.field private mSupportedCPUFrequency:[I

.field private mSupportedCPUFrequencyForSSRM:[I

.field private mSupportedGPUFrequency:[I

.field private mType:I

.field mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    sput v1, Landroid/os/DVFSHelper;->LIST_SCROLL_BOOSTER_CORE_NUM:I

    .line 52
    sput v1, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    .line 53
    sput v1, Landroid/os/DVFSHelper;->PWM_ROTATION_BOOST_TIMEOUT:I

    .line 57
    const-string/jumbo v0, "ro.board.platform"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    .line 58
    const-string/jumbo v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/DVFSHelper;->DEVICE_TYPE:Ljava/lang/String;

    .line 59
    const-string/jumbo v0, "ro.chipname"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/DVFSHelper;->CHIP_NAME:Ljava/lang/String;

    .line 87
    sput v1, Landroid/os/DVFSHelper;->mToken:I

    .line 677
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/os/DVFSHelper;->isEngBinary:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    .line 94
    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IJ)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "option"    # J

    .prologue
    .line 98
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IJ)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "option"    # J

    .prologue
    .line 103
    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJI)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IJI)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "option"    # J
    .param p6, "customValue"    # I

    .prologue
    const/16 v5, 0x7d0

    const/16 v4, 0x1f4

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object v2, p0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    .line 62
    iput-object v2, p0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    .line 63
    iput-object v2, p0, Landroid/os/DVFSHelper;->mIntent:Landroid/content/Intent;

    .line 64
    iput-object v2, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    .line 65
    const/16 v0, 0xb

    iput v0, p0, Landroid/os/DVFSHelper;->mType:I

    .line 66
    iput v3, p0, Landroid/os/DVFSHelper;->mId:I

    .line 67
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/DVFSHelper;->mOption:J

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/DVFSHelper;->mCustomValue:I

    .line 70
    iput-object v2, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    .line 71
    iput-object v2, p0, Landroid/os/DVFSHelper;->cpuBoost:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 73
    iput-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    .line 74
    iput-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    .line 75
    iput-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    .line 76
    iput-object v2, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    .line 77
    iput-object v2, p0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    .line 79
    iput-object v2, p0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 80
    iput-object v2, p0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 81
    iput-object v2, p0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 82
    iput-object v2, p0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 83
    iput-object v2, p0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 84
    iput-object v2, p0, Landroid/os/DVFSHelper;->fpsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 86
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Landroid/os/DVFSHelper;->mRandom:Ljava/util/Random;

    .line 89
    iput-boolean v3, p0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    .line 693
    iput-object v2, p0, Landroid/os/DVFSHelper;->mCameraCPUBooster:Landroid/os/DVFSHelper;

    .line 694
    iput-object v2, p0, Landroid/os/DVFSHelper;->mCameraGPUBooster:Landroid/os/DVFSHelper;

    .line 695
    iput-object v2, p0, Landroid/os/DVFSHelper;->mCameraBUSBooster:Landroid/os/DVFSHelper;

    .line 696
    iput-object v2, p0, Landroid/os/DVFSHelper;->mCameraCPUCoreNumBooster:Landroid/os/DVFSHelper;

    .line 697
    iput-object v2, p0, Landroid/os/DVFSHelper;->mCPUFrequencyTable:[I

    .line 698
    iput-object v2, p0, Landroid/os/DVFSHelper;->mCPUCoreTable:[I

    .line 699
    iput-object v2, p0, Landroid/os/DVFSHelper;->mGPUFrequencyTable:[I

    .line 700
    iput-object v2, p0, Landroid/os/DVFSHelper;->mBUSFrequencyTable:[I

    .line 701
    iput v5, p0, Landroid/os/DVFSHelper;->APP_LAUNCH_BOOSTING_TIMEOUT_L:I

    .line 702
    iput v4, p0, Landroid/os/DVFSHelper;->APP_LAUNCH_BOOSTING_TIMEOUT_S:I

    .line 703
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/os/DVFSHelper;->APP_LAUNCH_BOOSTING_TIMEOUT_M:I

    .line 804
    iput v4, p0, Landroid/os/DVFSHelper;->ROTATION_BOOSTING_TIMEOUT:I

    .line 805
    iput v5, p0, Landroid/os/DVFSHelper;->ROTATION_GPU_BOOSTING_TIMEOUT:I

    .line 806
    iput-object v2, p0, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    .line 807
    iput-object v2, p0, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    .line 808
    iput-object v2, p0, Landroid/os/DVFSHelper;->mRotationBUSBooster:Landroid/os/DVFSHelper;

    .line 107
    if-nez p1, :cond_0

    .line 108
    const-string v0, "DVFSHelper"

    const-string v1, "DVFSHelper:: context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :goto_0
    return-void

    .line 111
    :cond_0
    iput-object p1, p0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    .line 112
    invoke-direct {p0}, Landroid/os/DVFSHelper;->createModel()Landroid/os/DVFSHelper$Model;

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    .line 114
    iget-object v0, p0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    const-string v1, "CustomFrequencyManagerService"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/CustomFrequencyManager;

    iput-object v0, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    .line 115
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-nez v0, :cond_1

    .line 116
    const-string v0, "DVFSHelper"

    const-string v1, "DVFSHelper:: failed to load CFMS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 120
    :cond_1
    const-string v0, "DVFSHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DVFSHelper:: New instance is created for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager;->getSupportedCPUFrequency()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    .line 123
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager;->getSupportedCPUFrequency()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    .line 124
    invoke-direct {p0}, Landroid/os/DVFSHelper;->adjustCPUFreqTable()V

    .line 125
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager;->getSupportedCPUCoreNum()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    .line 126
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager;->getSupportedGPUFrequency()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    .line 127
    invoke-direct {p0}, Landroid/os/DVFSHelper;->adjustGPUFreqTable()V

    .line 128
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager;->getSupportedSysBusFrequency()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    .line 130
    sget v0, Landroid/os/DVFSHelper;->mToken:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/os/DVFSHelper;->mToken:I

    .line 131
    if-eqz p2, :cond_2

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/DVFSHelper;->mToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    .line 137
    :goto_1
    iput p3, p0, Landroid/os/DVFSHelper;->mType:I

    .line 138
    iput-wide p4, p0, Landroid/os/DVFSHelper;->mOption:J

    .line 139
    invoke-direct {p0}, Landroid/os/DVFSHelper;->getRandomNum()I

    move-result v0

    iput v0, p0, Landroid/os/DVFSHelper;->mId:I

    .line 140
    iput p6, p0, Landroid/os/DVFSHelper;->mCustomValue:I

    goto/16 :goto_0

    .line 134
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/DVFSHelper;->mToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    goto :goto_1
.end method

.method static synthetic access$000(Landroid/os/DVFSHelper;)[I
    .locals 1
    .param p0, "x0"    # Landroid/os/DVFSHelper;

    .prologue
    .line 18
    iget-object v0, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    return-object v0
.end method

.method static synthetic access$100(Landroid/os/DVFSHelper;)[I
    .locals 1
    .param p0, "x0"    # Landroid/os/DVFSHelper;

    .prologue
    .line 18
    iget-object v0, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    return-object v0
.end method

.method private adjustCPUFreqTable()V
    .locals 5

    .prologue
    .line 145
    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    if-nez v3, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    const/4 v0, 0x0

    .line 150
    .local v0, "SHIFT_STEPS":I
    const-string v3, "hf"

    const-string v4, "kf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    .line 151
    :cond_2
    const-string v3, "kf"

    const-string v4, "kf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "ka"

    const-string v4, "kf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    const/4 v0, 0x2

    .line 152
    :cond_4
    const-string/jumbo v3, "ssrm_kflte_chn"

    const-string v4, "ja_kor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v0, 0x3

    .line 154
    :cond_5
    if-lez v0, :cond_0

    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    array-length v3, v3

    if-le v3, v0, :cond_0

    .line 155
    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    array-length v3, v3

    sub-int/2addr v3, v0

    new-array v2, v3, [I

    .line 156
    .local v2, "newCPUFreqTable":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    array-length v3, v3

    sub-int/2addr v3, v0

    if-ge v1, v3, :cond_6

    .line 157
    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    add-int v4, v1, v0

    aget v3, v3, v4

    aput v3, v2, v1

    .line 156
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 159
    :cond_6
    iput-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    goto :goto_0
.end method

.method private adjustGPUFreqTable()V
    .locals 4

    .prologue
    .line 165
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    if-nez v2, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    const-string v2, "ha"

    const-string v3, "kf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 169
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x2

    new-array v1, v2, [I

    .line 170
    .local v1, "newGPUFreqTable":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x2

    if-ge v0, v2, :cond_2

    .line 171
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    add-int/lit8 v3, v0, 0x2

    aget v2, v2, v3

    aput v2, v1, v0

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 173
    :cond_2
    iput-object v1, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    goto :goto_0
.end method

.method private createModel()Landroid/os/DVFSHelper$Model;
    .locals 2

    .prologue
    .line 1174
    const-string v0, "ha"

    const-string v1, "kf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ssrm_kflte_chn"

    const-string/jumbo v1, "vienna"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1175
    new-instance v0, Landroid/os/DVFSHelper$ModelV13GWIFI;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelV13GWIFI;-><init>(Landroid/os/DVFSHelper;)V

    .line 1241
    :goto_0
    return-object v0

    .line 1177
    :cond_0
    const-string v0, "ha"

    const-string v1, "kf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ssrm_kflte_chn"

    const-string/jumbo v1, "v2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1178
    new-instance v0, Landroid/os/DVFSHelper$ModelV23GWIFI;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelV23GWIFI;-><init>(Landroid/os/DVFSHelper;)V

    goto :goto_0

    .line 1180
    :cond_1
    const-string v0, "ha"

    const-string v1, "kf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "ssrm_kflte_chn"

    const-string/jumbo v1, "picasso"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1181
    new-instance v0, Landroid/os/DVFSHelper$ModelPicasso3GWIFI;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelPicasso3GWIFI;-><init>(Landroid/os/DVFSHelper;)V

    goto :goto_0

    .line 1183
    :cond_2
    const-string v0, "jf"

    const-string v1, "kf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1184
    new-instance v0, Landroid/os/DVFSHelper$ModelJF;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelJF;-><init>(Landroid/os/DVFSHelper;)V

    goto :goto_0

    .line 1186
    :cond_3
    const-string v0, "ja"

    const-string v1, "kf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1187
    new-instance v0, Landroid/os/DVFSHelper$ModelJA;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelJA;-><init>(Landroid/os/DVFSHelper;)V

    goto :goto_0

    .line 1189
    :cond_4
    const-string v0, "hf"

    const-string v1, "kf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1190
    new-instance v0, Landroid/os/DVFSHelper$ModelHF;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelHF;-><init>(Landroid/os/DVFSHelper;)V

    goto :goto_0

    .line 1192
    :cond_5
    const-string v0, "ha"

    const-string v1, "kf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1193
    new-instance v0, Landroid/os/DVFSHelper$ModelHA;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelHA;-><init>(Landroid/os/DVFSHelper;)V

    goto :goto_0

    .line 1195
    :cond_6
    const-string v0, "kf"

    const-string v1, "kf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1196
    new-instance v0, Landroid/os/DVFSHelper$ModelKF;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelKF;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 1198
    :cond_7
    const-string v0, "ka"

    const-string v1, "kf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1199
    new-instance v0, Landroid/os/DVFSHelper$ModelKA;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelKA;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 1201
    :cond_8
    const-string v0, "kq"

    const-string v1, "kf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1202
    new-instance v0, Landroid/os/DVFSHelper$ModelKQ;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelKQ;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 1204
    :cond_9
    const-string/jumbo v0, "tf"

    const-string v1, "kf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1205
    new-instance v0, Landroid/os/DVFSHelper$ModelTF;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelTF;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 1207
    :cond_a
    const-string/jumbo v0, "sa"

    const-string v1, "kf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1208
    new-instance v0, Landroid/os/DVFSHelper$ModelSA;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelSA;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 1210
    :cond_b
    const-string v0, "clovertrail"

    sget-object v1, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1211
    new-instance v0, Landroid/os/DVFSHelper$ModelSantos10;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelSantos10;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 1213
    :cond_c
    const-string v0, "exynos4"

    sget-object v1, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1214
    new-instance v0, Landroid/os/DVFSHelper$ModelExynos4;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelExynos4;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 1216
    :cond_d
    const-string v0, "kam"

    const-string v1, "kf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1217
    new-instance v0, Landroid/os/DVFSHelper$ModelKAM;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelKAM;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 1219
    :cond_e
    const-string/jumbo v0, "ssrm_kflte_chn"

    const-string v1, "d2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1220
    new-instance v0, Landroid/os/DVFSHelper$ModelD2;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelD2;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 1222
    :cond_f
    const-string v0, "hawaii"

    sget-object v1, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1223
    new-instance v0, Landroid/os/DVFSHelper$ModelHawaii;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelHawaii;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 1225
    :cond_10
    const-string/jumbo v0, "msm8226"

    sget-object v1, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1226
    new-instance v0, Landroid/os/DVFSHelper$ModelMSM8x26;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelMSM8x26;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 1228
    :cond_11
    const-string/jumbo v0, "pxa1088"

    const-string v1, "kf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1229
    new-instance v0, Landroid/os/DVFSHelper$ModelPXA1088;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelPXA1088;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 1231
    :cond_12
    const-string v0, "kmini"

    const-string v1, "kf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string/jumbo v0, "ssrm_kflte_chn"

    const-string v1, "degaslte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1232
    new-instance v0, Landroid/os/DVFSHelper$ModelDegasLTE;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelDegasLTE;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 1234
    :cond_13
    const-string v0, "kmini"

    const-string v1, "kf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1235
    new-instance v0, Landroid/os/DVFSHelper$ModelKMINI;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelKMINI;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 1237
    :cond_14
    const-string v0, "MSM8930AB"

    sget-object v1, Landroid/os/DVFSHelper;->CHIP_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1238
    new-instance v0, Landroid/os/DVFSHelper$Model8930AB;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$Model8930AB;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 1241
    :cond_15
    new-instance v0, Landroid/os/DVFSHelper$ModelJBP;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelJBP;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0
.end method

.method private getRandomNum()I
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Landroid/os/DVFSHelper;->mRandom:Ljava/util/Random;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 680
    sget-boolean v0, Landroid/os/DVFSHelper;->isEngBinary:Z

    if-eqz v0, :cond_0

    .line 681
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :cond_0
    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 1

    .prologue
    .line 291
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 292
    return-void
.end method

.method public acquire(I)V
    .locals 27
    .param p1, "timeout"    # I

    .prologue
    .line 299
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-nez v2, :cond_0

    .line 513
    :goto_0
    return-void

    .line 303
    :cond_0
    const-string v2, "DVFSHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "acquire:: timeout = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", mIsAcquired = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    if-eqz v2, :cond_1

    .line 306
    const-string v2, "DVFSHelper"

    const-string v3, "acquire:: DVFS lock is already acquired. Previous lock will be released first."

    invoke-static {v2, v3}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-virtual/range {p0 .. p0}, Landroid/os/DVFSHelper;->release()V

    .line 311
    :cond_1
    const/16 v21, 0x0

    .line 312
    .local v21, "bundle":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    if-eqz v2, :cond_2

    .line 313
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v21

    .line 316
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/DVFSHelper;->mType:I

    packed-switch v2, :pswitch_data_0

    .line 493
    const-string v2, "DVFSHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "acquire:: the request type doesn\'t implemented yet. mType = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/os/DVFSHelper;->mType:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v2, :cond_4

    .line 498
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v2}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    .line 500
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v2, :cond_5

    .line 501
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v2}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    .line 503
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v2, :cond_6

    .line 504
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v2}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    .line 506
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v2, :cond_7

    .line 507
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v2}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    .line 509
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->fpsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v2, :cond_8

    .line 510
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->fpsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v2}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    .line 512
    :cond_8
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    goto/16 :goto_0

    .line 318
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    if-eqz v2, :cond_3

    .line 319
    const/4 v4, 0x0

    .line 320
    .local v4, "coreNum":I
    const/16 v26, 0x0

    .line 321
    .local v26, "stringCoreNum":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/os/DVFSHelper;->mOption:J

    const-wide/16 v5, 0x4

    cmp-long v2, v2, v5

    if-nez v2, :cond_a

    .line 322
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    const/4 v3, 0x0

    aget v4, v2, v3

    .line 335
    :cond_9
    :goto_2
    if-lez v4, :cond_3

    .line 336
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/4 v3, 0x4

    move/from16 v0, p1

    int-to-long v5, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v2 .. v8}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto :goto_1

    .line 325
    :cond_a
    if-eqz v21, :cond_b

    .line 326
    :try_start_0
    const-string v2, "CORE_NUM"

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v26

    .line 330
    :cond_b
    :goto_3
    if-eqz v26, :cond_9

    .line 331
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_2

    .line 342
    .end local v4    # "coreNum":I
    .end local v26    # "stringCoreNum":Ljava/lang/String;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    if-eqz v2, :cond_3

    .line 343
    const/4 v4, 0x0

    .line 344
    .restart local v4    # "coreNum":I
    const/16 v26, 0x0

    .line 346
    .restart local v26    # "stringCoreNum":Ljava/lang/String;
    if-eqz v21, :cond_c

    .line 347
    :try_start_1
    const-string v2, "CORE_NUM"

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v26

    .line 351
    :cond_c
    :goto_4
    if-eqz v26, :cond_d

    .line 352
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 355
    :cond_d
    if-lez v4, :cond_3

    .line 356
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/4 v3, 0x5

    move/from16 v0, p1

    int-to-long v5, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v2 .. v8}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_1

    .line 362
    .end local v4    # "coreNum":I
    .end local v26    # "stringCoreNum":Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    if-eqz v2, :cond_3

    .line 363
    const/4 v7, -0x1

    .line 364
    .local v7, "freq":I
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/os/DVFSHelper;->mOption:J

    const-wide/16 v5, 0x2

    cmp-long v2, v2, v5

    if-nez v2, :cond_10

    .line 365
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    const/4 v3, 0x0

    aget v7, v2, v3

    .line 373
    :cond_e
    :goto_5
    const-string v2, "ja"

    const-string v3, "kf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const v2, 0x186a00

    if-le v7, v2, :cond_f

    .line 374
    const v2, 0x186a00

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v7

    .line 377
    :cond_f
    const/4 v2, -0x1

    if-eq v7, v2, :cond_3

    .line 378
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/4 v6, 0x6

    move/from16 v0, p1

    int-to-long v8, v0

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v5 .. v11}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_1

    .line 366
    :cond_10
    if-eqz v21, :cond_e

    .line 367
    const-string v2, "CPU"

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 368
    .local v23, "cpuOption":Ljava/lang/String;
    if-eqz v23, :cond_e

    .line 369
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_5

    .line 384
    .end local v7    # "freq":I
    .end local v23    # "cpuOption":Ljava/lang/String;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    if-eqz v2, :cond_3

    .line 385
    const/4 v7, -0x1

    .line 386
    .restart local v7    # "freq":I
    if-eqz v21, :cond_11

    .line 387
    const-string v2, "CPU"

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 388
    .restart local v23    # "cpuOption":Ljava/lang/String;
    if-eqz v23, :cond_11

    .line 389
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 393
    .end local v23    # "cpuOption":Ljava/lang/String;
    :cond_11
    const/4 v2, -0x1

    if-eq v7, v2, :cond_3

    .line 394
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/4 v6, 0x7

    move/from16 v0, p1

    int-to-long v8, v0

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v5 .. v11}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_1

    .line 400
    .end local v7    # "freq":I
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    if-eqz v2, :cond_3

    .line 401
    const/4 v7, -0x1

    .line 402
    .restart local v7    # "freq":I
    if-eqz v21, :cond_12

    .line 403
    const-string v2, "GPU"

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 404
    .local v25, "gpuOption":Ljava/lang/String;
    if-eqz v25, :cond_12

    .line 405
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 409
    .end local v25    # "gpuOption":Ljava/lang/String;
    :cond_12
    const/4 v2, -0x1

    if-eq v7, v2, :cond_3

    .line 410
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/4 v6, 0x1

    move/from16 v0, p1

    int-to-long v8, v0

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v5 .. v11}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_1

    .line 416
    .end local v7    # "freq":I
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    if-eqz v2, :cond_3

    .line 417
    const/4 v7, -0x1

    .line 418
    .restart local v7    # "freq":I
    if-eqz v21, :cond_13

    .line 419
    const-string v2, "GPU"

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 420
    .restart local v25    # "gpuOption":Ljava/lang/String;
    if-eqz v25, :cond_13

    .line 421
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 425
    .end local v25    # "gpuOption":Ljava/lang/String;
    :cond_13
    const/4 v2, -0x1

    if-eq v7, v2, :cond_3

    .line 426
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/16 v6, 0x9

    move/from16 v0, p1

    int-to-long v8, v0

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v5 .. v11}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_1

    .line 432
    .end local v7    # "freq":I
    :pswitch_6
    const/4 v7, -0x1

    .line 434
    .restart local v7    # "freq":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v2, :cond_14

    .line 435
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v2}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 436
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 439
    :cond_14
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/16 v6, 0x8

    move/from16 v0, p1

    int-to-long v8, v0

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v5 .. v11}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 443
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v2, :cond_3

    .line 444
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v2}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    goto/16 :goto_1

    .line 448
    .end local v7    # "freq":I
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    if-eqz v2, :cond_3

    .line 449
    const/4 v10, -0x1

    .line 450
    .local v10, "busMinfreq":I
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/os/DVFSHelper;->mOption:J

    const-wide/16 v5, 0x8

    cmp-long v2, v2, v5

    if-nez v2, :cond_16

    .line 451
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    const/4 v3, 0x0

    aget v10, v2, v3

    .line 458
    :cond_15
    :goto_6
    const/4 v2, -0x1

    if-eq v10, v2, :cond_3

    .line 459
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/16 v9, 0xa

    move/from16 v0, p1

    int-to-long v11, v0

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v8 .. v14}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_1

    .line 452
    :cond_16
    if-eqz v21, :cond_15

    .line 453
    const-string v2, "BUS"

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 454
    .local v22, "busOption":Ljava/lang/String;
    if-eqz v22, :cond_15

    .line 455
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    goto :goto_6

    .line 465
    .end local v10    # "busMinfreq":I
    .end local v22    # "busOption":Ljava/lang/String;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    if-eqz v2, :cond_3

    .line 466
    const/4 v13, -0x1

    .line 467
    .local v13, "busMaxfreq":I
    if-eqz v21, :cond_17

    .line 468
    const-string v2, "BUS"

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 469
    .restart local v22    # "busOption":Ljava/lang/String;
    if-eqz v22, :cond_17

    .line 470
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 473
    .end local v22    # "busOption":Ljava/lang/String;
    :cond_17
    const/4 v2, -0x1

    if-eq v13, v2, :cond_3

    .line 474
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/16 v12, 0xb

    move/from16 v0, p1

    int-to-long v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v11 .. v17}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_1

    .line 480
    .end local v13    # "busMaxfreq":I
    :pswitch_9
    const/16 v16, 0x63

    .line 481
    .local v16, "fpsMax":I
    if-eqz v21, :cond_18

    .line 482
    const-string v2, "FPS"

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 483
    .local v24, "fpsOption":Ljava/lang/String;
    if-eqz v24, :cond_18

    .line 484
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 487
    .end local v24    # "fpsOption":Ljava/lang/String;
    :cond_18
    if-ltz v16, :cond_3

    const/16 v2, 0x63

    move/from16 v0, v16

    if-ge v0, v2, :cond_3

    .line 488
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/4 v15, 0x3

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v14 .. v20}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/os/DVFSHelper;->fpsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_1

    .line 349
    .end local v16    # "fpsMax":I
    .restart local v4    # "coreNum":I
    .restart local v26    # "stringCoreNum":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto/16 :goto_4

    .line 328
    :catch_1
    move-exception v2

    goto/16 :goto_3

    .line 316
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public acquire(Ljava/lang/String;)V
    .locals 2
    .param p1, "actionName"    # Ljava/lang/String;

    .prologue
    .line 280
    iget-object v1, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v1, p1}, Landroid/os/DVFSHelper$Model;->getTimeoutForAction(Ljava/lang/String;)I

    move-result v0

    .line 281
    .local v0, "timeout":I
    if-lez v0, :cond_0

    .line 282
    invoke-virtual {p0, v0}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 284
    :cond_0
    return-void
.end method

.method public addExtraOption(Ljava/lang/String;J)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 575
    iget-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 576
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    .line 578
    :cond_0
    iget-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 579
    return-void
.end method

.method public addExtraOption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 568
    iget-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 569
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    .line 571
    :cond_0
    iget-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 572
    return-void
.end method

.method public addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V
    .locals 6
    .param p1, "actionName"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0xc

    const/16 v4, 0x13

    const/16 v3, 0x10

    .line 586
    iget-object v2, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-nez v2, :cond_1

    .line 675
    :cond_0
    :goto_0
    return-void

    .line 591
    :cond_1
    const-string v2, "ActivityManager_resume"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 592
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v5, :cond_2

    .line 593
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getAMSResumeCPUFreq()I

    move-result v1

    .line 594
    .local v1, "freq":I
    if-lez v1, :cond_0

    .line 595
    const-string v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    .line 597
    .end local v1    # "freq":I
    :cond_2
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v3, :cond_3

    .line 598
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getAMSResumeGPUFreq()I

    move-result v1

    .line 599
    .restart local v1    # "freq":I
    if-lez v1, :cond_0

    .line 600
    const-string v2, "GPU"

    int-to-long v3, v1

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    .line 602
    .end local v1    # "freq":I
    :cond_3
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v4, :cond_4

    .line 603
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getAMSResumeBUSFreq()I

    move-result v1

    .line 604
    .restart local v1    # "freq":I
    if-lez v1, :cond_0

    .line 605
    const-string v2, "BUS"

    int-to-long v3, v1

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    .line 607
    .end local v1    # "freq":I
    :cond_4
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    const/16 v3, 0xe

    if-ne v2, v3, :cond_0

    .line 608
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getAMSResumeCPUCore()I

    move-result v0

    .line 609
    .local v0, "coreNum":I
    if-lez v0, :cond_0

    .line 610
    const-string v2, "CORE_NUM"

    int-to-long v3, v0

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    .line 613
    .end local v0    # "coreNum":I
    :cond_5
    const-string v2, "Gallery_touch"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 614
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getGalleryTouchCPUFreq()I

    move-result v1

    .line 615
    .restart local v1    # "freq":I
    if-lez v1, :cond_0

    .line 616
    const-string v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    .line 618
    .end local v1    # "freq":I
    :cond_6
    const-string v2, "Launcher_touch"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 619
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getLauncherTouchCPUFreq()I

    move-result v1

    .line 620
    .restart local v1    # "freq":I
    if-lez v1, :cond_0

    .line 621
    const-string v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 623
    .end local v1    # "freq":I
    :cond_7
    const-string v2, "ListView_scroll"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 624
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v5, :cond_8

    .line 625
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getListScrollCPUFreq()I

    move-result v1

    .line 626
    .restart local v1    # "freq":I
    if-lez v1, :cond_0

    .line 627
    const-string v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 629
    .end local v1    # "freq":I
    :cond_8
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v3, :cond_9

    .line 630
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getListScrollGPUFreq()I

    move-result v1

    .line 631
    .restart local v1    # "freq":I
    if-lez v1, :cond_0

    .line 632
    const-string v2, "GPU"

    int-to-long v3, v1

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 634
    .end local v1    # "freq":I
    :cond_9
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v4, :cond_0

    .line 635
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getListScrollBUSFreq()I

    move-result v1

    .line 636
    .restart local v1    # "freq":I
    if-lez v1, :cond_0

    .line 637
    const-string v2, "BUS"

    int-to-long v3, v1

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 640
    .end local v1    # "freq":I
    :cond_a
    const-string v2, "PhoneWindowManager_rotation"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 641
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getRotationCPUFreq()I

    move-result v1

    .line 642
    .restart local v1    # "freq":I
    if-lez v1, :cond_0

    .line 643
    const-string v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 645
    .end local v1    # "freq":I
    :cond_b
    const-string v2, "Launcher_homemenu"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 646
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v3, :cond_0

    .line 647
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getLauncherTouchGPUFreq()I

    move-result v1

    .line 648
    .restart local v1    # "freq":I
    if-lez v1, :cond_0

    .line 649
    const-string v2, "GPU"

    int-to-long v3, v1

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 652
    .end local v1    # "freq":I
    :cond_c
    const-string v2, "ShareMusic_groupPlay"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 653
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getShareMusicCPUFreq()I

    move-result v1

    .line 654
    .restart local v1    # "freq":I
    if-lez v1, :cond_0

    .line 655
    const-string v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 657
    .end local v1    # "freq":I
    :cond_d
    const-string v2, "Browser_fling"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 658
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getBrowserFlingCpuFreq()I

    move-result v1

    .line 659
    .restart local v1    # "freq":I
    if-lez v1, :cond_0

    .line 660
    const-string v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 662
    .end local v1    # "freq":I
    :cond_e
    const-string v2, "Application_launch"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 663
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v3, :cond_f

    .line 664
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getAppLaunchGPUFreq()I

    move-result v1

    .line 665
    .restart local v1    # "freq":I
    if-lez v1, :cond_0

    .line 666
    const-string v2, "GPU"

    int-to-long v3, v1

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 668
    .end local v1    # "freq":I
    :cond_f
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v4, :cond_0

    .line 669
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getAppLaunchBUSFreq()I

    move-result v1

    .line 670
    .restart local v1    # "freq":I
    if-lez v1, :cond_0

    .line 671
    const-string v2, "BUS"

    int-to-long v3, v1

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0
.end method

.method public cancelExtraOptions()V
    .locals 1

    .prologue
    .line 582
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    .line 583
    return-void
.end method

.method public getApproximateCPUFrequency(I)I
    .locals 4
    .param p1, "freq"    # I

    .prologue
    const/4 v1, -0x1

    .line 189
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    if-nez v2, :cond_1

    .line 206
    :cond_0
    :goto_0
    return v1

    .line 192
    :cond_1
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    array-length v0, v2

    .line 193
    .local v0, "length":I
    if-lez v0, :cond_0

    .line 197
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    const/4 v3, 0x0

    aget v1, v2, v3

    .line 198
    .local v1, "realFreq":I
    :goto_1
    if-lez v0, :cond_0

    .line 199
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    if-lt v2, p1, :cond_2

    .line 200
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    add-int/lit8 v3, v0, -0x1

    aget v1, v2, v3

    .line 201
    goto :goto_0

    .line 203
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public getApproximateCPUFrequencyByPercentOfMaximum(D)I
    .locals 3
    .param p1, "percent"    # D

    .prologue
    const/4 v1, -0x1

    .line 213
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    if-nez v2, :cond_1

    .line 221
    :cond_0
    :goto_0
    return v1

    .line 216
    :cond_1
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    array-length v0, v2

    .line 217
    .local v0, "length":I
    if-lez v0, :cond_0

    .line 221
    iget-object v1, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-double v1, v1

    mul-double/2addr v1, p1

    double-to-int v1, v1

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v1

    goto :goto_0
.end method

.method public getApproximateCPUFrequencyByPercentOfMaximumForSSRM(D)I
    .locals 3
    .param p1, "percent"    # D

    .prologue
    const/4 v1, -0x1

    .line 252
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    if-nez v2, :cond_1

    .line 260
    :cond_0
    :goto_0
    return v1

    .line 255
    :cond_1
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    array-length v0, v2

    .line 256
    .local v0, "length":I
    if-lez v0, :cond_0

    .line 260
    iget-object v1, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-double v1, v1

    mul-double/2addr v1, p1

    double-to-int v1, v1

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v1

    goto :goto_0
.end method

.method public getApproximateCPUFrequencyForSSRM(I)I
    .locals 4
    .param p1, "freq"    # I

    .prologue
    const/4 v1, -0x1

    .line 228
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    if-nez v2, :cond_1

    .line 245
    :cond_0
    :goto_0
    return v1

    .line 231
    :cond_1
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    array-length v0, v2

    .line 232
    .local v0, "length":I
    if-lez v0, :cond_0

    .line 236
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    const/4 v3, 0x0

    aget v1, v2, v3

    .line 237
    .local v1, "realFreq":I
    :goto_1
    if-lez v0, :cond_0

    .line 238
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    if-lt v2, p1, :cond_2

    .line 239
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    add-int/lit8 v3, v0, -0x1

    aget v1, v2, v3

    .line 240
    goto :goto_0

    .line 242
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public getSupportedBUSFrequency()[I
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    return-object v0
.end method

.method public getSupportedCPUCoreNum()[I
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    return-object v0
.end method

.method public getSupportedCPUFrequency()[I
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    return-object v0
.end method

.method public getSupportedCPUFrequencyForSSRM()[I
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    return-object v0
.end method

.method public getSupportedGPUFrequency()[I
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    return-object v0
.end method

.method public isAquired()Z
    .locals 1

    .prologue
    .line 516
    iget-boolean v0, p0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    return v0
.end method

.method public onAppLaunchEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x3e8

    const/4 v8, 0x0

    const-wide/16 v4, 0x0

    const/16 v7, 0x1f4

    const/16 v6, 0x7d0

    .line 706
    if-nez p2, :cond_1

    .line 802
    :cond_0
    :goto_0
    return-void

    .line 711
    :cond_1
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCameraCPUBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_2

    .line 712
    new-instance v0, Landroid/os/DVFSHelper;

    const-string v2, "LAUNCHER_APP_BOOSTER_CPU"

    const/16 v3, 0xc

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Landroid/os/DVFSHelper;->mCameraCPUBooster:Landroid/os/DVFSHelper;

    .line 713
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCameraCPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mCPUFrequencyTable:[I

    .line 714
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCPUFrequencyTable:[I

    if-eqz v0, :cond_c

    .line 715
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCameraCPUBooster:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    iget-object v2, p0, Landroid/os/DVFSHelper;->mCameraCPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->getSupportedCPUFrequencyForSSRM()[I

    move-result-object v2

    aget v2, v2, v8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 722
    :cond_2
    :goto_1
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCameraCPUCoreNumBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_3

    .line 723
    new-instance v0, Landroid/os/DVFSHelper;

    const-string v2, "LAUNCHER_APP_BOOSTER_CORE"

    const/16 v3, 0xe

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Landroid/os/DVFSHelper;->mCameraCPUCoreNumBooster:Landroid/os/DVFSHelper;

    .line 724
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCameraCPUCoreNumBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mCPUCoreTable:[I

    .line 725
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCPUCoreTable:[I

    if-eqz v0, :cond_d

    .line 726
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCameraCPUCoreNumBooster:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    iget-object v2, p0, Landroid/os/DVFSHelper;->mCPUCoreTable:[I

    aget v2, v2, v8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 733
    :cond_3
    :goto_2
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCameraGPUBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_4

    .line 734
    new-instance v0, Landroid/os/DVFSHelper;

    const-string v2, "LAUNCHER_APP_BOOSTER_GPU"

    const/16 v3, 0x10

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Landroid/os/DVFSHelper;->mCameraGPUBooster:Landroid/os/DVFSHelper;

    .line 735
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCameraGPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mGPUFrequencyTable:[I

    .line 736
    iget-object v0, p0, Landroid/os/DVFSHelper;->mGPUFrequencyTable:[I

    if-eqz v0, :cond_e

    .line 737
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCameraGPUBooster:Landroid/os/DVFSHelper;

    const-string v1, "Application_launch"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 744
    :cond_4
    :goto_3
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCameraBUSBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_5

    .line 745
    new-instance v0, Landroid/os/DVFSHelper;

    const-string v2, "LAUNCHER_APP_BOOSTER_BUS"

    const/16 v3, 0x13

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Landroid/os/DVFSHelper;->mCameraBUSBooster:Landroid/os/DVFSHelper;

    .line 746
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCameraBUSBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedBUSFrequency()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mBUSFrequencyTable:[I

    .line 747
    iget-object v0, p0, Landroid/os/DVFSHelper;->mBUSFrequencyTable:[I

    if-eqz v0, :cond_f

    .line 748
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCameraBUSBooster:Landroid/os/DVFSHelper;

    const-string v1, "Application_launch"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 754
    :cond_5
    :goto_4
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCPUFrequencyTable:[I

    if-eqz v0, :cond_7

    .line 755
    const-string v0, "hf"

    const-string v1, "kf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "ha"

    const-string v1, "kf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "kam"

    const-string v1, "kf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 756
    :cond_6
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCameraCPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0, v7}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 773
    :cond_7
    :goto_5
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCPUCoreTable:[I

    if-eqz v0, :cond_9

    .line 774
    const-string v0, "hf"

    const-string v1, "kf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "ha"

    const-string v1, "kf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "kam"

    const-string v1, "kf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 775
    :cond_8
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCameraCPUCoreNumBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0, v7}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 792
    :cond_9
    :goto_6
    iget-object v0, p0, Landroid/os/DVFSHelper;->mGPUFrequencyTable:[I

    if-eqz v0, :cond_a

    .line 793
    const-string/jumbo v0, "pxa1088"

    const-string v1, "kf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 794
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCameraGPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0, v6}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 797
    :cond_a
    iget-object v0, p0, Landroid/os/DVFSHelper;->mBUSFrequencyTable:[I

    if-eqz v0, :cond_0

    .line 798
    const-string/jumbo v0, "pxa1088"

    const-string v1, "kf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "kmini"

    const-string v1, "kf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 799
    :cond_b
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCameraBUSBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0, v6}, Landroid/os/DVFSHelper;->acquire(I)V

    goto/16 :goto_0

    .line 717
    :cond_c
    const-string v0, "DVFSHelper"

    const-string/jumbo v1, "onAppLaunchEvent:: mCPUFrequencyTable is null"

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 728
    :cond_d
    const-string v0, "DVFSHelper"

    const-string/jumbo v1, "onAppLaunchEvent:: mCPUCoreTable is null"

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 739
    :cond_e
    const-string v0, "DVFSHelper"

    const-string/jumbo v1, "onAppLaunchEvent:: mGPUFrequencyTable is null"

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 750
    :cond_f
    const-string v0, "DVFSHelper"

    const-string/jumbo v1, "onAppLaunchEvent:: mBUSFrequencyTable is null"

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 757
    :cond_10
    const-string v0, "kf"

    const-string v1, "kf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "ka"

    const-string v1, "kf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "kq"

    const-string v1, "kf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 758
    :cond_11
    const-string v0, "com.sec.android.gallery3d"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "com.sec.android.app.camera"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 759
    :cond_12
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCameraCPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0, v6}, Landroid/os/DVFSHelper;->acquire(I)V

    goto/16 :goto_5

    .line 761
    :cond_13
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCameraCPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0, v9}, Landroid/os/DVFSHelper;->acquire(I)V

    goto/16 :goto_5

    .line 763
    :cond_14
    const-string/jumbo v0, "sf"

    const-string v1, "kf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string/jumbo v0, "sa"

    const-string v1, "kf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 764
    :cond_15
    const-string v0, "com.sec.android.gallery3d"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "com.sec.android.app.camera"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 765
    :cond_16
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCameraCPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0, v6}, Landroid/os/DVFSHelper;->acquire(I)V

    goto/16 :goto_5

    .line 767
    :cond_17
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCameraCPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0, v7}, Landroid/os/DVFSHelper;->acquire(I)V

    goto/16 :goto_5

    .line 770
    :cond_18
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCameraCPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0, v6}, Landroid/os/DVFSHelper;->acquire(I)V

    goto/16 :goto_5

    .line 776
    :cond_19
    const-string v0, "kf"

    const-string v1, "kf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "ka"

    const-string v1, "kf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "kq"

    const-string v1, "kf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 777
    :cond_1a
    const-string v0, "com.sec.android.gallery3d"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "com.sec.android.app.camera"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 778
    :cond_1b
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCameraCPUCoreNumBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0, v6}, Landroid/os/DVFSHelper;->acquire(I)V

    goto/16 :goto_6

    .line 780
    :cond_1c
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCameraCPUCoreNumBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0, v9}, Landroid/os/DVFSHelper;->acquire(I)V

    goto/16 :goto_6

    .line 782
    :cond_1d
    const-string/jumbo v0, "sf"

    const-string v1, "kf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string/jumbo v0, "sa"

    const-string v1, "kf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 783
    :cond_1e
    const-string v0, "com.sec.android.gallery3d"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "com.sec.android.app.camera"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 784
    :cond_1f
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCameraCPUCoreNumBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0, v6}, Landroid/os/DVFSHelper;->acquire(I)V

    goto/16 :goto_6

    .line 786
    :cond_20
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCameraCPUCoreNumBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0, v7}, Landroid/os/DVFSHelper;->acquire(I)V

    goto/16 :goto_6

    .line 789
    :cond_21
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCameraCPUCoreNumBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0, v6}, Landroid/os/DVFSHelper;->acquire(I)V

    goto/16 :goto_6
.end method

.method public onWindowRotationEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x7d0

    const/4 v7, 0x0

    .line 811
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    if-nez v3, :cond_0

    .line 812
    new-instance v3, Landroid/os/DVFSHelper;

    const/16 v4, 0xe

    invoke-direct {v3, p1, v4}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    .line 813
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v3}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v1

    .line 814
    .local v1, "coreTable":[I
    if-eqz v1, :cond_8

    .line 815
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    const-string v4, "CORE_NUM"

    aget v5, v1, v7

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 820
    .end local v1    # "coreTable":[I
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    if-eqz v3, :cond_1

    .line 821
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    const/16 v4, 0x1f4

    invoke-virtual {v3, v4}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 824
    :cond_1
    const-string v3, "exynos4"

    sget-object v4, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "hf"

    const-string v4, "kf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "tablet"

    sget-object v4, Landroid/os/DVFSHelper;->DEVICE_TYPE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    const-string/jumbo v3, "pxa1088"

    const-string v4, "kf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 826
    :cond_3
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    if-nez v3, :cond_4

    .line 827
    new-instance v3, Landroid/os/DVFSHelper;

    const/16 v4, 0x10

    invoke-direct {v3, p1, v4}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    .line 828
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v3}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v2

    .line 829
    .local v2, "gpuTable":[I
    if-eqz v2, :cond_b

    .line 830
    const-string v3, "exynos4"

    sget-object v4, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 831
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    const-string v4, "GPU"

    array-length v5, v2

    add-int/lit8 v5, v5, -0x2

    aget v5, v2, v5

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 841
    .end local v2    # "gpuTable":[I
    :cond_4
    :goto_1
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    if-eqz v3, :cond_5

    .line 842
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v3, v8}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 846
    :cond_5
    const-string/jumbo v3, "pxa1088"

    const-string v4, "kf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 847
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationBUSBooster:Landroid/os/DVFSHelper;

    if-nez v3, :cond_6

    .line 848
    new-instance v3, Landroid/os/DVFSHelper;

    const/16 v4, 0x13

    invoke-direct {v3, p1, v4}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Landroid/os/DVFSHelper;->mRotationBUSBooster:Landroid/os/DVFSHelper;

    .line 849
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationBUSBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v3}, Landroid/os/DVFSHelper;->getSupportedBUSFrequency()[I

    move-result-object v0

    .line 850
    .local v0, "busTable":[I
    if-eqz v0, :cond_c

    .line 851
    const-string/jumbo v3, "pxa1088"

    const-string v4, "kf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 852
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationBUSBooster:Landroid/os/DVFSHelper;

    const-string v4, "BUS"

    aget v5, v0, v7

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 858
    .end local v0    # "busTable":[I
    :cond_6
    :goto_2
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationBUSBooster:Landroid/os/DVFSHelper;

    if-eqz v3, :cond_7

    .line 859
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationBUSBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v3, v8}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 862
    :cond_7
    return-void

    .line 817
    .restart local v1    # "coreTable":[I
    :cond_8
    const-string v3, "DVFSHelper"

    const-string/jumbo v4, "onWindowRotationEvent:: coreTable is null"

    invoke-static {v3, v4}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 832
    .end local v1    # "coreTable":[I
    .restart local v2    # "gpuTable":[I
    :cond_9
    const-string/jumbo v3, "pxa1088"

    const-string v4, "kf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 833
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    const-string v4, "GPU"

    aget v5, v2, v7

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_1

    .line 835
    :cond_a
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    const-string v4, "GPU"

    const/4 v5, 0x1

    aget v5, v2, v5

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_1

    .line 838
    :cond_b
    const-string v3, "DVFSHelper"

    const-string/jumbo v4, "onWindowRotationEvent:: gpuTable is null"

    invoke-static {v3, v4}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 855
    .end local v2    # "gpuTable":[I
    .restart local v0    # "busTable":[I
    :cond_c
    const-string v3, "DVFSHelper"

    const-string/jumbo v4, "onWindowRotationEvent:: busTable is null"

    invoke-static {v3, v4}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public release()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 524
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-nez v0, :cond_1

    .line 565
    :cond_0
    :goto_0
    return-void

    .line 528
    :cond_1
    const-string v0, "DVFSHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "release:: mIsAcquired = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    iget-boolean v0, p0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v0, :cond_2

    .line 535
    iget-object v0, p0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 536
    const-string v0, "DVFSHelper"

    const-string/jumbo v1, "release:: cpuRequest is released."

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    iput-object v3, p0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 539
    :cond_2
    iget-object v0, p0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v0, :cond_3

    .line 540
    iget-object v0, p0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 541
    const-string v0, "DVFSHelper"

    const-string/jumbo v1, "release:: cpuNumRequest is released."

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    iput-object v3, p0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 544
    :cond_3
    iget-object v0, p0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v0, :cond_4

    .line 545
    iget-object v0, p0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 546
    const-string v0, "DVFSHelper"

    const-string/jumbo v1, "release:: gpuRequest is released."

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    iput-object v3, p0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 549
    :cond_4
    iget-object v0, p0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v0, :cond_5

    .line 550
    iget-object v0, p0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 551
    const-string v0, "DVFSHelper"

    const-string/jumbo v1, "release:: busRequest is released."

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    iput-object v3, p0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 554
    :cond_5
    iget-object v0, p0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v0, :cond_6

    .line 555
    iget-object v0, p0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 556
    const-string v0, "DVFSHelper"

    const-string/jumbo v1, "release:: mmcRequest is released."

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    iput-object v3, p0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 559
    :cond_6
    iget-object v0, p0, Landroid/os/DVFSHelper;->fpsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v0, :cond_7

    .line 560
    iget-object v0, p0, Landroid/os/DVFSHelper;->fpsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 561
    const-string v0, "DVFSHelper"

    const-string/jumbo v1, "release:: fpsRequest is released."

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    iput-object v3, p0, Landroid/os/DVFSHelper;->fpsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 564
    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    goto/16 :goto_0
.end method
