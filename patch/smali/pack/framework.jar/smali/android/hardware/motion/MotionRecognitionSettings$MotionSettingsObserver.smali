.class final Landroid/hardware/motion/MotionRecognitionSettings$MotionSettingsObserver;
.super Landroid/database/ContentObserver;
.source "MotionRecognitionSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/motion/MotionRecognitionSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MotionSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/motion/MotionRecognitionSettings;


# direct methods
.method public constructor <init>(Landroid/hardware/motion/MotionRecognitionSettings;Landroid/os/Handler;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 234
    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionSettings$MotionSettingsObserver;->this$0:Landroid/hardware/motion/MotionRecognitionSettings;

    .line 235
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 236
    const/4 v0, 0x0

    # setter for: Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentEnabledMotions:I
    invoke-static {p1, v0}, Landroid/hardware/motion/MotionRecognitionSettings;->access$002(Landroid/hardware/motion/MotionRecognitionSettings;I)I

    .line 237
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 241
    const/4 v0, 0x0

    .line 247
    .local v0, "motion_sensors":I
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionSettings$MotionSettingsObserver;->this$0:Landroid/hardware/motion/MotionRecognitionSettings;

    invoke-virtual {v1}, Landroid/hardware/motion/MotionRecognitionSettings;->updateCurrentSettings()V

    .line 250
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionSettings$MotionSettingsObserver;->this$0:Landroid/hardware/motion/MotionRecognitionSettings;

    invoke-virtual {v1}, Landroid/hardware/motion/MotionRecognitionSettings;->getUsedSensorForEvents()I

    move-result v0

    .line 252
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionSettings$MotionSettingsObserver;->this$0:Landroid/hardware/motion/MotionRecognitionSettings;

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionSettings$MotionSettingsObserver;->this$0:Landroid/hardware/motion/MotionRecognitionSettings;

    # getter for: Landroid/hardware/motion/MotionRecognitionSettings;->mCurrentEnabledMotions:I
    invoke-static {v2}, Landroid/hardware/motion/MotionRecognitionSettings;->access$000(Landroid/hardware/motion/MotionRecognitionSettings;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/hardware/motion/MotionRecognitionSettings;->onChangeMotionSettings(II)V

    .line 254
    return-void
.end method
