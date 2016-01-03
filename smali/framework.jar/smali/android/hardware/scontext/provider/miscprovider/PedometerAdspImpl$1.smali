.class Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$1;
.super Ljava/lang/Object;
.source "PedometerAdspImpl.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;


# direct methods
.method constructor <init>(Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$1;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 289
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 294
    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/16 v3, 0x13

    if-ne v2, v3, :cond_2

    .line 295
    const/4 v0, 0x0

    .line 296
    .local v0, "isBatchMode":Z
    const/4 v1, 0x0

    .line 297
    .local v1, "isFinalBatchData":Z
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/16 v3, 0xa

    aget v2, v2, v3

    float-to-int v2, v2

    if-ne v2, v4, :cond_0

    .line 298
    const/4 v0, 0x1

    .line 299
    :cond_0
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/16 v3, 0xb

    aget v2, v2, v3

    float-to-int v2, v2

    if-ne v2, v4, :cond_1

    .line 300
    const/4 v1, 0x1

    .line 302
    :cond_1
    if-eqz v0, :cond_3

    .line 303
    iget-object v2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$1;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;

    # getter for: Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mEventArrayList:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->access$000(Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 304
    iget-object v2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$1;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;

    # getter for: Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mEventArrayList:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->access$000(Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    if-eqz v1, :cond_2

    .line 306
    iget-object v2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$1;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;

    # getter for: Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v2}, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->access$200(Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$1;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;

    iget-object v4, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$1;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;

    # getter for: Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mEventArrayList:Ljava/util/ArrayList;
    invoke-static {v4}, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->access$000(Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;)Ljava/util/ArrayList;

    move-result-object v4

    # invokes: Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->parseEvent(Ljava/util/ArrayList;)Landroid/os/Bundle;
    invoke-static {v3, v4}, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->access$100(Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {v2, v5, v3}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    .line 308
    iget-object v2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$1;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    # setter for: Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mEventArrayList:Ljava/util/ArrayList;
    invoke-static {v2, v3}, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->access$002(Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 315
    .end local v0    # "isBatchMode":Z
    .end local v1    # "isFinalBatchData":Z
    :cond_2
    :goto_0
    return-void

    .line 312
    .restart local v0    # "isBatchMode":Z
    .restart local v1    # "isFinalBatchData":Z
    :cond_3
    iget-object v2, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$1;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;

    # getter for: Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v2}, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->access$200(Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl$1;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;

    # invokes: Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->parseEvent(Landroid/hardware/SensorEvent;)Landroid/os/Bundle;
    invoke-static {v3, p1}, Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;->access$300(Landroid/hardware/scontext/provider/miscprovider/PedometerAdspImpl;Landroid/hardware/SensorEvent;)Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {v2, v5, v3}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto :goto_0
.end method
