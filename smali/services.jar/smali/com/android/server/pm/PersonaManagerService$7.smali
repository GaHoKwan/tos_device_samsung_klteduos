.class Lcom/android/server/pm/PersonaManagerService$7;
.super Landroid/content/BroadcastReceiver;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PersonaManagerService;)V
    .locals 0

    .prologue
    .line 5108
    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 5111
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 5113
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5114
    const-string v4, "android.intent.extra.user_handle"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 5115
    .local v1, "currentUserId":I
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v1}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 5116
    const-string/jumbo v4, "sys.knox.store"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5117
    const-string v4, "PersonaManagerService"

    const-string v5, "onReceive USER_SWITCHED it is not knox container"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5122
    :goto_0
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive USER_SWITCHED in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5124
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->setKnoxAppsComponentSetting(Landroid/content/Context;I)V
    invoke-static {v4, p1, v1}, Lcom/android/server/pm/PersonaManagerService;->access$600(Lcom/android/server/pm/PersonaManagerService;Landroid/content/Context;I)V

    .line 5141
    .end local v1    # "currentUserId":I
    :cond_0
    :goto_1
    return-void

    .line 5119
    .restart local v1    # "currentUserId":I
    :cond_1
    const-string/jumbo v4, "sys.knox.store"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5120
    const-string v4, "PersonaManagerService"

    const-string v5, "onReceive USER_SWITCHED it is knox container"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5126
    .end local v1    # "currentUserId":I
    :cond_2
    const-string v4, "com.sec.knox.container.INTENT_KNOX_ALARM_TIMEOUT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5127
    const-string v4, "PersonaManagerService"

    const-string v5, "INTENT_ACTION_PASSWORD_TIMEOUT_NOTIFICATION onReceive"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5128
    const-string v4, "personaid"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 5129
    .local v3, "personaId":I
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v4

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 5130
    .local v2, "msg":Landroid/os/Message;
    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 5131
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 5132
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "personaId":I
    :cond_3
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 5133
    const-string v4, "PersonaManagerService"

    const-string v5, "ACTION_SCREEN_OFF onReceive"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5134
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v4

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 5135
    .restart local v2    # "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 5136
    .end local v2    # "msg":Landroid/os/Message;
    :cond_4
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5137
    const-string v4, "PersonaManagerService"

    const-string v5, "ACTION_SCREEN_ON onReceive"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5138
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v4

    const/16 v5, 0x13

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 5139
    .restart local v2    # "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1
.end method
