.class Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$1;
.super Landroid/content/BroadcastReceiver;
.source "RemoteInjectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$1;->this$0:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 139
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 141
    const-string v5, "android.intent.extra.user_handle"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 145
    .local v1, "currentUserId":I
    iget-object v5, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$1;->this$0:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;

    invoke-virtual {v5}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->getOwnerUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 146
    .local v2, "userId":I
    const-string v5, "RemoteInjection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Session started by user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    if-eqz v2, :cond_0

    if-ne v2, v1, :cond_3

    .line 149
    :cond_0
    iget-object v5, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$1;->this$0:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;

    invoke-virtual {v5, v1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteControlAllowed(I)Z

    move-result v5

    if-nez v5, :cond_2

    :goto_0
    # setter for: Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mBlock:Z
    invoke-static {v3}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->access$002(Z)Z

    .line 154
    :goto_1
    iget-object v3, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$1;->this$0:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;

    # getter for: Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mBlock:Z
    invoke-static {}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->access$000()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->blockRemoteScreen(Z)Z

    .line 156
    .end local v1    # "currentUserId":I
    .end local v2    # "userId":I
    :cond_1
    return-void

    .restart local v1    # "currentUserId":I
    .restart local v2    # "userId":I
    :cond_2
    move v3, v4

    .line 149
    goto :goto_0

    .line 151
    :cond_3
    # setter for: Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mBlock:Z
    invoke-static {v3}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->access$002(Z)Z

    goto :goto_1
.end method
