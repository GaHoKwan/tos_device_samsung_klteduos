.class final Landroid/hardware/scontext/SContextService$ServiceHandler;
.super Landroid/os/Handler;
.source "SContextService.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/SContextService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/scontext/SContextService;


# direct methods
.method public constructor <init>(Landroid/hardware/scontext/SContextService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 695
    iput-object p1, p0, Landroid/hardware/scontext/SContextService$ServiceHandler;->this$0:Landroid/hardware/scontext/SContextService;

    .line 696
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 697
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 705
    if-nez p1, :cond_1

    .line 736
    :cond_0
    :goto_0
    return-void

    .line 708
    :cond_1
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/scontext/SContextEvent;

    .line 709
    .local v4, "scontextEvent":Landroid/hardware/scontext/SContextEvent;
    if-eqz v4, :cond_0

    .line 712
    iget-object v6, v4, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    invoke-virtual {v6}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v5

    .line 713
    .local v5, "service":I
    const/4 v2, 0x0

    .line 715
    .local v2, "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/scontext/SContextService$Listener;>;"
    iget-object v6, p0, Landroid/hardware/scontext/SContextService$ServiceHandler;->this$0:Landroid/hardware/scontext/SContextService;

    # getter for: Landroid/hardware/scontext/SContextService;->mLatestRegisteredListenerMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v6}, Landroid/hardware/scontext/SContextService;->access$900(Landroid/hardware/scontext/SContextService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 716
    iget-object v6, p0, Landroid/hardware/scontext/SContextService$ServiceHandler;->this$0:Landroid/hardware/scontext/SContextService;

    # getter for: Landroid/hardware/scontext/SContextService;->mLatestRegisteredListenerMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v6}, Landroid/hardware/scontext/SContextService;->access$900(Landroid/hardware/scontext/SContextService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/scontext/SContextService$Listener;

    invoke-virtual {v6, v4}, Landroid/hardware/scontext/SContextService$Listener;->callback(Landroid/hardware/scontext/SContextEvent;)V

    .line 717
    iget-object v6, p0, Landroid/hardware/scontext/SContextService$ServiceHandler;->this$0:Landroid/hardware/scontext/SContextService;

    # getter for: Landroid/hardware/scontext/SContextService;->mLatestRegisteredListenerMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v6}, Landroid/hardware/scontext/SContextService;->access$900(Landroid/hardware/scontext/SContextService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 719
    :cond_2
    const/16 v6, 0x1b

    if-ne v5, v6, :cond_4

    .line 720
    invoke-virtual {v4}, Landroid/hardware/scontext/SContextEvent;->getActivityNotificationContext()Landroid/hardware/scontext/SContextActivityNotification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/scontext/SContextActivityNotification;->getStatus()I

    move-result v0

    .line 722
    .local v0, "action":I
    # getter for: Landroid/hardware/scontext/SContextService;->mProviderMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Landroid/hardware/scontext/SContextService;->access$500()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 723
    # getter for: Landroid/hardware/scontext/SContextService;->mProviderMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Landroid/hardware/scontext/SContextService;->access$500()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;

    invoke-virtual {v6, v0}, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;->getActionListener(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 729
    .end local v0    # "action":I
    :cond_3
    :goto_1
    if-eqz v2, :cond_0

    .line 730
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/scontext/SContextService$Listener;>;"
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 731
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/scontext/SContextService$Listener;

    .line 732
    .local v3, "next":Landroid/hardware/scontext/SContextService$Listener;
    invoke-virtual {v3, v4}, Landroid/hardware/scontext/SContextService$Listener;->callback(Landroid/hardware/scontext/SContextEvent;)V

    goto :goto_2

    .line 727
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/scontext/SContextService$Listener;>;"
    .end local v3    # "next":Landroid/hardware/scontext/SContextService$Listener;
    :cond_4
    iget-object v6, p0, Landroid/hardware/scontext/SContextService$ServiceHandler;->this$0:Landroid/hardware/scontext/SContextService;

    # getter for: Landroid/hardware/scontext/SContextService;->mUsedServiceMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v6}, Landroid/hardware/scontext/SContextService;->access$400(Landroid/hardware/scontext/SContextService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/scontext/SContextService$Listener;>;"
    check-cast v2, Ljava/util/ArrayList;

    .restart local v2    # "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/scontext/SContextService$Listener;>;"
    goto :goto_1
.end method
