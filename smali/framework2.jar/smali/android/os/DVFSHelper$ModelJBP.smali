.class Landroid/os/DVFSHelper$ModelJBP;
.super Landroid/os/DVFSHelper$Model;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelJBP"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .locals 3

    .prologue
    const v2, 0x16e360

    const/4 v1, -0x1

    .line 957
    iput-object p1, p0, Landroid/os/DVFSHelper$ModelJBP;->this$0:Landroid/os/DVFSHelper;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/DVFSHelper$Model;-><init>(Landroid/os/DVFSHelper;Landroid/os/DVFSHelper$1;)V

    .line 958
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/os/DVFSHelper$Model;->LAUNCHER_TOUCH_BOOST_TIMEOUT:I

    .line 959
    iput v2, p0, Landroid/os/DVFSHelper$Model;->GALLERY_TOUCH_ARM_FREQ:I

    .line 960
    iput v2, p0, Landroid/os/DVFSHelper$Model;->LAUNCHER_TOUCH_ARM_FREQ:I

    .line 961
    iput v1, p0, Landroid/os/DVFSHelper$Model;->LAUNCHER_TOUCH_GPU_FREQ:I

    .line 962
    const v0, 0x124f80

    iput v0, p0, Landroid/os/DVFSHelper$Model;->GROUP_PLAY_ARM_FREQ:I

    .line 963
    const v0, 0xc3500

    iput v0, p0, Landroid/os/DVFSHelper$Model;->LIST_SCROLL_ARM_FREQ:I

    .line 964
    iput v1, p0, Landroid/os/DVFSHelper$Model;->LIST_SCROLL_GPU_FREQ:I

    .line 965
    iput v1, p0, Landroid/os/DVFSHelper$Model;->LIST_SCROLL_BUS_FREQ:I

    .line 966
    const/4 v0, 0x2

    sput v0, Landroid/os/DVFSHelper;->LIST_SCROLL_BOOSTER_CORE_NUM:I

    .line 967
    const v0, 0x118c30

    iput v0, p0, Landroid/os/DVFSHelper$Model;->AMS_RESUME_ARM_FREQ:I

    .line 968
    iput v1, p0, Landroid/os/DVFSHelper$Model;->AMS_RESUME_GPU_FREQ:I

    .line 969
    iput v1, p0, Landroid/os/DVFSHelper$Model;->AMS_RESUME_BUS_FREQ:I

    .line 970
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/DVFSHelper$Model;->AMS_RESUME_CPU_CORE:I

    .line 971
    const/16 v0, 0x12c

    sput v0, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    .line 972
    iput v1, p0, Landroid/os/DVFSHelper$Model;->APP_LAUNCH_GPU_FREQ:I

    .line 973
    iput v1, p0, Landroid/os/DVFSHelper$Model;->APP_LAUNCH_BUS_FREQ:I

    .line 974
    iput v1, p0, Landroid/os/DVFSHelper$Model;->BROWSER_FLING_ARM_FREQ:I

    .line 975
    const/16 v0, 0x7d0

    sput v0, Landroid/os/DVFSHelper;->PWM_ROTATION_BOOST_TIMEOUT:I

    .line 976
    return-void
.end method
