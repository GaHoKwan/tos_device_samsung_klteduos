.class Lcom/android/server/enterprise/security/SecurityPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "SecurityPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/security/SecurityPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/security/SecurityPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/security/SecurityPolicy;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy$1;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 199
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "action":Ljava/lang/String;
    const-string v9, "android.intent.extra.user_handle"

    const/4 v10, -0x1

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 202
    .local v8, "userId":I
    :try_start_0
    const-string v9, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 204
    iget-object v9, p0, Lcom/android/server/enterprise/security/SecurityPolicy$1;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    # invokes: Lcom/android/server/enterprise/security/SecurityPolicy;->getService()Landroid/os/PersonaManager;
    invoke-static {v9}, Lcom/android/server/enterprise/security/SecurityPolicy;->access$000(Lcom/android/server/enterprise/security/SecurityPolicy;)Landroid/os/PersonaManager;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    iget-object v9, p0, Lcom/android/server/enterprise/security/SecurityPolicy$1;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    # invokes: Lcom/android/server/enterprise/security/SecurityPolicy;->getService()Landroid/os/PersonaManager;
    invoke-static {v9}, Lcom/android/server/enterprise/security/SecurityPolicy;->access$000(Lcom/android/server/enterprise/security/SecurityPolicy;)Landroid/os/PersonaManager;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/os/PersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v7

    .line 208
    .local v7, "personaList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v7, :cond_3

    .line 209
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PersonaInfo;

    .line 210
    .local v3, "info":Landroid/content/pm/PersonaInfo;
    iget v6, v3, Landroid/content/pm/PersonaInfo;->id:I

    .line 211
    .local v6, "personaId":I
    iget-object v9, p0, Lcom/android/server/enterprise/security/SecurityPolicy$1;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    iget-object v9, v9, Lcom/android/server/enterprise/security/SecurityPolicy;->mPersonaObservers:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_2

    .line 212
    new-instance v5, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;

    iget-object v9, p0, Lcom/android/server/enterprise/security/SecurityPolicy$1;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    invoke-direct {v5, v9, v6}, Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;-><init>(Lcom/android/server/enterprise/security/SecurityPolicy;I)V

    .line 213
    .local v5, "observer":Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;
    iget-object v9, p0, Lcom/android/server/enterprise/security/SecurityPolicy$1;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    # invokes: Lcom/android/server/enterprise/security/SecurityPolicy;->getService()Landroid/os/PersonaManager;
    invoke-static {v9}, Lcom/android/server/enterprise/security/SecurityPolicy;->access$000(Lcom/android/server/enterprise/security/SecurityPolicy;)Landroid/os/PersonaManager;

    move-result-object v9

    invoke-virtual {v9, v6, v5}, Landroid/os/PersonaManager;->registerObserver(ILandroid/content/pm/IPersonaObserver;)V

    .line 214
    iget-object v9, p0, Lcom/android/server/enterprise/security/SecurityPolicy$1;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    iget-object v9, v9, Lcom/android/server/enterprise/security/SecurityPolicy;->mPersonaObservers:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    .end local v5    # "observer":Lcom/android/server/enterprise/security/SecurityPolicy$PersonaObserver;
    :cond_2
    # getter for: Lcom/android/server/enterprise/security/SecurityPolicy;->mBannerMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/security/SecurityPolicy;->access$100()Ljava/util/Map;

    move-result-object v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 243
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "info":Landroid/content/pm/PersonaInfo;
    .end local v6    # "personaId":I
    .end local v7    # "personaList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :catch_0
    move-exception v1

    .line 244
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 221
    .end local v1    # "e":Ljava/lang/SecurityException;
    .restart local v7    # "personaList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_3
    :try_start_1
    iget-object v9, p0, Lcom/android/server/enterprise/security/SecurityPolicy$1;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    invoke-virtual {v9, v8}, Lcom/android/server/enterprise/security/SecurityPolicy;->isRebootBannerEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 222
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 223
    .local v4, "intentBanner":Landroid/content/Intent;
    const-string v9, "com.samsung.android.mdm"

    const-string v10, "com.samsung.android.mdm.DodBanner"

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    iget-object v9, p0, Lcom/android/server/enterprise/security/SecurityPolicy$1;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    # getter for: Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/enterprise/security/SecurityPolicy;->access$200(Lcom/android/server/enterprise/security/SecurityPolicy;)Landroid/content/Context;

    move-result-object v9

    new-instance v10, Landroid/os/UserHandle;

    invoke-direct {v10, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v9, v4, v10}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 226
    if-nez v8, :cond_0

    .line 227
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 229
    const-string v9, "SecurityPolicy"

    const-string v10, "Saving Device safe mode to true in generic table"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v9, p0, Lcom/android/server/enterprise/security/SecurityPolicy$1;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    const/4 v10, 0x1

    # invokes: Lcom/android/server/enterprise/security/SecurityPolicy;->saveDeviceBootMode(Z)Z
    invoke-static {v9, v10}, Lcom/android/server/enterprise/security/SecurityPolicy;->access$300(Lcom/android/server/enterprise/security/SecurityPolicy;Z)Z

    goto/16 :goto_0

    .line 232
    :cond_4
    iget-object v9, p0, Lcom/android/server/enterprise/security/SecurityPolicy$1;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    # invokes: Lcom/android/server/enterprise/security/SecurityPolicy;->isLastBootInSafeMode()Z
    invoke-static {v9}, Lcom/android/server/enterprise/security/SecurityPolicy;->access$400(Lcom/android/server/enterprise/security/SecurityPolicy;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 234
    const-string v9, "SecurityPolicy"

    const-string v10, "Sending broadcast: edm.intent.action.LAST_BOOT_SAFE_MODE"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    new-instance v9, Landroid/content/Intent;

    const-string v10, "edm.intent.action.LAST_BOOT_SAFE_MODE"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 237
    iget-object v9, p0, Lcom/android/server/enterprise/security/SecurityPolicy$1;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    const/4 v10, 0x0

    # invokes: Lcom/android/server/enterprise/security/SecurityPolicy;->saveDeviceBootMode(Z)Z
    invoke-static {v9, v10}, Lcom/android/server/enterprise/security/SecurityPolicy;->access$300(Lcom/android/server/enterprise/security/SecurityPolicy;Z)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
