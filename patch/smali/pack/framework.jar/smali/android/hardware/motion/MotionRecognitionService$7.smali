.class Landroid/hardware/motion/MotionRecognitionService$7;
.super Ljava/lang/Object;
.source "MotionRecognitionService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/motion/MotionRecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/motion/MotionRecognitionService;


# direct methods
.method constructor <init>(Landroid/hardware/motion/MotionRecognitionService;)V
    .locals 0

    .prologue
    .line 1602
    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionService$7;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 1605
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 1609
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 1611
    .local v1, "sensor":Landroid/hardware/Sensor;
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-int v0, v2

    .line 1612
    .local v0, "nextRotation":I
    packed-switch v0, :pswitch_data_0

    .line 1620
    :goto_0
    const-string v2, "MotionRecognitionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " .updateOrientation : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionService$7;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget v4, v4, Landroid/hardware/motion/MotionRecognitionService;->mRotate:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    return-void

    .line 1613
    :pswitch_0
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService$7;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    const/16 v3, 0x1c

    iput v3, v2, Landroid/hardware/motion/MotionRecognitionService;->mRotate:I

    goto :goto_0

    .line 1614
    :pswitch_1
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService$7;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    const/16 v3, 0x1d

    iput v3, v2, Landroid/hardware/motion/MotionRecognitionService;->mRotate:I

    goto :goto_0

    .line 1615
    :pswitch_2
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService$7;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    const/16 v3, 0x1e

    iput v3, v2, Landroid/hardware/motion/MotionRecognitionService;->mRotate:I

    goto :goto_0

    .line 1616
    :pswitch_3
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService$7;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    const/16 v3, 0x1f

    iput v3, v2, Landroid/hardware/motion/MotionRecognitionService;->mRotate:I

    goto :goto_0

    .line 1612
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
