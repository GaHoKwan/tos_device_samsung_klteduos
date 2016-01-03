.class Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
.super Landroid/os/Handler;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersonaHandler"
.end annotation


# static fields
.field private static final HANDLER_TAG:Ljava/lang/String; = "PersonaManagerServiceHandler"

.field public static final WAKE_LOCK_FLAG:Ljava/lang/String; = "flag"

.field public static final WAKE_LOCK_PACKAGE:Ljava/lang/String; = "package"

.field public static final WAKE_LOCK_PID:Ljava/lang/String; = "pid"

.field public static final WAKE_LOCK_TYPE:Ljava/lang/String; = "type"

.field public static final WAKE_LOCK_UID:Ljava/lang/String; = "uid"


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PersonaManagerService;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2895
    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 2896
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2897
    const-string v0, "PersonaHandler"

    # invokes: Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->access$100(Ljava/lang/String;)I

    .line 2899
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 76
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2902
    const-string v70, "PersonaHandler"

    # invokes: Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static/range {v70 .. v70}, Lcom/android/server/pm/PersonaManagerService;->access$100(Ljava/lang/String;)I

    .line 2903
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v70, v0

    packed-switch v70, :pswitch_data_0

    .line 3353
    :cond_0
    :goto_0
    :pswitch_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v70, v0

    move/from16 v0, v70

    and-int/lit16 v0, v0, 0x1388

    move/from16 v70, v0

    const/16 v71, 0x1388

    move/from16 v0, v70

    move/from16 v1, v71

    if-ne v0, v1, :cond_1

    .line 3355
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v70, v0

    move/from16 v0, v70

    add-int/lit16 v0, v0, -0x1388

    move/from16 v42, v0

    .line 3361
    .local v42, "personaId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mHandlerCacheManager:Lcom/android/server/pm/HandlerCacheManager;
    invoke-static/range {v70 .. v70}, Lcom/android/server/pm/PersonaManagerService;->access$3000(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/HandlerCacheManager;

    move-result-object v70

    if-eqz v70, :cond_1

    .line 3362
    const-string v70, "PersonaManagerServiceHandler"

    const-string v71, "setPersonaState mHandlerCacheManager is not null & onSessionExpired called."

    invoke-static/range {v70 .. v71}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mHandlerCacheManager:Lcom/android/server/pm/HandlerCacheManager;
    invoke-static/range {v70 .. v70}, Lcom/android/server/pm/PersonaManagerService;->access$3000(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/HandlerCacheManager;

    move-result-object v70

    move-object/from16 v0, v70

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/server/pm/HandlerCacheManager;->onSessionExpired(I)V

    .line 3366
    .end local v42    # "personaId":I
    :cond_1
    :goto_1
    return-void

    .line 2906
    :pswitch_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    .line 2907
    .local v18, "event":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mTimerMap:Ljava/util/HashMap;
    invoke-static/range {v70 .. v70}, Lcom/android/server/pm/PersonaManagerService;->access$1000(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v71

    monitor-enter v71

    .line 2908
    if-eqz v18, :cond_3

    .line 2909
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    const/16 v72, 0x1

    move-object/from16 v0, v70

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v47

    .line 2910
    .local v47, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-interface/range {v47 .. v47}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v70

    if-eqz v70, :cond_3

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/content/pm/PersonaInfo;

    .line 2911
    .local v38, "pInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v38, :cond_2

    .line 2912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mTimerMap:Ljava/util/HashMap;
    invoke-static/range {v70 .. v70}, Lcom/android/server/pm/PersonaManagerService;->access$1000(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v70

    move-object/from16 v0, v38

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v72, v0

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    move-object/from16 v0, v70

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    .line 2913
    .local v8, "b":Ljava/lang/Boolean;
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v70

    if-eqz v70, :cond_2

    .line 2914
    const-string v70, "PersonaManagerServiceHandler"

    new-instance v72, Ljava/lang/StringBuilder;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuilder;-><init>()V

    const-string v73, "MSG_CANCEL_TIMER_IN_USER_ACTIVITY called :"

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, v38

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v73, v0

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v70

    move-object/from16 v1, v72

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2915
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v72, v0

    const/16 v73, 0x0

    move-object/from16 v0, v70

    move/from16 v1, v72

    move/from16 v2, v73

    # invokes: Lcom/android/server/pm/PersonaManagerService;->scheduleTimer(IZ)V
    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PersonaManagerService;->access$1100(Lcom/android/server/pm/PersonaManagerService;IZ)V

    goto :goto_2

    .line 2920
    .end local v8    # "b":Ljava/lang/Boolean;
    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v38    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v47    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :catchall_0
    move-exception v70

    monitor-exit v71
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v70

    :cond_3
    :try_start_1
    monitor-exit v71
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 2924
    .end local v18    # "event":I
    :pswitch_2
    const-string v70, "PersonaManagerServiceHandler"

    new-instance v71, Ljava/lang/StringBuilder;

    invoke-direct/range {v71 .. v71}, Ljava/lang/StringBuilder;-><init>()V

    const-string v72, "MSG_SCHEDULE_TIMER_IN_HANDLER called :"

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v72, v0

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v71

    invoke-virtual/range {v71 .. v71}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v71

    invoke-static/range {v70 .. v71}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2925
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v42, v0

    .line 2926
    .restart local v42    # "personaId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    const/16 v71, 0x0

    move-object/from16 v0, v70

    move/from16 v1, v42

    move/from16 v2, v71

    # invokes: Lcom/android/server/pm/PersonaManagerService;->scheduleTimer(IZ)V
    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PersonaManagerService;->access$1100(Lcom/android/server/pm/PersonaManagerService;IZ)V

    goto/16 :goto_0

    .line 2930
    .end local v42    # "personaId":I
    :pswitch_3
    const-string v70, "PersonaManagerServiceHandler"

    new-instance v71, Ljava/lang/StringBuilder;

    invoke-direct/range {v71 .. v71}, Ljava/lang/StringBuilder;-><init>()V

    const-string v72, "MSG_STOP_TIMER called :"

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v72, v0

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v71

    const-string v72, " "

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v72, v0

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v71

    invoke-virtual/range {v71 .. v71}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v71

    invoke-static/range {v70 .. v71}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2931
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v42, v0

    .line 2932
    .restart local v42    # "personaId":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v20, v0

    .line 2933
    .local v20, "force":I
    const/16 v70, 0x1

    move/from16 v0, v20

    move/from16 v1, v70

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    move-object/from16 v0, v70

    move/from16 v1, v42

    # invokes: Lcom/android/server/pm/PersonaManagerService;->isKeyGuardEnabledFromMDM(I)Z
    invoke-static {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->access$1200(Lcom/android/server/pm/PersonaManagerService;I)Z

    move-result v70

    if-eqz v70, :cond_0

    .line 2934
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    move-object/from16 v0, v70

    move/from16 v1, v42

    # invokes: Lcom/android/server/pm/PersonaManagerService;->killTimer(I)V
    invoke-static {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->access$1300(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_0

    .line 2939
    .end local v20    # "force":I
    .end local v42    # "personaId":I
    :pswitch_4
    const-string v70, "PersonaManagerServiceHandler"

    new-instance v71, Ljava/lang/StringBuilder;

    invoke-direct/range {v71 .. v71}, Ljava/lang/StringBuilder;-><init>()V

    const-string v72, "MSG_LOCK_TIME_EXPIRED called :"

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v72, v0

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v71

    invoke-virtual/range {v71 .. v71}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v71

    invoke-static/range {v70 .. v71}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2940
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v42, v0

    .line 2941
    .restart local v42    # "personaId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    const/16 v71, 0x1

    move-object/from16 v0, v70

    move/from16 v1, v42

    move/from16 v2, v71

    # invokes: Lcom/android/server/pm/PersonaManagerService;->killTimer(IZ)V
    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PersonaManagerService;->access$1400(Lcom/android/server/pm/PersonaManagerService;IZ)V

    .line 2942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    move-object/from16 v0, v70

    move/from16 v1, v42

    # invokes: Lcom/android/server/pm/PersonaManagerService;->isKeyGuardEnabledFromMDM(I)Z
    invoke-static {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->access$1200(Lcom/android/server/pm/PersonaManagerService;I)Z

    move-result v70

    if-eqz v70, :cond_0

    .line 2943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    move-object/from16 v0, v70

    move/from16 v1, v42

    # invokes: Lcom/android/server/pm/PersonaManagerService;->changeStateAndSwitch(I)V
    invoke-static {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->access$1500(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_0

    .line 2948
    .end local v42    # "personaId":I
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 2949
    .local v8, "b":Landroid/os/Bundle;
    const-string/jumbo v70, "type"

    const/16 v71, 0x0

    move-object/from16 v0, v70

    move/from16 v1, v71

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v64

    .line 2950
    .local v64, "type":Z
    const-string v70, "flag"

    const/16 v71, 0x0

    move-object/from16 v0, v70

    move/from16 v1, v71

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v19

    .line 2951
    .local v19, "flag":I
    const-string/jumbo v70, "uid"

    const/16 v71, 0x0

    move-object/from16 v0, v70

    move/from16 v1, v71

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v66

    .line 2952
    .local v66, "uid":I
    const-string v70, "pid"

    const/16 v71, 0x0

    move-object/from16 v0, v70

    move/from16 v1, v71

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v49

    .line 2953
    .local v49, "pid":I
    const-string v70, "package"

    const-string v71, ""

    move-object/from16 v0, v70

    move-object/from16 v1, v71

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 2954
    .local v39, "packageName":Ljava/lang/String;
    invoke-static/range {v66 .. v66}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v68

    .line 2955
    .local v68, "userId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    move-object/from16 v0, v70

    move/from16 v1, v64

    move/from16 v2, v19

    move/from16 v3, v66

    move/from16 v4, v68

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/pm/PersonaManagerService;->handleWakeLockChange(ZIII)V

    goto/16 :goto_0

    .line 2959
    .end local v8    # "b":Landroid/os/Bundle;
    .end local v19    # "flag":I
    .end local v39    # "packageName":Ljava/lang/String;
    .end local v49    # "pid":I
    .end local v64    # "type":Z
    .end local v66    # "uid":I
    .end local v68    # "userId":I
    :pswitch_6
    const-string v70, "PersonaManagerServiceHandler"

    const-string v71, "MSG_ACTION_SCREEN_OFF called"

    invoke-static/range {v70 .. v71}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2960
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mTimerMap:Ljava/util/HashMap;
    invoke-static/range {v70 .. v70}, Lcom/android/server/pm/PersonaManagerService;->access$1000(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v71

    monitor-enter v71

    .line 2962
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    const/16 v72, 0x1

    move-object/from16 v0, v70

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v47

    .line 2963
    .restart local v47    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-interface/range {v47 .. v47}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .restart local v23    # "i$":Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v70

    if-eqz v70, :cond_6

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/content/pm/PersonaInfo;

    .line 2964
    .restart local v38    # "pInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v38, :cond_5

    .line 2965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v72, v0

    move-object/from16 v0, v70

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->getScreenOffTime(I)J

    move-result-wide v72

    const-wide/16 v74, 0x0

    cmp-long v70, v72, v74

    if-nez v70, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v72, v0

    move-object/from16 v0, v70

    move/from16 v1, v72

    # invokes: Lcom/android/server/pm/PersonaManagerService;->isKeyGuardEnabledFromMDM(I)Z
    invoke-static {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->access$1200(Lcom/android/server/pm/PersonaManagerService;I)Z

    move-result v70

    if-eqz v70, :cond_5

    .line 2966
    const-string v70, "PersonaManagerServiceHandler"

    const-string v72, "MSG_ACTION_SCREEN_OFF screen time = 0, change state and switch"

    move-object/from16 v0, v70

    move-object/from16 v1, v72

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v72, v0

    move-object/from16 v0, v70

    move/from16 v1, v72

    # invokes: Lcom/android/server/pm/PersonaManagerService;->changeStateAndSwitch(I)V
    invoke-static {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->access$1500(Lcom/android/server/pm/PersonaManagerService;I)V

    goto :goto_3

    .line 2971
    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v38    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v47    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :catchall_1
    move-exception v70

    monitor-exit v71
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v70

    .restart local v23    # "i$":Ljava/util/Iterator;
    .restart local v47    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_6
    :try_start_3
    monitor-exit v71
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    .line 2975
    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v47    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :pswitch_7
    const-string v70, "PersonaManagerServiceHandler"

    const-string v71, "MSG_ACTION_SCREEN_ON called"

    invoke-static/range {v70 .. v71}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mTimerMap:Ljava/util/HashMap;
    invoke-static/range {v70 .. v70}, Lcom/android/server/pm/PersonaManagerService;->access$1000(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v71

    monitor-enter v71

    .line 2977
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    const/16 v72, 0x1

    move-object/from16 v0, v70

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v47

    .line 2978
    .restart local v47    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-interface/range {v47 .. v47}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .restart local v23    # "i$":Ljava/util/Iterator;
    :cond_7
    :goto_4
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v70

    if-eqz v70, :cond_9

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/content/pm/PersonaInfo;

    .line 2979
    .restart local v38    # "pInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v38, :cond_7

    .line 2980
    move-object/from16 v0, v38

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v42, v0

    .line 2981
    .restart local v42    # "personaId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    move-object/from16 v0, v70

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->getScreenOffTime(I)J

    move-result-wide v59

    .line 2983
    .local v59, "sessionLength":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    move-object/from16 v0, v70

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->isSessionExpired(I)Z

    move-result v70

    if-nez v70, :cond_7

    const-wide/16 v72, 0x0

    cmp-long v70, v59, v72

    if-lez v70, :cond_7

    .line 2984
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v35

    .line 2985
    .local v35, "now":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    move-object/from16 v0, v70

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaBackgroundTime(I)J

    move-result-wide v27

    .line 2986
    .local v27, "lastTime":J
    sub-long v12, v35, v27

    .line 2988
    .local v12, "duration":J
    sub-long v62, v59, v12

    .line 2989
    .local v62, "timeRemaining":J
    const-string v70, "PersonaManagerServiceHandler"

    new-instance v72, Ljava/lang/StringBuilder;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v73, "timeRemaining: "

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, v72

    move-wide/from16 v1, v62

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v70

    move-object/from16 v1, v72

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2991
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static/range {v70 .. v70}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v70

    move/from16 v0, v42

    or-int/lit16 v0, v0, 0x1388

    move/from16 v72, v0

    move-object/from16 v0, v70

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v31

    .line 2992
    .local v31, "message":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static/range {v70 .. v70}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v70

    move/from16 v0, v42

    or-int/lit16 v0, v0, 0x1388

    move/from16 v72, v0

    move-object/from16 v0, v70

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->removeMessages(I)V

    .line 2993
    const-wide/16 v72, 0x1

    cmp-long v70, v62, v72

    if-gez v70, :cond_8

    const-wide/16 v62, 0x0

    .line 2994
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static/range {v70 .. v70}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v70

    move-object/from16 v0, v70

    move-object/from16 v1, v31

    move-wide/from16 v2, v62

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_4

    .line 2999
    .end local v12    # "duration":J
    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v27    # "lastTime":J
    .end local v31    # "message":Landroid/os/Message;
    .end local v35    # "now":J
    .end local v38    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v42    # "personaId":I
    .end local v47    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v59    # "sessionLength":J
    .end local v62    # "timeRemaining":J
    :catchall_2
    move-exception v70

    monitor-exit v71
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v70

    .restart local v23    # "i$":Ljava/util/Iterator;
    .restart local v47    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_9
    :try_start_5
    monitor-exit v71
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/16 :goto_0

    .line 3003
    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v47    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :pswitch_8
    const-string v70, "PersonaManagerServiceHandler"

    const-string v71, "MSG_SETTINGS_OBSERVER_TRIGGERED called"

    invoke-static/range {v70 .. v71}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mTimerMap:Ljava/util/HashMap;
    invoke-static/range {v70 .. v70}, Lcom/android/server/pm/PersonaManagerService;->access$1000(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v71

    monitor-enter v71

    .line 3005
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    const/16 v72, 0x1

    move-object/from16 v0, v70

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v47

    .line 3006
    .restart local v47    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-interface/range {v47 .. v47}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .restart local v23    # "i$":Ljava/util/Iterator;
    :cond_a
    :goto_5
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v70

    if-eqz v70, :cond_b

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/content/pm/PersonaInfo;

    .line 3007
    .restart local v38    # "pInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v38, :cond_a

    .line 3008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mTimerMap:Ljava/util/HashMap;
    invoke-static/range {v70 .. v70}, Lcom/android/server/pm/PersonaManagerService;->access$1000(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v70

    move-object/from16 v0, v38

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v72, v0

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    move-object/from16 v0, v70

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    .line 3009
    .local v8, "b":Ljava/lang/Boolean;
    const-string v70, "PersonaManagerServiceHandler"

    new-instance v72, Ljava/lang/StringBuilder;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuilder;-><init>()V

    const-string v73, "mTimerMap.get(pInfo.id) called:"

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v73, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mTimerMap:Ljava/util/HashMap;
    invoke-static/range {v73 .. v73}, Lcom/android/server/pm/PersonaManagerService;->access$1000(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v73

    move-object/from16 v0, v38

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v74, v0

    invoke-static/range {v74 .. v74}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v74

    invoke-virtual/range {v73 .. v74}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v73

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v70

    move-object/from16 v1, v72

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3010
    if-eqz v8, :cond_a

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v70

    if-eqz v70, :cond_a

    .line 3011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v72, v0

    const/16 v73, 0x0

    move-object/from16 v0, v70

    move/from16 v1, v72

    move/from16 v2, v73

    # invokes: Lcom/android/server/pm/PersonaManagerService;->scheduleTimer(IZ)V
    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PersonaManagerService;->access$1100(Lcom/android/server/pm/PersonaManagerService;IZ)V

    goto :goto_5

    .line 3015
    .end local v8    # "b":Ljava/lang/Boolean;
    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v38    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v47    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :catchall_3
    move-exception v70

    monitor-exit v71
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v70

    .restart local v23    # "i$":Ljava/util/Iterator;
    .restart local v47    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_b
    :try_start_7
    monitor-exit v71
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto/16 :goto_0

    .line 3020
    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v47    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :pswitch_9
    :try_start_8
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v69, v0

    .line 3021
    .local v69, "userid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    move-object/from16 v0, v70

    move/from16 v1, v69

    # invokes: Lcom/android/server/pm/PersonaManagerService;->checkIfAdminHasBeenRemoved(I)V
    invoke-static {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->access$1600(Lcom/android/server/pm/PersonaManagerService;I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    .line 3022
    .end local v69    # "userid":I
    :catch_0
    move-exception v14

    .line 3023
    .local v14, "e":Ljava/lang/Exception;
    const-string v70, "PersonaManagerService"

    new-instance v71, Ljava/lang/StringBuilder;

    invoke-direct/range {v71 .. v71}, Ljava/lang/StringBuilder;-><init>()V

    const-string v72, "Cannot process DPM state change broadcast :"

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    invoke-static {v14}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v72

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    invoke-virtual/range {v71 .. v71}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v71

    invoke-static/range {v70 .. v71}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3028
    .end local v14    # "e":Ljava/lang/Exception;
    :pswitch_a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v67, v0

    .line 3030
    .local v67, "userHandle":I
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mISystemPersonaObserver:Landroid/os/RemoteCallbackList;
    invoke-static/range {v70 .. v70}, Lcom/android/server/pm/PersonaManagerService;->access$1700(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v22

    .line 3031
    .local v22, "i":I
    :goto_6
    if-lez v22, :cond_c

    .line 3032
    add-int/lit8 v22, v22, -0x1

    .line 3033
    const-string v70, "PersonaManagerService"

    const-string v71, " sending remove persona event to system observers "

    invoke-static/range {v70 .. v71}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3034
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mISystemPersonaObserver:Landroid/os/RemoteCallbackList;
    invoke-static/range {v70 .. v70}, Lcom/android/server/pm/PersonaManagerService;->access$1700(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v70

    move-object/from16 v0, v70

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v70

    check-cast v70, Landroid/content/pm/ISystemPersonaObserver;

    move-object/from16 v0, v70

    move/from16 v1, v67

    invoke-interface {v0, v1}, Landroid/content/pm/ISystemPersonaObserver;->onRemovePersona(I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_6

    .line 3037
    .end local v22    # "i":I
    :catch_1
    move-exception v15

    .line 3040
    .local v15, "e2":Ljava/lang/Exception;
    const-string v70, "PersonaManagerService"

    new-instance v71, Ljava/lang/StringBuilder;

    invoke-direct/range {v71 .. v71}, Ljava/lang/StringBuilder;-><init>()V

    const-string v72, "Exception Caught:"

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    invoke-static {v15}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v72

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    invoke-virtual/range {v71 .. v71}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v71

    invoke-static/range {v70 .. v71}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3036
    .end local v15    # "e2":Ljava/lang/Exception;
    .restart local v22    # "i":I
    :cond_c
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mISystemPersonaObserver:Landroid/os/RemoteCallbackList;
    invoke-static/range {v70 .. v70}, Lcom/android/server/pm/PersonaManagerService;->access$1700(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_0

    .line 3046
    .end local v22    # "i":I
    .end local v67    # "userHandle":I
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPartialsForPrune:Ljava/util/ArrayList;
    invoke-static/range {v70 .. v70}, Lcom/android/server/pm/PersonaManagerService;->access$1800(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/ArrayList;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .restart local v23    # "i$":Ljava/util/Iterator;
    :cond_d
    :goto_7
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v70

    if-eqz v70, :cond_e

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    .line 3047
    .local v22, "i":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v71

    invoke-virtual/range {v70 .. v71}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v65

    .line 3048
    .local v65, "ui":Landroid/content/pm/PersonaInfo;
    if-eqz v65, :cond_d

    .line 3049
    const-string v70, "PersonaManagerService"

    new-instance v71, Ljava/lang/StringBuilder;

    invoke-direct/range {v71 .. v71}, Ljava/lang/StringBuilder;-><init>()V

    const-string v72, "Removing partially created user #"

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    move-object/from16 v0, v65

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v72, v0

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v71

    const-string v72, " (name="

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    move-object/from16 v0, v65

    iget-object v0, v0, Landroid/content/pm/PersonaInfo;->name:Ljava/lang/String;

    move-object/from16 v72, v0

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    const-string v72, ")"

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    invoke-virtual/range {v71 .. v71}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v71

    invoke-static/range {v70 .. v71}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3051
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    move-object/from16 v0, v65

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v71, v0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->removePersonaHelper(I)V
    invoke-static/range {v70 .. v71}, Lcom/android/server/pm/PersonaManagerService;->access$1900(Lcom/android/server/pm/PersonaManagerService;I)V

    goto :goto_7

    .line 3054
    .end local v22    # "i":Ljava/lang/Integer;
    .end local v65    # "ui":Landroid/content/pm/PersonaInfo;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPartialsForPrune:Ljava/util/ArrayList;
    invoke-static/range {v70 .. v70}, Lcom/android/server/pm/PersonaManagerService;->access$1800(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/ArrayList;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 3060
    .end local v23    # "i$":Ljava/util/Iterator;
    :pswitch_c
    :try_start_b
    const-string v70, "PersonaManagerService"

    const-string v71, "reading from xml resource for fota"

    invoke-static/range {v70 .. v71}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3061
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static/range {v70 .. v70}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v70

    const v71, 0x10f000b

    invoke-virtual/range {v70 .. v71}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v41

    .line 3062
    .local v41, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v21, Lcom/android/server/pm/PersonaManagerService$FotaXmlDataParser;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v70

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PersonaManagerService$FotaXmlDataParser;-><init>(Lcom/android/server/pm/PersonaManagerService;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3063
    .local v21, "fotaParser":Lcom/android/server/pm/PersonaManagerService$FotaXmlDataParser;
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/pm/PersonaManagerService$FotaXmlDataParser;->readFromXml()V

    .line 3064
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/pm/PersonaManagerService$FotaXmlDataParser;->getAppList()Ljava/util/ArrayList;

    move-result-object v71

    # setter for: Lcom/android/server/pm/PersonaManagerService;->mAppList:Ljava/util/ArrayList;
    invoke-static/range {v70 .. v71}, Lcom/android/server/pm/PersonaManagerService;->access$2002(Lcom/android/server/pm/PersonaManagerService;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    .line 3068
    .end local v21    # "fotaParser":Lcom/android/server/pm/PersonaManagerService$FotaXmlDataParser;
    .end local v41    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    const/16 v71, 0x1

    invoke-virtual/range {v70 .. v71}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v45

    .line 3069
    .local v45, "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-interface/range {v45 .. v45}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_f
    :goto_9
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v70

    if-eqz v70, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/content/pm/PersonaInfo;

    .line 3071
    .local v48, "pi":Landroid/content/pm/PersonaInfo;
    if-eqz v48, :cond_f

    move-object/from16 v0, v48

    iget-boolean v0, v0, Landroid/content/pm/PersonaInfo;->partial:Z

    move/from16 v70, v0

    const/16 v71, 0x1

    move/from16 v0, v70

    move/from16 v1, v71

    if-eq v0, v1, :cond_f

    move-object/from16 v0, v48

    iget-boolean v0, v0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    move/from16 v70, v0

    const/16 v71, 0x1

    move/from16 v0, v70

    move/from16 v1, v71

    if-eq v0, v1, :cond_f

    .line 3074
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/android/server/pm/PersonaManagerService;->access$2100(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    move-result-object v70

    if-eqz v70, :cond_11

    .line 3075
    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    move-object/from16 v70, v0

    if-eqz v70, :cond_10

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    move-object/from16 v70, v0

    invoke-virtual/range {v70 .. v70}, Ljava/lang/String;->isEmpty()Z

    move-result v70

    if-eqz v70, :cond_11

    .line 3076
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    move-object/from16 v0, v48

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v71, v0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->migrateAndCleanupSharedPreferences(I)V
    invoke-static/range {v70 .. v71}, Lcom/android/server/pm/PersonaManagerService;->access$2200(Lcom/android/server/pm/PersonaManagerService;I)V

    .line 3080
    :cond_11
    invoke-virtual/range {v48 .. v48}, Landroid/content/pm/PersonaInfo;->isSecureFileSystem()Z

    move-result v70

    if-eqz v70, :cond_13

    .line 3081
    move-object/from16 v0, v48

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v70, v0

    const-string v71, "persona_file_system"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v72, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mFSHandler:Lcom/sec/knox/container/util/KnoxFileHandler;
    invoke-static/range {v72 .. v72}, Lcom/android/server/pm/PersonaManagerService;->access$2300(Lcom/android/server/pm/PersonaManagerService;)Lcom/sec/knox/container/util/KnoxFileHandler;

    move-result-object v72

    const/16 v73, 0x0

    invoke-static/range {v70 .. v73}, Lcom/android/server/pm/HandlerCacheManager;->registerHandler(ILjava/lang/String;Ljava/lang/Object;Landroid/content/pm/IPersonaObserver;)V

    .line 3082
    move-object/from16 v0, v48

    iget-boolean v0, v0, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z

    move/from16 v70, v0

    if-nez v70, :cond_15

    move-object/from16 v0, v48

    iget v0, v0, Landroid/content/pm/PersonaInfo;->state:I

    move/from16 v70, v0

    const/16 v71, 0x1

    move/from16 v0, v70

    move/from16 v1, v71

    if-eq v0, v1, :cond_15

    move-object/from16 v0, v48

    iget v0, v0, Landroid/content/pm/PersonaInfo;->state:I

    move/from16 v70, v0

    const/16 v71, 0x4

    move/from16 v0, v70

    move/from16 v1, v71

    if-eq v0, v1, :cond_15

    move-object/from16 v0, v48

    iget v0, v0, Landroid/content/pm/PersonaInfo;->state:I

    move/from16 v70, v0

    const/16 v71, 0x3

    move/from16 v0, v70

    move/from16 v1, v71

    if-eq v0, v1, :cond_15

    .line 3084
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mFSHandler:Lcom/sec/knox/container/util/KnoxFileHandler;
    invoke-static/range {v70 .. v70}, Lcom/android/server/pm/PersonaManagerService;->access$2300(Lcom/android/server/pm/PersonaManagerService;)Lcom/sec/knox/container/util/KnoxFileHandler;

    move-result-object v70

    move-object/from16 v0, v48

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v71, v0

    const/16 v72, 0x0

    invoke-virtual/range {v48 .. v48}, Landroid/content/pm/PersonaInfo;->isSecureStorageEnabled()Z

    move-result v73

    invoke-virtual/range {v48 .. v48}, Landroid/content/pm/PersonaInfo;->getTimaEcrytfsIndex()I

    move-result v74

    invoke-virtual/range {v70 .. v74}, Lcom/sec/knox/container/util/KnoxFileHandler;->mount(ILjava/lang/String;ZI)Z

    move-result v32

    .line 3085
    .local v32, "mountStatus":Z
    if-nez v32, :cond_14

    .line 3086
    const-string v70, "PersonaManagerService"

    new-instance v71, Ljava/lang/StringBuilder;

    invoke-direct/range {v71 .. v71}, Ljava/lang/StringBuilder;-><init>()V

    const-string v72, "File system not mounted successfully for"

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    move-object/from16 v0, v48

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v72, v0

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v71

    const-string v72, "."

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    invoke-virtual/range {v71 .. v71}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v71

    invoke-static/range {v70 .. v71}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    .line 3110
    .end local v32    # "mountStatus":Z
    :cond_12
    :goto_a
    move-object/from16 v0, v48

    iget-boolean v0, v0, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    move/from16 v70, v0

    if-eqz v70, :cond_13

    .line 3111
    const-string v70, "PersonaManagerService"

    new-instance v71, Ljava/lang/StringBuilder;

    invoke-direct/range {v71 .. v71}, Ljava/lang/StringBuilder;-><init>()V

    const-string v72, " resetPersonaOnReboot:  resetting persona :"

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    move-object/from16 v0, v48

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v72, v0

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v71

    invoke-virtual/range {v71 .. v71}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v71

    invoke-static/range {v70 .. v71}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    move-object/from16 v0, v48

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v71, v0

    const/16 v72, 0x1

    # invokes: Lcom/android/server/pm/PersonaManagerService;->startResetPersona(IZ)I
    invoke-static/range {v70 .. v72}, Lcom/android/server/pm/PersonaManagerService;->access$2500(Lcom/android/server/pm/PersonaManagerService;IZ)I

    .line 3117
    :cond_13
    const-string v70, "PersonaManagerService"

    new-instance v71, Ljava/lang/StringBuilder;

    invoke-direct/range {v71 .. v71}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v72, "systemReady: getDeviceFirmwareVersion = "

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v72, v0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;
    invoke-static/range {v72 .. v72}, Lcom/android/server/pm/PersonaManagerService;->access$2100(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    move-result-object v72

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    const-string v72, "; pi.fwversion = "

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    move-object/from16 v72, v0

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    invoke-virtual/range {v71 .. v71}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v71

    invoke-static/range {v70 .. v71}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/android/server/pm/PersonaManagerService;->access$2100(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    move-result-object v70

    if-eqz v70, :cond_f

    .line 3119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/android/server/pm/PersonaManagerService;->access$2100(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    move-result-object v70

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    move-object/from16 v71, v0

    invoke-virtual/range {v70 .. v71}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v70

    if-nez v70, :cond_f

    .line 3121
    const-string v70, "PersonaManagerService"

    new-instance v71, Ljava/lang/StringBuilder;

    invoke-direct/range {v71 .. v71}, Ljava/lang/StringBuilder;-><init>()V

    const-string v72, "pi.removePersona = "

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    move-object/from16 v0, v48

    iget-boolean v0, v0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    move/from16 v72, v0

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v71

    const-string v72, "; pi.state = "

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    move-object/from16 v0, v48

    iget v0, v0, Landroid/content/pm/PersonaInfo;->state:I

    move/from16 v72, v0

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v71

    invoke-virtual/range {v71 .. v71}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v71

    invoke-static/range {v70 .. v71}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3122
    move-object/from16 v0, v48

    iget v0, v0, Landroid/content/pm/PersonaInfo;->state:I

    move/from16 v70, v0

    const/16 v71, 0x1

    move/from16 v0, v70

    move/from16 v1, v71

    if-eq v0, v1, :cond_f

    move-object/from16 v0, v48

    iget v0, v0, Landroid/content/pm/PersonaInfo;->state:I

    move/from16 v70, v0

    const/16 v71, 0x4

    move/from16 v0, v70

    move/from16 v1, v71

    if-eq v0, v1, :cond_f

    move-object/from16 v0, v48

    iget v0, v0, Landroid/content/pm/PersonaInfo;->state:I

    move/from16 v70, v0

    const/16 v71, 0x3

    move/from16 v0, v70

    move/from16 v1, v71

    if-eq v0, v1, :cond_f

    .line 3126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    move-object/from16 v0, v70

    move-object/from16 v1, v48

    # invokes: Lcom/android/server/pm/PersonaManagerService;->updateContainerOnlyApks(Landroid/content/pm/PersonaInfo;)V
    invoke-static {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->access$2600(Lcom/android/server/pm/PersonaManagerService;Landroid/content/pm/PersonaInfo;)V

    goto/16 :goto_9

    .line 3065
    .end local v45    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v48    # "pi":Landroid/content/pm/PersonaInfo;
    :catch_2
    move-exception v14

    .line 3066
    .restart local v14    # "e":Ljava/lang/Exception;
    const-string v70, "PersonaManagerService"

    new-instance v71, Ljava/lang/StringBuilder;

    invoke-direct/range {v71 .. v71}, Ljava/lang/StringBuilder;-><init>()V

    const-string v72, "Failed to open file - Exception: "

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    move-object/from16 v0, v71

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v71

    invoke-virtual/range {v71 .. v71}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v71

    invoke-static/range {v70 .. v71}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 3088
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v32    # "mountStatus":Z
    .restart local v45    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .restart local v48    # "pi":Landroid/content/pm/PersonaInfo;
    :cond_14
    :try_start_d
    const-string v70, "PersonaManagerService"

    new-instance v71, Ljava/lang/StringBuilder;

    invoke-direct/range {v71 .. v71}, Ljava/lang/StringBuilder;-><init>()V

    const-string v72, "File system successfully mounted for"

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    move-object/from16 v0, v48

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v72, v0

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v71

    const-string v72, "."

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    invoke-virtual/range {v71 .. v71}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v71

    invoke-static/range {v70 .. v71}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3090
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mAppList:Ljava/util/ArrayList;
    invoke-static/range {v70 .. v70}, Lcom/android/server/pm/PersonaManagerService;->access$2000(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/ArrayList;

    move-result-object v70

    if-eqz v70, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mAppList:Ljava/util/ArrayList;
    invoke-static/range {v70 .. v70}, Lcom/android/server/pm/PersonaManagerService;->access$2000(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/ArrayList;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/util/ArrayList;->size()I

    move-result v70

    if-eqz v70, :cond_12

    .line 3091
    const-string v70, "PersonaManagerService"

    new-instance v71, Ljava/lang/StringBuilder;

    invoke-direct/range {v71 .. v71}, Ljava/lang/StringBuilder;-><init>()V

    const-string v72, "Persona firmware version : "

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    move-object/from16 v72, v0

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    const-string v72, " "

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v72, v0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;
    invoke-static/range {v72 .. v72}, Lcom/android/server/pm/PersonaManagerService;->access$2100(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    move-result-object v72

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    invoke-virtual/range {v71 .. v71}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v71

    invoke-static/range {v70 .. v71}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/android/server/pm/PersonaManagerService;->access$2100(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    move-result-object v70

    if-eqz v70, :cond_12

    .line 3093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/android/server/pm/PersonaManagerService;->access$2100(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    move-result-object v70

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    move-object/from16 v71, v0

    invoke-virtual/range {v70 .. v71}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v70

    if-nez v70, :cond_12

    .line 3095
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mAppList:Ljava/util/ArrayList;
    invoke-static/range {v70 .. v70}, Lcom/android/server/pm/PersonaManagerService;->access$2000(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/ArrayList;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v70

    if-eqz v70, :cond_12

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;

    .line 3096
    .local v25, "info":Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;
    const-string v70, "PersonaManagerService"

    new-instance v71, Ljava/lang/StringBuilder;

    invoke-direct/range {v71 .. v71}, Ljava/lang/StringBuilder;-><init>()V

    const-string v72, "AppUpgradeInfo: "

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;->mAppName:Ljava/lang/String;

    move-object/from16 v72, v0

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    invoke-virtual/range {v71 .. v71}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v71

    invoke-static/range {v70 .. v71}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3097
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    move-object/from16 v0, v48

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v71, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;->mAppName:Ljava/lang/String;

    move-object/from16 v72, v0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->installExistingPackageForPersona(ILjava/lang/String;)I
    invoke-static/range {v70 .. v72}, Lcom/android/server/pm/PersonaManagerService;->access$2400(Lcom/android/server/pm/PersonaManagerService;ILjava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    goto :goto_b

    .line 3103
    .end local v24    # "i$":Ljava/util/Iterator;
    .end local v25    # "info":Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;
    .end local v32    # "mountStatus":Z
    :catch_3
    move-exception v14

    .line 3104
    .restart local v14    # "e":Ljava/lang/Exception;
    const-string v70, "PersonaManagerService"

    new-instance v71, Ljava/lang/StringBuilder;

    invoke-direct/range {v71 .. v71}, Ljava/lang/StringBuilder;-><init>()V

    const-string v72, "Failed to mount file system. "

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    move-object/from16 v0, v71

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v71

    invoke-virtual/range {v71 .. v71}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v71

    invoke-static/range {v70 .. v71}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 3107
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_15
    const-string v70, "PersonaManagerService"

    new-instance v71, Ljava/lang/StringBuilder;

    invoke-direct/range {v71 .. v71}, Ljava/lang/StringBuilder;-><init>()V

    const-string v72, "Did not mount file system for superLocked persona "

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    move-object/from16 v0, v48

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v72, v0

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v71

    const-string v72, " or due to container state."

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    invoke-virtual/range {v71 .. v71}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v71

    invoke-static/range {v70 .. v71}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 3135
    .end local v45    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v48    # "pi":Landroid/content/pm/PersonaInfo;
    :pswitch_d
    :try_start_e
    const-string v70, "PersonaManagerServiceHandler"

    const-string v71, " MSG_BOOT_COMPLETE_RECEIVED : soft start personas "

    invoke-static/range {v70 .. v71}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static/range {v70 .. v70}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v70

    const-string v71, "persona"

    invoke-virtual/range {v70 .. v71}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Landroid/os/PersonaManager;

    .line 3139
    .local v46, "personaManager":Landroid/os/PersonaManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static/range {v70 .. v70}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v70

    const-string v71, "activity"

    invoke-virtual/range {v70 .. v71}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    .line 3142
    .local v5, "activityManager":Landroid/app/ActivityManager;
    if-eqz v46, :cond_0

    .line 3143
    const/16 v70, 0x0

    move-object/from16 v0, v46

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/os/PersonaManager;->getPersonasForUser(I)Ljava/util/List;

    move-result-object v45

    .line 3145
    .restart local v45    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v45, :cond_0

    invoke-interface/range {v45 .. v45}, Ljava/util/List;->size()I

    move-result v70

    if-lez v70, :cond_0

    .line 3146
    const/16 v70, 0x2

    move/from16 v0, v70

    new-array v0, v0, [I

    move-object/from16 v43, v0

    .line 3147
    .local v43, "personaIds":[I
    const/16 v33, 0x0

    .line 3148
    .local v33, "n":I
    invoke-interface/range {v45 .. v45}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .restart local v23    # "i$":Ljava/util/Iterator;
    move/from16 v34, v33

    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v33    # "n":I
    .local v34, "n":I
    :goto_c
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v70

    if-eqz v70, :cond_19

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/content/pm/PersonaInfo;

    .line 3149
    .restart local v48    # "pi":Landroid/content/pm/PersonaInfo;
    add-int/lit8 v33, v34, 0x1

    .end local v34    # "n":I
    .restart local v33    # "n":I
    move-object/from16 v0, v48

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v70, v0

    aput v70, v43, v34

    .line 3151
    new-instance v16, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static/range {v70 .. v70}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v70

    move-object/from16 v0, v16

    move-object/from16 v1, v70

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 3152
    .local v16, "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    move-object/from16 v0, v48

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v70, v0

    move-object/from16 v0, v16

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v37

    .line 3153
    .local v37, "ownerUid":I
    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v17

    .line 3154
    .local v17, "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static/range {v70 .. v70}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v70

    new-instance v71, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v48

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v72, v0

    move-object/from16 v0, v71

    move/from16 v1, v37

    move/from16 v2, v72

    invoke-direct {v0, v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    move-object/from16 v0, v17

    move-object/from16 v1, v70

    move-object/from16 v2, v71

    invoke-virtual {v0, v1, v2}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/knox/container/KnoxContainerManager;

    move-result-object v26

    .line 3156
    .local v26, "kmcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mAppList:Ljava/util/ArrayList;
    invoke-static/range {v70 .. v70}, Lcom/android/server/pm/PersonaManagerService;->access$2000(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/ArrayList;

    move-result-object v70

    if-eqz v70, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mAppList:Ljava/util/ArrayList;
    invoke-static/range {v70 .. v70}, Lcom/android/server/pm/PersonaManagerService;->access$2000(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/ArrayList;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/util/ArrayList;->size()I

    move-result v70

    if-eqz v70, :cond_18

    .line 3157
    const-string v70, "PersonaManagerService"

    new-instance v71, Ljava/lang/StringBuilder;

    invoke-direct/range {v71 .. v71}, Ljava/lang/StringBuilder;-><init>()V

    const-string v72, "Persona firmware version : "

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    move-object/from16 v72, v0

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    const-string v72, " "

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v72, v0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;
    invoke-static/range {v72 .. v72}, Lcom/android/server/pm/PersonaManagerService;->access$2100(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    move-result-object v72

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    invoke-virtual/range {v71 .. v71}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v71

    invoke-static/range {v70 .. v71}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/android/server/pm/PersonaManagerService;->access$2100(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    move-result-object v70

    if-eqz v70, :cond_18

    .line 3159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/android/server/pm/PersonaManagerService;->access$2100(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    move-result-object v70

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    move-object/from16 v71, v0

    invoke-virtual/range {v70 .. v71}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v70

    if-nez v70, :cond_18

    .line 3161
    new-instance v52, Ljava/util/ArrayList;

    invoke-direct/range {v52 .. v52}, Ljava/util/ArrayList;-><init>()V

    .line 3162
    .local v52, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mAppList:Ljava/util/ArrayList;
    invoke-static/range {v70 .. v70}, Lcom/android/server/pm/PersonaManagerService;->access$2000(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/ArrayList;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .restart local v24    # "i$":Ljava/util/Iterator;
    :cond_16
    :goto_d
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v70

    if-eqz v70, :cond_17

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;

    .line 3163
    .restart local v25    # "info":Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;
    const-string v70, "PersonaManagerService"

    new-instance v71, Ljava/lang/StringBuilder;

    invoke-direct/range {v71 .. v71}, Ljava/lang/StringBuilder;-><init>()V

    const-string v72, "Boot receiver AppUpgradeInfo: "

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;->mAppName:Ljava/lang/String;

    move-object/from16 v72, v0

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    const-string v72, " system:"

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;->mSystemApp:Z

    move/from16 v72, v0

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v71

    invoke-virtual/range {v71 .. v71}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v71

    invoke-static/range {v70 .. v71}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3164
    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;->mSystemApp:Z

    move/from16 v70, v0

    if-nez v70, :cond_16

    .line 3165
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;->mAppName:Ljava/lang/String;

    move-object/from16 v70, v0

    move-object/from16 v0, v52

    move-object/from16 v1, v70

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    goto :goto_d

    .line 3181
    .end local v5    # "activityManager":Landroid/app/ActivityManager;
    .end local v16    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v17    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .end local v24    # "i$":Ljava/util/Iterator;
    .end local v25    # "info":Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;
    .end local v26    # "kmcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .end local v33    # "n":I
    .end local v37    # "ownerUid":I
    .end local v43    # "personaIds":[I
    .end local v45    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v46    # "personaManager":Landroid/os/PersonaManager;
    .end local v48    # "pi":Landroid/content/pm/PersonaInfo;
    .end local v52    # "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_4
    move-exception v14

    .line 3182
    .restart local v14    # "e":Ljava/lang/Exception;
    const-string v70, "PersonaManagerService"

    new-instance v71, Ljava/lang/StringBuilder;

    invoke-direct/range {v71 .. v71}, Ljava/lang/StringBuilder;-><init>()V

    const-string v72, " BootReceiver : Exception while softStartPersona() "

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v72

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    invoke-virtual/range {v71 .. v71}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v71

    invoke-static/range {v70 .. v71}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3168
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v5    # "activityManager":Landroid/app/ActivityManager;
    .restart local v16    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .restart local v17    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .restart local v24    # "i$":Ljava/util/Iterator;
    .restart local v26    # "kmcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .restart local v33    # "n":I
    .restart local v37    # "ownerUid":I
    .restart local v43    # "personaIds":[I
    .restart local v45    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .restart local v46    # "personaManager":Landroid/os/PersonaManager;
    .restart local v48    # "pi":Landroid/content/pm/PersonaInfo;
    .restart local v52    # "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_17
    :try_start_f
    invoke-interface/range {v52 .. v52}, Ljava/util/List;->size()I

    move-result v70

    move/from16 v0, v70

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v70, v0

    move-object/from16 v0, v52

    move-object/from16 v1, v70

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    .line 3169
    .local v11, "disablePackages":[Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v70

    const/16 v71, 0x0

    move-object/from16 v0, v70

    move/from16 v1, v71

    invoke-virtual {v0, v11, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationStateList([Ljava/lang/String;Z)[Ljava/lang/String;

    .line 3173
    .end local v11    # "disablePackages":[Ljava/lang/String;
    .end local v24    # "i$":Ljava/util/Iterator;
    .end local v52    # "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/android/server/pm/PersonaManagerService;->access$2100(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    move-result-object v70

    move-object/from16 v0, v70

    move-object/from16 v1, v48

    iput-object v0, v1, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    .line 3174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    move-object/from16 v0, v70

    move-object/from16 v1, v48

    # invokes: Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V
    invoke-static {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->access$2700(Lcom/android/server/pm/PersonaManagerService;Landroid/content/pm/PersonaInfo;)V

    move/from16 v34, v33

    .line 3175
    .end local v33    # "n":I
    .restart local v34    # "n":I
    goto/16 :goto_c

    .line 3176
    .end local v16    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v17    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .end local v26    # "kmcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .end local v37    # "ownerUid":I
    .end local v48    # "pi":Landroid/content/pm/PersonaInfo;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    invoke-virtual/range {v70 .. v70}, Lcom/android/server/pm/PersonaManagerService;->isKioskContainerExistOnDevice()Z

    move-result v70

    if-nez v70, :cond_0

    .line 3177
    move-object/from16 v0, v43

    invoke-virtual {v5, v0}, Landroid/app/ActivityManager;->softStartPersonas([I)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4

    goto/16 :goto_0

    .line 3190
    .end local v5    # "activityManager":Landroid/app/ActivityManager;
    .end local v34    # "n":I
    .end local v43    # "personaIds":[I
    .end local v45    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v46    # "personaManager":Landroid/os/PersonaManager;
    :pswitch_e
    const-string v70, "PersonaManagerServiceHandler"

    new-instance v71, Ljava/lang/StringBuilder;

    invoke-direct/range {v71 .. v71}, Ljava/lang/StringBuilder;-><init>()V

    const-string v72, "PersonaHandler.MSG_START_REMOVE_PERSONA_AFTER_SWITCH is called for personaId - "

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v72, v0

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v71

    invoke-virtual/range {v71 .. v71}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v71

    invoke-static/range {v70 .. v71}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3193
    :try_start_10
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v42, v0

    .line 3194
    .restart local v42    # "personaId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;
    invoke-static/range {v70 .. v70}, Lcom/android/server/pm/PersonaManagerService;->access$2800(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseArray;

    move-result-object v70

    move-object/from16 v0, v70

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Landroid/content/pm/PersonaInfo;

    .line 3195
    .local v44, "personaInfo":Landroid/content/pm/PersonaInfo;
    if-nez v44, :cond_1a

    .line 3196
    const-string v70, "PersonaManagerServiceHandler"

    const-string v71, "PersonaHandler no personaInfo for this persona"

    invoke-static/range {v70 .. v71}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5

    goto/16 :goto_1

    .line 3210
    .end local v42    # "personaId":I
    .end local v44    # "personaInfo":Landroid/content/pm/PersonaInfo;
    :catch_5
    move-exception v14

    .line 3211
    .restart local v14    # "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 3200
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v42    # "personaId":I
    .restart local v44    # "personaInfo":Landroid/content/pm/PersonaInfo;
    :cond_1a
    :try_start_11
    invoke-virtual/range {v44 .. v44}, Landroid/content/pm/PersonaInfo;->getParentId()I

    move-result v40

    .line 3201
    .local v40, "parentUserId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    move-object/from16 v0, v70

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->switchPersona(I)Z

    move-result v56

    .line 3202
    .local v56, "result":Z
    if-eqz v56, :cond_1b

    .line 3203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    move-object/from16 v0, v70

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->startRemovingPersona(I)I

    move-result v9

    .line 3204
    .local v9, "code":I
    const-string v70, "PersonaManagerServiceHandler"

    new-instance v71, Ljava/lang/StringBuilder;

    invoke-direct/range {v71 .. v71}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v72, "startRemovingPersona return code is "

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    move-object/from16 v0, v71

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v71

    invoke-virtual/range {v71 .. v71}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v71

    invoke-static/range {v70 .. v71}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3207
    .end local v9    # "code":I
    :cond_1b
    const-string v70, "PersonaManagerServiceHandler"

    const-string v71, "Failed to switch persona. Aborted removing of persona..."

    invoke-static/range {v70 .. v71}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5

    goto/16 :goto_0

    .line 3217
    .end local v40    # "parentUserId":I
    .end local v42    # "personaId":I
    .end local v44    # "personaInfo":Landroid/content/pm/PersonaInfo;
    .end local v56    # "result":Z
    :pswitch_f
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v42, v0

    .line 3218
    .restart local v42    # "personaId":I
    const-string v70, "PersonaManagerServiceHandler"

    const-string v71, "PersonaHandler:: UnInstalling of Thirdparty apps for reset persona is done"

    invoke-static/range {v70 .. v71}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static/range {v70 .. v70}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v70

    invoke-static/range {v70 .. v70}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v30

    .line 3222
    .local v30, "mEpm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    const-string v70, "PersonaManagerServiceHandler"

    const-string v71, " PersonaHandler:: resetting file system "

    invoke-static/range {v70 .. v71}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3227
    const-string v70, "PersonaManagerServiceHandler"

    new-instance v71, Ljava/lang/StringBuilder;

    invoke-direct/range {v71 .. v71}, Ljava/lang/StringBuilder;-><init>()V

    const-string v72, " resetPersona: resetting persona :"

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    move-object/from16 v0, v71

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v71

    invoke-virtual/range {v71 .. v71}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v71

    invoke-static/range {v70 .. v71}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3228
    move-object/from16 v0, v30

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->resetPartition(I)Z

    move-result v57

    .line 3229
    .local v57, "ret":Z
    const-string v70, "PersonaManagerServiceHandler"

    new-instance v71, Ljava/lang/StringBuilder;

    invoke-direct/range {v71 .. v71}, Ljava/lang/StringBuilder;-><init>()V

    const-string v72, " resetPersona: ret value of EPM resetPartition():"

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    move-object/from16 v0, v71

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v71

    invoke-virtual/range {v71 .. v71}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v71

    invoke-static/range {v70 .. v71}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    move-object/from16 v0, v70

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v25

    .line 3232
    .local v25, "info":Landroid/content/pm/PersonaInfo;
    if-eqz v25, :cond_1c

    move-object/from16 v0, v25

    iget-boolean v0, v0, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    move/from16 v70, v0

    if-nez v70, :cond_1

    .line 3236
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    const/16 v71, 0x0

    move-object/from16 v0, v70

    move/from16 v1, v42

    move/from16 v2, v71

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PersonaManagerService;->setPersonaState(II)V

    goto/16 :goto_0

    .line 3241
    .end local v25    # "info":Landroid/content/pm/PersonaInfo;
    .end local v30    # "mEpm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    .end local v42    # "personaId":I
    .end local v57    # "ret":Z
    :pswitch_10
    const-string v70, "PersonaManagerServiceHandler"

    new-instance v71, Ljava/lang/StringBuilder;

    invoke-direct/range {v71 .. v71}, Ljava/lang/StringBuilder;-><init>()V

    const-string v72, "PersonaHandler.MSG_START_RESET_PERSONA_AFTER_SWITCH is called for personaId - "

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v72, v0

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v71

    invoke-virtual/range {v71 .. v71}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v71

    invoke-static/range {v70 .. v71}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3244
    :try_start_12
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v42, v0

    .line 3245
    .restart local v42    # "personaId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;
    invoke-static/range {v70 .. v70}, Lcom/android/server/pm/PersonaManagerService;->access$2800(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseArray;

    move-result-object v70

    move-object/from16 v0, v70

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Landroid/content/pm/PersonaInfo;

    .line 3246
    .restart local v44    # "personaInfo":Landroid/content/pm/PersonaInfo;
    if-nez v44, :cond_1d

    .line 3247
    const-string v70, "PersonaManagerServiceHandler"

    const-string v71, "PersonaHandler no personaInfo for this persona"

    invoke-static/range {v70 .. v71}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_6

    goto/16 :goto_1

    .line 3261
    .end local v42    # "personaId":I
    .end local v44    # "personaInfo":Landroid/content/pm/PersonaInfo;
    :catch_6
    move-exception v14

    .line 3262
    .restart local v14    # "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 3251
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v42    # "personaId":I
    .restart local v44    # "personaInfo":Landroid/content/pm/PersonaInfo;
    :cond_1d
    :try_start_13
    invoke-virtual/range {v44 .. v44}, Landroid/content/pm/PersonaInfo;->getParentId()I

    move-result v40

    .line 3252
    .restart local v40    # "parentUserId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    move-object/from16 v0, v70

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->switchPersona(I)Z

    move-result v56

    .line 3253
    .restart local v56    # "result":Z
    if-eqz v56, :cond_1e

    .line 3254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    const/16 v71, 0x0

    move-object/from16 v0, v70

    move/from16 v1, v42

    move/from16 v2, v71

    # invokes: Lcom/android/server/pm/PersonaManagerService;->startResetPersona(IZ)I
    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PersonaManagerService;->access$2500(Lcom/android/server/pm/PersonaManagerService;IZ)I

    move-result v9

    .line 3255
    .restart local v9    # "code":I
    const-string v70, "PersonaManagerServiceHandler"

    new-instance v71, Ljava/lang/StringBuilder;

    invoke-direct/range {v71 .. v71}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v72, "startResetPersona return code is "

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    move-object/from16 v0, v71

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v71

    invoke-virtual/range {v71 .. v71}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v71

    invoke-static/range {v70 .. v71}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3258
    .end local v9    # "code":I
    :cond_1e
    const-string v70, "PersonaManagerServiceHandler"

    const-string v71, "Failed to switch persona. Aborted reset of persona..."

    invoke-static/range {v70 .. v71}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_6

    goto/16 :goto_0

    .line 3268
    .end local v40    # "parentUserId":I
    .end local v42    # "personaId":I
    .end local v44    # "personaInfo":Landroid/content/pm/PersonaInfo;
    .end local v56    # "result":Z
    :pswitch_11
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v42, v0

    .line 3269
    .restart local v42    # "personaId":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v61, v0

    .line 3270
    .local v61, "state":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    move-object/from16 v0, v70

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->getAdminUidForPersona(I)I

    move-result v6

    .line 3271
    .local v6, "adminUid":I
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v70

    invoke-static/range {v70 .. v70}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 3272
    .local v10, "currentUser":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;
    invoke-static/range {v70 .. v70}, Lcom/android/server/pm/PersonaManagerService;->access$2800(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseArray;

    move-result-object v70

    move-object/from16 v0, v70

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Landroid/content/pm/PersonaInfo;

    .line 3273
    .restart local v44    # "personaInfo":Landroid/content/pm/PersonaInfo;
    if-nez v44, :cond_1f

    .line 3274
    const-string v70, "PersonaManagerServiceHandler"

    const-string v71, "PersonaHandler no personaInfo for this persona"

    invoke-static/range {v70 .. v71}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3278
    :cond_1f
    invoke-virtual/range {v44 .. v44}, Landroid/content/pm/PersonaInfo;->getParentId()I

    move-result v40

    .line 3279
    .restart local v40    # "parentUserId":I
    const-string v70, "PersonaManagerServiceHandler"

    new-instance v71, Ljava/lang/StringBuilder;

    invoke-direct/range {v71 .. v71}, Ljava/lang/StringBuilder;-><init>()V

    const-string v72, "MSG_SUPER_LOCK_PERSONA: "

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    move-object/from16 v0, v71

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v71

    const-string v72, " "

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v72

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v71

    const-string v72, " adminUid= "

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    move-object/from16 v0, v71

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v71

    invoke-virtual/range {v71 .. v71}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v71

    invoke-static/range {v70 .. v71}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3280
    const/16 v56, 0x1

    .line 3281
    .restart local v56    # "result":Z
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v70

    move/from16 v0, v42

    move/from16 v1, v70

    if-ne v0, v1, :cond_20

    .line 3282
    const-string v70, "PersonaManagerServiceHandler"

    const-string v71, "MSG_SUPER_LOCK_PERSONA: switching to owner"

    invoke-static/range {v70 .. v71}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    move-object/from16 v0, v70

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->switchPersona(I)Z

    move-result v56

    .line 3285
    :cond_20
    const/16 v70, 0x8

    move/from16 v0, v61

    move/from16 v1, v70

    if-ne v0, v1, :cond_21

    .line 3286
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v70

    move/from16 v0, v70

    move/from16 v1, v42

    if-ne v0, v1, :cond_21

    .line 3287
    const/16 v56, 0x0

    .line 3288
    const-string v70, "PersonaManagerServiceHandler"

    const-string v71, "MSG_SUPER_LOCK_PERSONA: BYOD case, don\'t stop Persona"

    invoke-static/range {v70 .. v71}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3291
    :cond_21
    const/16 v55, -0x1

    .line 3292
    .local v55, "res":I
    if-eqz v56, :cond_22

    .line 3293
    const-string v70, "PersonaManagerServiceHandler"

    const-string/jumbo v71, "stopPersona persona..."

    invoke-static/range {v70 .. v71}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    move-object/from16 v0, v70

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->stopPersona(I)I

    move-result v55

    .line 3295
    if-eqz v55, :cond_22

    .line 3296
    const-string v70, "PersonaManagerService"

    new-instance v71, Ljava/lang/StringBuilder;

    invoke-direct/range {v71 .. v71}, Ljava/lang/StringBuilder;-><init>()V

    const-string v72, "ActivityManagerNative.getDefault().stopUser failed to execure with error code:"

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    move-object/from16 v0, v71

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v71

    invoke-virtual/range {v71 .. v71}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v71

    invoke-static/range {v70 .. v71}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3300
    :cond_22
    if-nez v56, :cond_23

    const/16 v70, 0x8

    move/from16 v0, v61

    move/from16 v1, v70

    if-eq v0, v1, :cond_24

    :cond_23
    if-eqz v55, :cond_0

    .line 3303
    :cond_24
    new-instance v16, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static/range {v70 .. v70}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v70

    move-object/from16 v0, v16

    move-object/from16 v1, v70

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 3304
    .restart local v16    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    move-object/from16 v0, v16

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v37

    .line 3305
    .restart local v37    # "ownerUid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static/range {v70 .. v70}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v70

    move-object/from16 v0, v70

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v51

    .line 3306
    .local v51, "pkgNames":[Ljava/lang/String;
    if-eqz v51, :cond_25

    .line 3307
    move-object/from16 v7, v51

    .local v7, "arr$":[Ljava/lang/String;
    array-length v0, v7

    move/from16 v29, v0

    .local v29, "len$":I
    const/16 v23, 0x0

    .local v23, "i$":I
    :goto_e
    move/from16 v0, v23

    move/from16 v1, v29

    if-ge v0, v1, :cond_26

    aget-object v50, v7, v23

    .line 3308
    .local v50, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    move-object/from16 v0, v70

    move-object/from16 v1, v50

    move/from16 v2, v42

    move/from16 v3, v37

    # invokes: Lcom/android/server/pm/PersonaManagerService;->sendIntentForAdminLock(Ljava/lang/String;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/pm/PersonaManagerService;->access$2900(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;II)V

    .line 3307
    add-int/lit8 v23, v23, 0x1

    goto :goto_e

    .line 3311
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v23    # "i$":I
    .end local v29    # "len$":I
    .end local v50    # "pkgName":Ljava/lang/String;
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    const/16 v71, 0x0

    move-object/from16 v0, v70

    move-object/from16 v1, v71

    move/from16 v2, v42

    move/from16 v3, v37

    # invokes: Lcom/android/server/pm/PersonaManagerService;->sendIntentForAdminLock(Ljava/lang/String;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/pm/PersonaManagerService;->access$2900(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;II)V

    .line 3313
    :cond_26
    const/16 v70, 0x0

    move/from16 v0, v70

    move-object/from16 v1, v44

    iput-boolean v0, v1, Landroid/content/pm/PersonaInfo;->lockInProgress:Z

    goto/16 :goto_0

    .line 3319
    .end local v6    # "adminUid":I
    .end local v10    # "currentUser":Ljava/lang/Integer;
    .end local v16    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v37    # "ownerUid":I
    .end local v40    # "parentUserId":I
    .end local v42    # "personaId":I
    .end local v44    # "personaInfo":Landroid/content/pm/PersonaInfo;
    .end local v51    # "pkgNames":[Ljava/lang/String;
    .end local v55    # "res":I
    .end local v56    # "result":Z
    .end local v61    # "state":I
    :pswitch_12
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v42, v0

    .line 3320
    .restart local v42    # "personaId":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v70, v0

    const/16 v71, 0x1

    move/from16 v0, v70

    move/from16 v1, v71

    if-ne v0, v1, :cond_27

    const/16 v54, 0x1

    .line 3321
    .local v54, "removePersona":Z
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;
    invoke-static/range {v70 .. v70}, Lcom/android/server/pm/PersonaManagerService;->access$2800(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseArray;

    move-result-object v70

    move-object/from16 v0, v70

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/content/pm/PersonaInfo;

    .line 3322
    .restart local v38    # "pInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v54, :cond_28

    .line 3323
    const-string v70, "PersonaManagerService"

    const-string/jumbo v71, "userStopped triggered clearing recent tasks  and removal process..."

    invoke-static/range {v70 .. v71}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3324
    invoke-static/range {v42 .. v42}, Lcom/android/server/am/ActivityManagerService;->clearRecentTasks(I)Z

    .line 3325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    move-object/from16 v0, v70

    move/from16 v1, v42

    # invokes: Lcom/android/server/pm/PersonaManagerService;->removePersonaHelper(I)V
    invoke-static {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->access$1900(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_0

    .line 3320
    .end local v38    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v54    # "removePersona":Z
    :cond_27
    const/16 v54, 0x0

    goto :goto_f

    .line 3326
    .restart local v38    # "pInfo":Landroid/content/pm/PersonaInfo;
    .restart local v54    # "removePersona":Z
    :cond_28
    if-eqz v38, :cond_0

    move-object/from16 v0, v38

    iget-boolean v0, v0, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z

    move/from16 v70, v0

    if-eqz v70, :cond_0

    invoke-virtual/range {v38 .. v38}, Landroid/content/pm/PersonaInfo;->isSecureFileSystem()Z

    move-result v70

    if-eqz v70, :cond_0

    .line 3328
    :try_start_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mFSHandler:Lcom/sec/knox/container/util/KnoxFileHandler;
    invoke-static/range {v70 .. v70}, Lcom/android/server/pm/PersonaManagerService;->access$2300(Lcom/android/server/pm/PersonaManagerService;)Lcom/sec/knox/container/util/KnoxFileHandler;

    move-result-object v70

    move-object/from16 v0, v70

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/util/KnoxFileHandler;->unmount(I)Z

    move-result v58

    .line 3329
    .local v58, "retVal":Z
    const-string v70, "PersonaManagerService"

    new-instance v71, Ljava/lang/StringBuilder;

    invoke-direct/range {v71 .. v71}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v72, "unmounting file system due to super lock: "

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    move-object/from16 v0, v71

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v71

    invoke-virtual/range {v71 .. v71}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v71

    invoke-static/range {v70 .. v71}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3331
    move-object/from16 v0, v38

    iget v0, v0, Landroid/content/pm/PersonaInfo;->state:I

    move/from16 v70, v0

    const/16 v71, 0x8

    move/from16 v0, v70

    move/from16 v1, v71

    if-ne v0, v1, :cond_2a

    .line 3332
    new-instance v16, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static/range {v70 .. v70}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v70

    move-object/from16 v0, v16

    move-object/from16 v1, v70

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 3333
    .restart local v16    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    move-object/from16 v0, v16

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v37

    .line 3334
    .restart local v37    # "ownerUid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static/range {v70 .. v70}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v70

    move-object/from16 v0, v70

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v51

    .line 3335
    .restart local v51    # "pkgNames":[Ljava/lang/String;
    if-eqz v51, :cond_29

    .line 3336
    move-object/from16 v7, v51

    .restart local v7    # "arr$":[Ljava/lang/String;
    array-length v0, v7

    move/from16 v29, v0

    .restart local v29    # "len$":I
    const/16 v23, 0x0

    .restart local v23    # "i$":I
    :goto_10
    move/from16 v0, v23

    move/from16 v1, v29

    if-ge v0, v1, :cond_2a

    aget-object v50, v7, v23

    .line 3337
    .restart local v50    # "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    move-object/from16 v0, v70

    move-object/from16 v1, v50

    move/from16 v2, v42

    move/from16 v3, v37

    # invokes: Lcom/android/server/pm/PersonaManagerService;->sendIntentForAdminLock(Ljava/lang/String;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/pm/PersonaManagerService;->access$2900(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;II)V

    .line 3336
    add-int/lit8 v23, v23, 0x1

    goto :goto_10

    .line 3340
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v23    # "i$":I
    .end local v29    # "len$":I
    .end local v50    # "pkgName":Ljava/lang/String;
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v70, v0

    const/16 v71, 0x0

    move-object/from16 v0, v70

    move-object/from16 v1, v71

    move/from16 v2, v42

    move/from16 v3, v37

    # invokes: Lcom/android/server/pm/PersonaManagerService;->sendIntentForAdminLock(Ljava/lang/String;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/pm/PersonaManagerService;->access$2900(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;II)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_7
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    .line 3346
    .end local v16    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v37    # "ownerUid":I
    .end local v51    # "pkgNames":[Ljava/lang/String;
    :cond_2a
    const/16 v70, 0x0

    move/from16 v0, v70

    move-object/from16 v1, v38

    iput-boolean v0, v1, Landroid/content/pm/PersonaInfo;->lockInProgress:Z

    goto/16 :goto_0

    .line 3343
    .end local v58    # "retVal":Z
    :catch_7
    move-exception v53

    .line 3344
    .local v53, "re":Landroid/os/RemoteException;
    :try_start_15
    const-string v70, "PersonaManagerService"

    const-string v71, "Failed to unmount file system on super lock."

    invoke-static/range {v70 .. v71}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    .line 3346
    const/16 v70, 0x0

    move/from16 v0, v70

    move-object/from16 v1, v38

    iput-boolean v0, v1, Landroid/content/pm/PersonaInfo;->lockInProgress:Z

    goto/16 :goto_0

    .end local v53    # "re":Landroid/os/RemoteException;
    :catchall_4
    move-exception v70

    const/16 v71, 0x0

    move/from16 v0, v71

    move-object/from16 v1, v38

    iput-boolean v0, v1, Landroid/content/pm/PersonaInfo;->lockInProgress:Z

    throw v70

    .line 2903
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_8
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_d
        :pswitch_b
        :pswitch_c
        :pswitch_9
        :pswitch_a
        :pswitch_12
        :pswitch_7
    .end packed-switch
.end method
