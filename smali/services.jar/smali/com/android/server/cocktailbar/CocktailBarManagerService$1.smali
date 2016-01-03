.class Lcom/android/server/cocktailbar/CocktailBarManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "CocktailBarManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/CocktailBarManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerService;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 160
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 163
    const-string v5, "android.intent.extra.user_handle"

    const/16 v6, -0x2710

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 164
    .local v4, "userId":I
    if-ltz v4, :cond_1

    .line 165
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    # invokes: Lcom/android/server/cocktailbar/CocktailBarManagerService;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    invoke-static {v5, v4}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$000(Lcom/android/server/cocktailbar/CocktailBarManagerService;I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendInitialBroadcasts()V

    .line 188
    .end local v4    # "userId":I
    :cond_0
    :goto_0
    return-void

    .line 167
    .restart local v4    # "userId":I
    :cond_1
    const-string v5, "CocktailBarManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Incorrect user handle supplied in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 169
    .end local v4    # "userId":I
    :cond_2
    const-string v5, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 170
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCocktailBarServices:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$100(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 171
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCocktailBarServices:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$100(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .line 172
    .local v3, "service":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    invoke-virtual {v3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->onConfigurationChanged()V

    .line 170
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 175
    .end local v1    # "i":I
    .end local v3    # "service":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    :cond_3
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result v2

    .line 176
    .local v2, "sendingUser":I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_4

    .line 177
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCocktailBarServices:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$100(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 178
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCocktailBarServices:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$100(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .line 179
    .restart local v3    # "service":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    invoke-virtual {v3, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->onBroadcastReceived(Landroid/content/Intent;)V

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 182
    .end local v1    # "i":I
    .end local v3    # "service":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    :cond_4
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCocktailBarServices:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$100(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .line 183
    .restart local v3    # "service":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    if-eqz v3, :cond_0

    .line 184
    invoke-virtual {v3, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->onBroadcastReceived(Landroid/content/Intent;)V

    goto :goto_0
.end method
