.class Landroid/view/VolumePanel$1;
.super Landroid/content/BroadcastReceiver;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/VolumePanel;


# direct methods
.method constructor <init>(Landroid/view/VolumePanel;)V
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Landroid/view/VolumePanel$1;->this$0:Landroid/view/VolumePanel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const v9, 0x1090127

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 434
    # getter for: Landroid/view/VolumePanel;->LOGD:Z
    invoke-static {}, Landroid/view/VolumePanel;->access$300()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 435
    const-string v6, "VolumePanel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mCoverBroadcastReceiver: onReceive() : intent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 439
    .local v0, "action":Ljava/lang/String;
    const-string v6, "com.samsung.cover.OPEN"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 440
    const-string v6, "coverOpen"

    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 441
    .local v3, "isCoverOpen":Z
    if-nez v3, :cond_7

    .line 442
    # getter for: Landroid/view/VolumePanel;->LOGD:Z
    invoke-static {}, Landroid/view/VolumePanel;->access$300()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 443
    const-string v6, "VolumePanel"

    const-string v7, "mCoverBroadcastReceiver: onReceive() : isCoverOpen = false, cover is closed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_1
    iget-object v6, p0, Landroid/view/VolumePanel$1;->this$0:Landroid/view/VolumePanel;

    # getter for: Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;
    invoke-static {v6}, Landroid/view/VolumePanel;->access$400(Landroid/view/VolumePanel;)Landroid/app/Dialog;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/view/VolumePanel$1;->this$0:Landroid/view/VolumePanel;

    # getter for: Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;
    invoke-static {v6}, Landroid/view/VolumePanel;->access$400(Landroid/view/VolumePanel;)Landroid/app/Dialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Dialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 446
    # getter for: Landroid/view/VolumePanel;->LOGD:Z
    invoke-static {}, Landroid/view/VolumePanel;->access$300()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 447
    const-string v6, "VolumePanel"

    const-string v7, "mCoverBroadcastReceiver: onReceive() : Call mDialog.dismiss() #1"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_2
    iget-object v6, p0, Landroid/view/VolumePanel$1;->this$0:Landroid/view/VolumePanel;

    # getter for: Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;
    invoke-static {v6}, Landroid/view/VolumePanel;->access$400(Landroid/view/VolumePanel;)Landroid/app/Dialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Dialog;->dismiss()V

    .line 450
    :cond_3
    # getter for: Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;
    invoke-static {}, Landroid/view/VolumePanel;->access$100()Landroid/app/AlertDialog;

    move-result-object v6

    if-eqz v6, :cond_5

    # getter for: Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;
    invoke-static {}, Landroid/view/VolumePanel;->access$100()Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Dialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 451
    # getter for: Landroid/view/VolumePanel;->LOGD:Z
    invoke-static {}, Landroid/view/VolumePanel;->access$300()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 452
    const-string v6, "VolumePanel"

    const-string v7, "mCoverBroadcastReceiver: onReceive() : Call sConfirmSafeVolumeDialog.dismiss() #1-1"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_4
    # getter for: Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;
    invoke-static {}, Landroid/view/VolumePanel;->access$100()Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Dialog;->dismiss()V

    .line 479
    .end local v3    # "isCoverOpen":Z
    :cond_5
    :goto_0
    const-string v6, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 480
    const-string/jumbo v6, "state"

    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v1, :cond_c

    .line 481
    .local v1, "bPluged":Z
    :goto_1
    const-string v6, "VolumePanel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mCoverBroadcastReceiver: EarJack bPluged : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    if-nez v1, :cond_6

    .line 484
    const-string v6, "VolumePanel"

    const-string v7, "EarJack plug-out, remove waring popup on the s view cover"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget-object v6, p0, Landroid/view/VolumePanel$1;->this$0:Landroid/view/VolumePanel;

    # getter for: Landroid/view/VolumePanel;->mIsShowingSCoverWarning:Z
    invoke-static {v6}, Landroid/view/VolumePanel;->access$500(Landroid/view/VolumePanel;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 486
    new-instance v4, Landroid/widget/RemoteViews;

    iget-object v6, p0, Landroid/view/VolumePanel$1;->this$0:Landroid/view/VolumePanel;

    iget-object v6, v6, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 487
    .local v4, "remoteViews":Landroid/widget/RemoteViews;
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.samsung.cover.REMOTEVIEWS_UPDATE"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 488
    .local v2, "coverIntent":Landroid/content/Intent;
    const-string/jumbo v6, "visibility"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 489
    const-string/jumbo v6, "type"

    const-string/jumbo v7, "volume"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    const-string/jumbo v6, "remote"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 491
    iget-object v6, p0, Landroid/view/VolumePanel$1;->this$0:Landroid/view/VolumePanel;

    iget-object v6, v6, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 492
    iget-object v6, p0, Landroid/view/VolumePanel$1;->this$0:Landroid/view/VolumePanel;

    # setter for: Landroid/view/VolumePanel;->mIsShowingSCoverWarning:Z
    invoke-static {v6, v5}, Landroid/view/VolumePanel;->access$502(Landroid/view/VolumePanel;Z)Z

    .line 496
    .end local v1    # "bPluged":Z
    .end local v2    # "coverIntent":Landroid/content/Intent;
    .end local v4    # "remoteViews":Landroid/widget/RemoteViews;
    :cond_6
    return-void

    .line 456
    .restart local v3    # "isCoverOpen":Z
    :cond_7
    # getter for: Landroid/view/VolumePanel;->LOGD:Z
    invoke-static {}, Landroid/view/VolumePanel;->access$300()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 457
    const-string v6, "VolumePanel"

    const-string v7, "mCoverBroadcastReceiver: onReceive() : isCoverOpen = true, cover is opened"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_8
    iget-object v6, p0, Landroid/view/VolumePanel$1;->this$0:Landroid/view/VolumePanel;

    # getter for: Landroid/view/VolumePanel;->mIsShowingSCoverWarning:Z
    invoke-static {v6}, Landroid/view/VolumePanel;->access$500(Landroid/view/VolumePanel;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 460
    # getter for: Landroid/view/VolumePanel;->LOGD:Z
    invoke-static {}, Landroid/view/VolumePanel;->access$300()Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v6, "VolumePanel"

    const-string v7, "mCoverBroadcastReceiver: remove warning popup on the s view cover"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_9
    new-instance v4, Landroid/widget/RemoteViews;

    iget-object v6, p0, Landroid/view/VolumePanel$1;->this$0:Landroid/view/VolumePanel;

    iget-object v6, v6, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 462
    .restart local v4    # "remoteViews":Landroid/widget/RemoteViews;
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.samsung.cover.REMOTEVIEWS_UPDATE"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 463
    .restart local v2    # "coverIntent":Landroid/content/Intent;
    const-string/jumbo v6, "visibility"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 464
    const-string/jumbo v6, "type"

    const-string/jumbo v7, "volume"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 465
    const-string/jumbo v6, "remote"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 466
    iget-object v6, p0, Landroid/view/VolumePanel$1;->this$0:Landroid/view/VolumePanel;

    iget-object v6, v6, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 467
    iget-object v6, p0, Landroid/view/VolumePanel$1;->this$0:Landroid/view/VolumePanel;

    # setter for: Landroid/view/VolumePanel;->mIsShowingSCoverWarning:Z
    invoke-static {v6, v5}, Landroid/view/VolumePanel;->access$502(Landroid/view/VolumePanel;Z)Z

    .line 470
    .end local v2    # "coverIntent":Landroid/content/Intent;
    .end local v4    # "remoteViews":Landroid/widget/RemoteViews;
    :cond_a
    iget-object v6, p0, Landroid/view/VolumePanel$1;->this$0:Landroid/view/VolumePanel;

    # getter for: Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;
    invoke-static {v6}, Landroid/view/VolumePanel;->access$400(Landroid/view/VolumePanel;)Landroid/app/Dialog;

    move-result-object v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Landroid/view/VolumePanel$1;->this$0:Landroid/view/VolumePanel;

    # getter for: Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;
    invoke-static {v6}, Landroid/view/VolumePanel;->access$400(Landroid/view/VolumePanel;)Landroid/app/Dialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Dialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 471
    # getter for: Landroid/view/VolumePanel;->LOGD:Z
    invoke-static {}, Landroid/view/VolumePanel;->access$300()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 472
    const-string v6, "VolumePanel"

    const-string v7, "mCoverBroadcastReceiver: onReceive() : Call mDialog.dismiss() #2"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_b
    iget-object v6, p0, Landroid/view/VolumePanel$1;->this$0:Landroid/view/VolumePanel;

    # getter for: Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;
    invoke-static {v6}, Landroid/view/VolumePanel;->access$400(Landroid/view/VolumePanel;)Landroid/app/Dialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_0

    .end local v3    # "isCoverOpen":Z
    :cond_c
    move v1, v5

    .line 480
    goto/16 :goto_1
.end method
