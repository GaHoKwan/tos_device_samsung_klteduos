.class Landroid/hardware/motion/MotionRecognitionService$2;
.super Landroid/hardware/motion/MotionRecognitionReactiveAlert;
.source "MotionRecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/motion/MotionRecognitionService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/motion/MotionRecognitionService;


# direct methods
.method constructor <init>(Landroid/hardware/motion/MotionRecognitionService;Landroid/content/Context;Z)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Z

    .prologue
    .line 390
    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    invoke-direct {p0, p2, p3}, Landroid/hardware/motion/MotionRecognitionReactiveAlert;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public sendMotionReactiveAlert(I)V
    .locals 2
    .param p1, "motionevent"    # I

    .prologue
    .line 393
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mEventPool:Landroid/hardware/motion/MotionRecognitionService$EventPool;
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionService;->access$1400(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionService$EventPool;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/motion/MotionRecognitionService$EventPool;->obtain()Landroid/hardware/motion/MREvent;

    move-result-object v0

    .line 394
    .local v0, "motionEvent":Landroid/hardware/motion/MREvent;
    invoke-virtual {v0, p1}, Landroid/hardware/motion/MREvent;->setMotion(I)V

    .line 395
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # invokes: Landroid/hardware/motion/MotionRecognitionService;->sendMotionEvent(I)V
    invoke-static {v1, p1}, Landroid/hardware/motion/MotionRecognitionService;->access$1500(Landroid/hardware/motion/MotionRecognitionService;I)V

    .line 396
    return-void
.end method
