.class Landroid/os/DVFSHelper$ModelJA;
.super Landroid/os/DVFSHelper$ModelJBP;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelJA"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .locals 3

    .prologue
    const v2, 0x13d620

    const/16 v1, 0x10a

    .line 980
    iput-object p1, p0, Landroid/os/DVFSHelper$ModelJA;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelJBP;-><init>(Landroid/os/DVFSHelper;)V

    .line 981
    const/16 v0, 0xc8

    iput v0, p0, Landroid/os/DVFSHelper$Model;->LAUNCHER_TOUCH_BOOST_TIMEOUT:I

    .line 982
    iput v2, p0, Landroid/os/DVFSHelper$Model;->GALLERY_TOUCH_ARM_FREQ:I

    .line 983
    iput v2, p0, Landroid/os/DVFSHelper$Model;->LAUNCHER_TOUCH_ARM_FREQ:I

    .line 984
    iput v1, p0, Landroid/os/DVFSHelper$Model;->LAUNCHER_TOUCH_GPU_FREQ:I

    .line 985
    const v0, 0x927c0

    iput v0, p0, Landroid/os/DVFSHelper$Model;->GROUP_PLAY_ARM_FREQ:I

    .line 986
    iput v1, p0, Landroid/os/DVFSHelper$Model;->AMS_RESUME_GPU_FREQ:I

    .line 987
    return-void
.end method
