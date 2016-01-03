.class public Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;
.super Landroid/hardware/scontext/provider/caeprovider/CaeProvider;
.source "ActivityNotificationImpl.java"


# instance fields
.field private mActivityFilterMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/scontext/SContextService$Listener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/scontext/provider/EventListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/hardware/scontext/provider/EventListener;

    .prologue
    .line 43
    const/16 v0, 0x1b

    invoke-direct {p0, p1, v0, p2}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;-><init>(Landroid/content/Context;ILandroid/hardware/scontext/provider/EventListener;)V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;->mActivityFilterMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 45
    invoke-super {p0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->getManager()Landroid/hardware/contextaware/ContextAwareManager;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    .line 46
    return-void
.end method


# virtual methods
.method public add()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;->mActivityFilterMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 57
    return-void
.end method

.method public addAction(Landroid/hardware/scontext/SContextService$Listener;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "listener"    # Landroid/hardware/scontext/SContextService$Listener;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 91
    const-string v3, "activity_notification_activity_filter"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 92
    .local v0, "actions":[I
    const/4 v2, 0x0

    .line 93
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/scontext/SContextService$Listener;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 94
    iget-object v3, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;->mActivityFilterMap:Ljava/util/concurrent/ConcurrentHashMap;

    aget v4, v0, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    iget-object v3, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;->mActivityFilterMap:Ljava/util/concurrent/ConcurrentHashMap;

    aget v4, v0, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/scontext/SContextService$Listener;>;"
    check-cast v2, Ljava/util/ArrayList;

    .line 105
    .restart local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/scontext/SContextService$Listener;>;"
    :goto_1
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v3, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;->mActivityFilterMap:Ljava/util/concurrent/ConcurrentHashMap;

    aget v4, v0, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/scontext/SContextService$Listener;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .restart local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/scontext/SContextService$Listener;>;"
    iget-object v3, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v4, Landroid/hardware/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_INTERRUPT_SERVICE:I

    const/16 v5, 0x25

    aget v6, v0, v1

    invoke-virtual {v3, v4, v5, v6}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 102
    iget-object v3, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    invoke-super {p0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->getListener()Landroid/hardware/contextaware/manager/ContextAwareListener;

    move-result-object v4

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_INTERRUPT_SERVICE:I

    invoke-virtual {v3, v4, v5}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_1

    .line 108
    :cond_1
    return-void
.end method

.method public getActionListener(I)Ljava/util/ArrayList;
    .locals 2
    .param p1, "action"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/scontext/SContextService$Listener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;->mActivityFilterMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public remove()V
    .locals 4

    .prologue
    .line 66
    invoke-super {p0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->remove()V

    .line 68
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;->mActivityFilterMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 69
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v1, Landroid/hardware/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_INTERRUPT_SERVICE:I

    const/16 v2, 0x25

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 72
    return-void
.end method

.method public removeAction(Landroid/hardware/scontext/SContextService$Listener;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "listener"    # Landroid/hardware/scontext/SContextService$Listener;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 117
    const-string v4, "activity_notification_activity_filter"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 118
    .local v0, "actions":[I
    const/4 v3, 0x0

    .line 119
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/scontext/SContextService$Listener;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_1

    .line 120
    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;->mActivityFilterMap:Ljava/util/concurrent/ConcurrentHashMap;

    aget v5, v0, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/scontext/SContextService$Listener;>;"
    check-cast v3, Ljava/util/ArrayList;

    .line 121
    .restart local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/scontext/SContextService$Listener;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 122
    .local v1, "activityUsed":I
    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    .line 123
    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_INTERRUPT_SERVICE:I

    const/16 v6, 0x25

    aget v7, v0, v2

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 127
    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    invoke-super {p0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->getListener()Landroid/hardware/contextaware/manager/ContextAwareListener;

    move-result-object v5

    sget v6, Landroid/hardware/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_INTERRUPT_SERVICE:I

    invoke-virtual {v4, v5, v6}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    .line 129
    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;->mActivityFilterMap:Ljava/util/concurrent/ConcurrentHashMap;

    aget v5, v0, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 132
    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;->mActivityFilterMap:Ljava/util/concurrent/ConcurrentHashMap;

    aget v5, v0, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 135
    .end local v1    # "activityUsed":I
    :cond_1
    return-void
.end method

.method public setProperty(ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "service"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 82
    return-void
.end method
