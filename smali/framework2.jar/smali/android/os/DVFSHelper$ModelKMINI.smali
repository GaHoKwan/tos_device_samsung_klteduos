.class Landroid/os/DVFSHelper$ModelKMINI;
.super Landroid/os/DVFSHelper$ModelJBP;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelKMINI"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .locals 2

    .prologue
    const v1, 0x61a80

    .line 1158
    iput-object p1, p0, Landroid/os/DVFSHelper$ModelKMINI;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelJBP;-><init>(Landroid/os/DVFSHelper;)V

    .line 1159
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/DVFSHelper$Model;->LAUNCHER_TOUCH_ARM_FREQ:I

    .line 1160
    const v0, 0xf4240

    iput v0, p0, Landroid/os/DVFSHelper$Model;->LIST_SCROLL_ARM_FREQ:I

    .line 1161
    const v0, 0x155cc0

    iput v0, p0, Landroid/os/DVFSHelper$Model;->AMS_RESUME_ARM_FREQ:I

    .line 1162
    iput v1, p0, Landroid/os/DVFSHelper$Model;->AMS_RESUME_BUS_FREQ:I

    .line 1163
    iput v1, p0, Landroid/os/DVFSHelper$Model;->APP_LAUNCH_BUS_FREQ:I

    .line 1164
    return-void
.end method
