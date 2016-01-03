.class Lcom/android/server/ConnectivityService$EmergencyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EmergencyReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;)V
    .locals 0

    .prologue
    .line 7471
    iput-object p1, p0, Lcom/android/server/ConnectivityService$EmergencyReceiver;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 7474
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 7475
    .local v0, "action":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/ConnectivityService$EmergencyReceiver;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$6100(Lcom/android/server/ConnectivityService;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/ConnectivityService$EmergencyReceiver;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mEmergencyHandler:Lcom/android/server/ConnectivityService$EmergencyHandler;
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$6200(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$EmergencyHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/ConnectivityService$EmergencyReceiver;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$6100(Lcom/android/server/ConnectivityService;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 7503
    :cond_0
    :goto_0
    return-void

    .line 7479
    :cond_1
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7480
    iget-object v2, p0, Lcom/android/server/ConnectivityService$EmergencyReceiver;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->routeTableFlush(Z)V
    invoke-static {v2, v4}, Lcom/android/server/ConnectivityService;->access$6300(Lcom/android/server/ConnectivityService;Z)V

    .line 7502
    :cond_2
    :goto_1
    const-string v2, "ConnectivityService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive: action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7481
    :cond_3
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 7482
    iget-object v2, p0, Lcom/android/server/ConnectivityService$EmergencyReceiver;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->routeTableFlush(Z)V
    invoke-static {v2, v5}, Lcom/android/server/ConnectivityService;->access$6300(Lcom/android/server/ConnectivityService;Z)V

    goto :goto_1

    .line 7483
    :cond_4
    const-string v2, "jp.co.nttdocomo.lcsapp.ACTION_STATUS_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7484
    const-string/jumbo v2, "status"

    const/4 v3, 0x2

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 7485
    .local v1, "status":I
    if-nez v1, :cond_5

    .line 7486
    iget-object v2, p0, Lcom/android/server/ConnectivityService$EmergencyReceiver;->this$0:Lcom/android/server/ConnectivityService;

    const-string v3, "LCSAPP_TERMINATED"

    # invokes: Lcom/android/server/ConnectivityService;->removeAllMessage(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/ConnectivityService;->access$6400(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 7487
    iget-object v2, p0, Lcom/android/server/ConnectivityService$EmergencyReceiver;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mEmergencyHandler:Lcom/android/server/ConnectivityService$EmergencyHandler;
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$6200(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$EmergencyHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ConnectivityService$EmergencyReceiver;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mEmergencyHandler:Lcom/android/server/ConnectivityService$EmergencyHandler;
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$6200(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$EmergencyHandler;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 7490
    const-string v2, "ConnectivityService"

    const-string v3, "Send Message TERMINATE TIMEOUT(60000)"

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 7491
    :cond_5
    if-ne v1, v5, :cond_6

    .line 7492
    iget-object v2, p0, Lcom/android/server/ConnectivityService$EmergencyReceiver;->this$0:Lcom/android/server/ConnectivityService;

    const-string v3, "LCSAPP_START"

    # invokes: Lcom/android/server/ConnectivityService;->removeAllMessage(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/ConnectivityService;->access$6400(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 7493
    iget-object v2, p0, Lcom/android/server/ConnectivityService$EmergencyReceiver;->this$0:Lcom/android/server/ConnectivityService;

    const-string v3, "LCSAPP_START"

    # invokes: Lcom/android/server/ConnectivityService;->emergencyOpenDataPath(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/ConnectivityService;->access$6500(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 7494
    iget-object v2, p0, Lcom/android/server/ConnectivityService$EmergencyReceiver;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mEmergencyHandler:Lcom/android/server/ConnectivityService$EmergencyHandler;
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$6200(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$EmergencyHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ConnectivityService$EmergencyReceiver;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mEmergencyHandler:Lcom/android/server/ConnectivityService$EmergencyHandler;
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$6200(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$EmergencyHandler;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/32 v4, 0x927c0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 7497
    const-string v2, "ConnectivityService"

    const-string v3, "Send Message MAX TIMEOUT(600000)"

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 7499
    :cond_6
    const-string v2, "ConnectivityService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lscapp sent wrong data. status : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
