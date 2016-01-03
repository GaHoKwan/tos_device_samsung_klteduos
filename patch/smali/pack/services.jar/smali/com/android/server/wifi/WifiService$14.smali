.class Lcom/android/server/wifi/WifiService$14;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiService;)V
    .locals 0

    .prologue
    .line 3360
    iput-object p1, p0, Lcom/android/server/wifi/WifiService$14;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0xe

    const/4 v7, 0x0

    .line 3363
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3364
    .local v0, "action":Ljava/lang/String;
    const-string v6, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3365
    # getter for: Lcom/android/server/wifi/WifiService;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3366
    const-string v6, "WifiService"

    const-string v7, "ACTION_SCREEN_ON"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3374
    :cond_0
    iget-object v6, p0, Lcom/android/server/wifi/WifiService$14;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;
    invoke-static {v6}, Lcom/android/server/wifi/WifiService;->access$500(Lcom/android/server/wifi/WifiService;)Lcom/android/server/wifi/WifiController;

    move-result-object v6

    const v7, 0x26002

    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 3431
    :cond_1
    :goto_0
    return-void

    .line 3376
    :cond_2
    const-string v6, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3377
    iget-object v6, p0, Lcom/android/server/wifi/WifiService$14;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;
    invoke-static {v6}, Lcom/android/server/wifi/WifiService;->access$500(Lcom/android/server/wifi/WifiService;)Lcom/android/server/wifi/WifiController;

    move-result-object v6

    const v7, 0x2600c

    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 3378
    :cond_3
    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 3379
    # getter for: Lcom/android/server/wifi/WifiService;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3380
    const-string v6, "WifiService"

    const-string v7, "ACTION_SCREEN_OFF"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3385
    :cond_4
    iget-object v6, p0, Lcom/android/server/wifi/WifiService$14;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;
    invoke-static {v6}, Lcom/android/server/wifi/WifiService;->access$500(Lcom/android/server/wifi/WifiService;)Lcom/android/server/wifi/WifiController;

    move-result-object v6

    const v7, 0x26003

    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 3386
    :cond_5
    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3387
    const-string v6, "plugged"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 3388
    .local v4, "pluggedType":I
    iget-object v6, p0, Lcom/android/server/wifi/WifiService$14;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;
    invoke-static {v6}, Lcom/android/server/wifi/WifiService;->access$500(Lcom/android/server/wifi/WifiService;)Lcom/android/server/wifi/WifiController;

    move-result-object v6

    const v8, 0x26004

    invoke-virtual {v6, v8, v4, v7, v9}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_0

    .line 3389
    .end local v4    # "pluggedType":I
    :cond_6
    const-string v6, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 3390
    const-string v6, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 3392
    .local v5, "state":I
    iget-object v6, p0, Lcom/android/server/wifi/WifiService$14;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v6, v6, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v6, v5}, Landroid/net/wifi/WifiStateMachine;->sendBluetoothAdapterStateChange(I)V

    goto :goto_0

    .line 3393
    .end local v5    # "state":I
    :cond_7
    const-string v6, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 3394
    const-string v6, "phoneinECMState"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 3395
    .local v2, "emergencyMode":Z
    iget-object v6, p0, Lcom/android/server/wifi/WifiService$14;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;
    invoke-static {v6}, Lcom/android/server/wifi/WifiService;->access$500(Lcom/android/server/wifi/WifiService;)Lcom/android/server/wifi/WifiController;

    move-result-object v8

    const v9, 0x26001

    if-eqz v2, :cond_8

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v8, v9, v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(III)V

    goto/16 :goto_0

    :cond_8
    move v6, v7

    goto :goto_1

    .line 3396
    .end local v2    # "emergencyMode":Z
    :cond_9
    const-string v6, "android.provider.Telephony.SMS_CB_WIFI_RECEIVED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 3402
    const-string v6, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 3403
    const-string/jumbo v6, "wifi_state"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 3404
    .local v1, "apState":I
    if-ne v1, v8, :cond_1

    .line 3405
    iget-object v6, p0, Lcom/android/server/wifi/WifiService$14;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;
    invoke-static {v6}, Lcom/android/server/wifi/WifiService;->access$500(Lcom/android/server/wifi/WifiService;)Lcom/android/server/wifi/WifiController;

    move-result-object v6

    const v8, 0x2600a

    invoke-virtual {v6, v8, v7, v7, v9}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 3406
    .end local v1    # "apState":I
    :cond_a
    const-string v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3407
    const-string/jumbo v6, "ss"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3408
    .local v3, "iccState":Ljava/lang/String;
    const-string v6, "WifiService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sim state changed : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3409
    const-string v6, "IMSI"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3410
    iget-object v6, p0, Lcom/android/server/wifi/WifiService$14;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v6, v6, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v6}, Landroid/net/wifi/WifiStateMachine;->reloadSIMState()V

    goto/16 :goto_0
.end method
