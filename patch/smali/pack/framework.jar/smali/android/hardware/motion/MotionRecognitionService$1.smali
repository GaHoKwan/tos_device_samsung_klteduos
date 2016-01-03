.class Landroid/hardware/motion/MotionRecognitionService$1;
.super Landroid/content/BroadcastReceiver;
.source "MotionRecognitionService.java"


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
    .line 192
    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 195
    const-string v10, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 196
    iget-object v10, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    const/4 v11, 0x1

    iput-boolean v11, v10, Landroid/hardware/motion/MotionRecognitionService;->mScreenOn:Z

    .line 197
    iget-object v10, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v10}, Landroid/hardware/motion/MotionRecognitionService;->access$000(Landroid/hardware/motion/MotionRecognitionService;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-eqz v10, :cond_0

    .line 199
    const-string v10, "MotionRecognitionService"

    const-string v11, " Cancel reactive alert mode "

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v10, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mReactiveAlert:Landroid/hardware/motion/MotionRecognitionReactiveAlert;
    invoke-static {v10}, Landroid/hardware/motion/MotionRecognitionService;->access$100(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionReactiveAlert;

    move-result-object v10

    invoke-virtual {v10}, Landroid/hardware/motion/MotionRecognitionReactiveAlert;->disableAccINT()V

    .line 201
    iget-object v10, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # invokes: Landroid/hardware/motion/MotionRecognitionService;->initializeMotionEngine()V
    invoke-static {v10}, Landroid/hardware/motion/MotionRecognitionService;->access$200(Landroid/hardware/motion/MotionRecognitionService;)V

    .line 202
    iget-object v10, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->refPanningDEnabled:I
    invoke-static {v10}, Landroid/hardware/motion/MotionRecognitionService;->access$300(Landroid/hardware/motion/MotionRecognitionService;)I

    move-result v10

    if-lez v10, :cond_0

    iget-object v10, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mbEnabledPanning:Z
    invoke-static {v10}, Landroid/hardware/motion/MotionRecognitionService;->access$400(Landroid/hardware/motion/MotionRecognitionService;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 203
    iget-object v10, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v11, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    const/16 v12, 0x132

    # invokes: Landroid/hardware/motion/MotionRecognitionService;->controlMotionSensor(I)Z
    invoke-static {v11, v12}, Landroid/hardware/motion/MotionRecognitionService;->access$500(Landroid/hardware/motion/MotionRecognitionService;I)Z

    move-result v11

    # setter for: Landroid/hardware/motion/MotionRecognitionService;->mbEnabledPanning:Z
    invoke-static {v10, v11}, Landroid/hardware/motion/MotionRecognitionService;->access$402(Landroid/hardware/motion/MotionRecognitionService;Z)Z

    .line 206
    :cond_0
    iget-object v10, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mFlipCover:Landroid/hardware/motion/MotionRecognitionFlipCover;
    invoke-static {v10}, Landroid/hardware/motion/MotionRecognitionService;->access$600(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionFlipCover;

    move-result-object v10

    invoke-virtual {v10}, Landroid/hardware/motion/MotionRecognitionFlipCover;->enableFlipCover()V

    .line 355
    :cond_1
    :goto_0
    return-void

    .line 207
    :cond_2
    const-string v10, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 208
    iget-object v10, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    const/4 v11, 0x0

    iput-boolean v11, v10, Landroid/hardware/motion/MotionRecognitionService;->mScreenOn:Z

    .line 209
    const/4 v0, 0x0

    .line 210
    .local v0, "benabledSmartrelay":Z
    iget-object v10, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v10}, Landroid/hardware/motion/MotionRecognitionService;->access$000(Landroid/hardware/motion/MotionRecognitionService;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/motion/MotionRecognitionService$Listener;

    .line 211
    .local v7, "listener":Landroid/hardware/motion/MotionRecognitionService$Listener;
    iget v10, v7, Landroid/hardware/motion/MotionRecognitionService$Listener;->mMotionEvents:I

    const/high16 v11, 0x100000

    and-int/2addr v10, v11

    if-eqz v10, :cond_3

    .line 212
    const-string v10, "MotionRecognitionService"

    const-string v11, "  SMART_RELAY is activated"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const/4 v0, 0x1

    .line 217
    .end local v7    # "listener":Landroid/hardware/motion/MotionRecognitionService$Listener;
    :cond_4
    if-nez v0, :cond_5

    iget-object v10, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # invokes: Landroid/hardware/motion/MotionRecognitionService;->finalizeMotionEngine()V
    invoke-static {v10}, Landroid/hardware/motion/MotionRecognitionService;->access$700(Landroid/hardware/motion/MotionRecognitionService;)V

    .line 218
    :cond_5
    iget-object v10, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mFlipCover:Landroid/hardware/motion/MotionRecognitionFlipCover;
    invoke-static {v10}, Landroid/hardware/motion/MotionRecognitionService;->access$600(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionFlipCover;

    move-result-object v10

    invoke-virtual {v10}, Landroid/hardware/motion/MotionRecognitionFlipCover;->disableFlipCover()V

    goto :goto_0

    .line 220
    .end local v0    # "benabledSmartrelay":Z
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_6
    const-string v10, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 221
    const-string v10, "MotionRecognitionService"

    const-string v11, "  mReceiver.onReceive : ACTION_BOOT_COMPLETED"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v10, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    const/4 v11, 0x1

    iput-boolean v11, v10, Landroid/hardware/motion/MotionRecognitionService;->mBootCompeleted:Z

    .line 223
    iget-object v10, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    const/4 v11, 0x1

    iput-boolean v11, v10, Landroid/hardware/motion/MotionRecognitionService;->mScreenOn:Z

    goto :goto_0

    .line 224
    :cond_7
    const-string v10, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    const-string v10, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    const-string v10, "android.intent.action.BATTERY_LOW"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 227
    :cond_8
    iget-object v10, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    # setter for: Landroid/hardware/motion/MotionRecognitionService;->mPowerTime:J
    invoke-static {v10, v11, v12}, Landroid/hardware/motion/MotionRecognitionService;->access$802(Landroid/hardware/motion/MotionRecognitionService;J)J

    goto/16 :goto_0

    .line 229
    :cond_9
    const-string v10, "com.sec.motions.MOTIONS_SETTINGS_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 230
    const-string v10, "isEnable"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 231
    .local v6, "isEnable":Z
    const-string v10, "MotionRecognitionService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  mReceiver.onReceive : ACTION_MOTIONS_SETTINGS_CHANGED - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    if-eqz v6, :cond_b

    .line 234
    iget-object v10, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mMotionSettings:Landroid/hardware/motion/MotionRecognitionSettings;
    invoke-static {v10}, Landroid/hardware/motion/MotionRecognitionService;->access$900(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionSettings;

    move-result-object v10

    if-eqz v10, :cond_a

    iget-object v10, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mMotionSettings:Landroid/hardware/motion/MotionRecognitionSettings;
    invoke-static {v10}, Landroid/hardware/motion/MotionRecognitionService;->access$900(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionSettings;

    move-result-object v10

    invoke-virtual {v10}, Landroid/hardware/motion/MotionRecognitionSettings;->updateCurrentSettings()V

    .line 235
    :cond_a
    iget-object v10, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v10}, Landroid/hardware/motion/MotionRecognitionService;->access$000(Landroid/hardware/motion/MotionRecognitionService;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_1

    .line 236
    iget-object v10, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # invokes: Landroid/hardware/motion/MotionRecognitionService;->initializeMotionEngine()V
    invoke-static {v10}, Landroid/hardware/motion/MotionRecognitionService;->access$200(Landroid/hardware/motion/MotionRecognitionService;)V

    .line 237
    iget-object v10, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->refPanningDEnabled:I
    invoke-static {v10}, Landroid/hardware/motion/MotionRecognitionService;->access$300(Landroid/hardware/motion/MotionRecognitionService;)I

    move-result v10

    if-lez v10, :cond_1

    iget-object v10, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mbEnabledPanning:Z
    invoke-static {v10}, Landroid/hardware/motion/MotionRecognitionService;->access$400(Landroid/hardware/motion/MotionRecognitionService;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 238
    iget-object v10, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v11, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    const/16 v12, 0x132

    # invokes: Landroid/hardware/motion/MotionRecognitionService;->controlMotionSensor(I)Z
    invoke-static {v11, v12}, Landroid/hardware/motion/MotionRecognitionService;->access$500(Landroid/hardware/motion/MotionRecognitionService;I)Z

    move-result v11

    # setter for: Landroid/hardware/motion/MotionRecognitionService;->mbEnabledPanning:Z
    invoke-static {v10, v11}, Landroid/hardware/motion/MotionRecognitionService;->access$402(Landroid/hardware/motion/MotionRecognitionService;Z)Z

    goto/16 :goto_0

    .line 241
    :cond_b
    iget-object v10, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mregisteredEvents_open:I
    invoke-static {v10}, Landroid/hardware/motion/MotionRecognitionService;->access$1000(Landroid/hardware/motion/MotionRecognitionService;)I

    move-result v10

    if-nez v10, :cond_1

    .line 242
    iget-object v10, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # invokes: Landroid/hardware/motion/MotionRecognitionService;->finalizeMotionEngine()V
    invoke-static {v10}, Landroid/hardware/motion/MotionRecognitionService;->access$700(Landroid/hardware/motion/MotionRecognitionService;)V

    goto/16 :goto_0

    .line 244
    .end local v6    # "isEnable":Z
    :cond_c
    const-string v10, "android.intent.action.USER_PRESENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 245
    const-string v10, "MotionRecognitionService"

    const-string v11, "  mReceiver.onReceive : ACTION_USER_PRESENT  :: UNLOCK SCREEN"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 247
    :cond_d
    const-string v10, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 248
    const-string v10, "MotionRecognitionService"

    const-string v11, "  mReceiver.onReceive :VOLUME_CHANGED "

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/4 v10, 0x1

    new-array v2, v10, [I

    .local v2, "data":[I
    const/4 v10, 0x0

    const/4 v11, 0x1

    aput v11, v2, v10

    goto/16 :goto_0

    .line 252
    .end local v2    # "data":[I
    :cond_e
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    const-string v11, "android.intent.action.GRIPSENSOR_CP"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 253
    const-string v10, "cmd"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, "callAction":Ljava/lang/String;
    const-string v10, "MotionRecognitionService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  mReceiver.onReceive :CALL_ACTION_CHANGED : GRIPSENSOR_CP, callAction = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const-string v10, "on"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 256
    iget-object v10, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mGripMotion:Landroid/hardware/motion/MotionRecognitionGrip;
    invoke-static {v10}, Landroid/hardware/motion/MotionRecognitionService;->access$1100(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionGrip;

    move-result-object v10

    invoke-virtual {v10}, Landroid/hardware/motion/MotionRecognitionGrip;->enableGripSensor()V

    goto/16 :goto_0

    .line 259
    :cond_f
    iget-object v10, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mGripMotion:Landroid/hardware/motion/MotionRecognitionGrip;
    invoke-static {v10}, Landroid/hardware/motion/MotionRecognitionService;->access$1100(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionGrip;

    move-result-object v10

    invoke-virtual {v10}, Landroid/hardware/motion/MotionRecognitionGrip;->disableGripSensor()V

    goto/16 :goto_0

    .line 262
    .end local v1    # "callAction":Ljava/lang/String;
    :cond_10
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    const-string v11, "android.intent.action.FLATMOTION_CP"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 263
    const-string v10, "cmd"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 264
    .restart local v1    # "callAction":Ljava/lang/String;
    const-string v10, "MotionRecognitionService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  mReceiver.onReceive :CALL_ACTION_CHANGED : FLATMOTION_CP, callAction = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const-string v10, "on"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 266
    iget-object v10, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mGripMotion:Landroid/hardware/motion/MotionRecognitionGrip;
    invoke-static {v10}, Landroid/hardware/motion/MotionRecognitionService;->access$1100(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionGrip;

    move-result-object v10

    invoke-virtual {v10}, Landroid/hardware/motion/MotionRecognitionGrip;->enableFlatMotion()V

    .line 267
    const-string v10, "MotionRecognitionService"

    const-string v11, "  .enableFlatMotion"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 270
    :cond_11
    iget-object v10, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mGripMotion:Landroid/hardware/motion/MotionRecognitionGrip;
    invoke-static {v10}, Landroid/hardware/motion/MotionRecognitionService;->access$1100(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionGrip;

    move-result-object v10

    invoke-virtual {v10}, Landroid/hardware/motion/MotionRecognitionGrip;->disableFlatMotion()V

    goto/16 :goto_0

    .line 273
    .end local v1    # "callAction":Ljava/lang/String;
    :cond_12
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    const-string v11, "android.intent.action.TURNOVERMOTION_CP"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 274
    const-string v10, "cmd"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 275
    .restart local v1    # "callAction":Ljava/lang/String;
    const-string v10, "MotionRecognitionService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  mReceiver.onReceive :CALL_ACTION_CHANGED : TURNOVERMOTION_CP, callAction = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const-string v10, "on"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 277
    iget-object v10, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mGripMotion:Landroid/hardware/motion/MotionRecognitionGrip;
    invoke-static {v10}, Landroid/hardware/motion/MotionRecognitionService;->access$1100(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionGrip;

    move-result-object v10

    invoke-virtual {v10}, Landroid/hardware/motion/MotionRecognitionGrip;->enableTurnOverMotion()V

    .line 278
    const-string v10, "MotionRecognitionService"

    const-string v11, "  .enableTurnOverMotion"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 281
    :cond_13
    iget-object v10, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mGripMotion:Landroid/hardware/motion/MotionRecognitionGrip;
    invoke-static {v10}, Landroid/hardware/motion/MotionRecognitionService;->access$1100(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionGrip;

    move-result-object v10

    invoke-virtual {v10}, Landroid/hardware/motion/MotionRecognitionGrip;->disableTurnOverMotion()V

    goto/16 :goto_0

    .line 284
    .end local v1    # "callAction":Ljava/lang/String;
    :cond_14
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    const-string v11, "android.intent.action.PROXIMITY_CP"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 285
    const-string v10, "cmd"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 286
    .restart local v1    # "callAction":Ljava/lang/String;
    const-string v10, "MotionRecognitionService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  mReceiver.onReceive :CALL_ACTION_CHANGED : PROXIMITY_CP, callAction = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const-string v10, "on"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 288
    iget-object v10, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mGripMotion:Landroid/hardware/motion/MotionRecognitionGrip;
    invoke-static {v10}, Landroid/hardware/motion/MotionRecognitionService;->access$1100(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionGrip;

    move-result-object v10

    invoke-virtual {v10}, Landroid/hardware/motion/MotionRecognitionGrip;->enableProxSensor()V

    goto/16 :goto_0

    .line 291
    :cond_15
    iget-object v10, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mGripMotion:Landroid/hardware/motion/MotionRecognitionGrip;
    invoke-static {v10}, Landroid/hardware/motion/MotionRecognitionService;->access$1100(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionGrip;

    move-result-object v10

    invoke-virtual {v10}, Landroid/hardware/motion/MotionRecognitionGrip;->disableProxSensor()V

    goto/16 :goto_0

    .line 294
    .end local v1    # "callAction":Ljava/lang/String;
    :cond_16
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    const-string v11, "android.intent.action.SARDEVICE_CP"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 295
    const-string v10, "cmd"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 296
    .restart local v1    # "callAction":Ljava/lang/String;
    const-string v10, "device"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 297
    .local v3, "deviceID":I
    const-string v10, "MotionRecognitionService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  mReceiver.onReceive :CALL_ACTION_CHANGED : SARDEVICE_CP, callAction = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " deviceID = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const/4 v9, 0x0

    .local v9, "type":I
    :goto_1
    const/4 v10, 0x5

    if-ge v9, v10, :cond_1

    .line 300
    const/4 v10, 0x1

    shl-int v8, v10, v9

    .line 301
    .local v8, "sar_type":I
    and-int v10, v8, v3

    if-eqz v10, :cond_17

    .line 303
    packed-switch v9, :pswitch_data_0

    .line 337
    :pswitch_0
    const-string v10, "MotionRecognitionService"

    const-string v11, "DEFAULT  "

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_17
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 305
    :pswitch_1
    const-string v10, "MotionRecognitionService"

    const-string v11, "SAR_GRIP "

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const-string v10, "on"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_18

    .line 307
    iget-object v10, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mSARmotion:Landroid/hardware/motion/MotionRecognitionSAR;
    invoke-static {v10}, Landroid/hardware/motion/MotionRecognitionService;->access$1200(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionSAR;

    move-result-object v10

    invoke-virtual {v10}, Landroid/hardware/motion/MotionRecognitionSAR;->enableGripSensor()V

    goto :goto_2

    .line 309
    :cond_18
    iget-object v10, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mSARmotion:Landroid/hardware/motion/MotionRecognitionSAR;
    invoke-static {v10}, Landroid/hardware/motion/MotionRecognitionService;->access$1200(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionSAR;

    move-result-object v10

    invoke-virtual {v10}, Landroid/hardware/motion/MotionRecognitionSAR;->disableGripSensor()V

    goto :goto_2

    .line 313
    :pswitch_2
    const-string v10, "MotionRecognitionService"

    const-string v11, "SAR_PROX "

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const-string v10, "on"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_19

    .line 315
    iget-object v10, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mSARmotion:Landroid/hardware/motion/MotionRecognitionSAR;
    invoke-static {v10}, Landroid/hardware/motion/MotionRecognitionService;->access$1200(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionSAR;

    move-result-object v10

    invoke-virtual {v10}, Landroid/hardware/motion/MotionRecognitionSAR;->enableProxSensor()V

    goto :goto_2

    .line 317
    :cond_19
    iget-object v10, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mSARmotion:Landroid/hardware/motion/MotionRecognitionSAR;
    invoke-static {v10}, Landroid/hardware/motion/MotionRecognitionService;->access$1200(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionSAR;

    move-result-object v10

    invoke-virtual {v10}, Landroid/hardware/motion/MotionRecognitionSAR;->disableProxSensor()V

    goto :goto_2

    .line 321
    :pswitch_3
    const-string v10, "MotionRecognitionService"

    const-string v11, "SAR_FLAT "

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const-string v10, "on"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a

    .line 323
    iget-object v10, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mSARmotion:Landroid/hardware/motion/MotionRecognitionSAR;
    invoke-static {v10}, Landroid/hardware/motion/MotionRecognitionService;->access$1200(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionSAR;

    move-result-object v10

    invoke-virtual {v10}, Landroid/hardware/motion/MotionRecognitionSAR;->enableFlatMotion()V

    goto :goto_2

    .line 325
    :cond_1a
    iget-object v10, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mSARmotion:Landroid/hardware/motion/MotionRecognitionSAR;
    invoke-static {v10}, Landroid/hardware/motion/MotionRecognitionService;->access$1200(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionSAR;

    move-result-object v10

    invoke-virtual {v10}, Landroid/hardware/motion/MotionRecognitionSAR;->disableFlatMotion()V

    goto :goto_2

    .line 329
    :pswitch_4
    const-string v10, "MotionRecognitionService"

    const-string v11, "SAR_TURNOVER "

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const-string v10, "on"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1b

    .line 331
    iget-object v10, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mSARmotion:Landroid/hardware/motion/MotionRecognitionSAR;
    invoke-static {v10}, Landroid/hardware/motion/MotionRecognitionService;->access$1200(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionSAR;

    move-result-object v10

    invoke-virtual {v10}, Landroid/hardware/motion/MotionRecognitionSAR;->enableTurnOverMotion()V

    goto/16 :goto_2

    .line 333
    :cond_1b
    iget-object v10, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mSARmotion:Landroid/hardware/motion/MotionRecognitionSAR;
    invoke-static {v10}, Landroid/hardware/motion/MotionRecognitionService;->access$1200(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionSAR;

    move-result-object v10

    invoke-virtual {v10}, Landroid/hardware/motion/MotionRecognitionSAR;->disableTurnOverMotion()V

    goto/16 :goto_2

    .line 343
    .end local v1    # "callAction":Ljava/lang/String;
    .end local v3    # "deviceID":I
    .end local v8    # "sar_type":I
    .end local v9    # "type":I
    :cond_1c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    const-string v11, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 344
    const-string v10, "android.intent.extra.DOCK_STATE"

    const/4 v11, -0x1

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 345
    .local v4, "extra":I
    const-string v10, "MotionRecognitionService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onReceive() getIntExtra "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    if-eqz v4, :cond_1d

    .line 347
    iget-object v10, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mSmartFace:Landroid/hardware/motion/MotionRecognitionSmartFace;
    invoke-static {v10}, Landroid/hardware/motion/MotionRecognitionService;->access$1300(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionSmartFace;

    move-result-object v10

    sget-object v11, Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;->DOCKINGSTATION:Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;

    invoke-virtual {v10, v11}, Landroid/hardware/motion/MotionRecognitionSmartFace;->disableFaceDetector(Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;)V

    .line 348
    const-string v10, "MotionRecognitionService"

    const-string v11, "SERVICETYPE_MOTION stop"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 351
    :cond_1d
    iget-object v10, p0, Landroid/hardware/motion/MotionRecognitionService$1;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mSmartFace:Landroid/hardware/motion/MotionRecognitionSmartFace;
    invoke-static {v10}, Landroid/hardware/motion/MotionRecognitionService;->access$1300(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionSmartFace;

    move-result-object v10

    sget-object v11, Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;->DOCKINGSTATION:Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;

    invoke-virtual {v10, v11}, Landroid/hardware/motion/MotionRecognitionSmartFace;->enableFaceDetector(Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;)V

    .line 352
    const-string v10, "MotionRecognitionService"

    const-string v11, "SERVICETYPE_MOTION start"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 303
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
