.class Landroid/net/MultiSimMobileDataStateTracker$MultiSimMdstHandler;
.super Landroid/os/Handler;
.source "MultiSimMobileDataStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/MultiSimMobileDataStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MultiSimMdstHandler"
.end annotation


# instance fields
.field private mMdst:Landroid/net/MultiSimMobileDataStateTracker;


# direct methods
.method constructor <init>(Landroid/os/Looper;Landroid/net/MultiSimMobileDataStateTracker;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "mdst"    # Landroid/net/MultiSimMobileDataStateTracker;

    .prologue
    .line 120
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 121
    iput-object p2, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMdstHandler;->mMdst:Landroid/net/MultiSimMobileDataStateTracker;

    .line 122
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 126
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 144
    iget-object v0, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMdstHandler;->mMdst:Landroid/net/MultiSimMobileDataStateTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignorning unknown message="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/MultiSimMobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 148
    :goto_0
    return-void

    .line 128
    :sswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMdstHandler;->mMdst:Landroid/net/MultiSimMobileDataStateTracker;

    const-string v1, "MdstHandler connected"

    invoke-virtual {v0, v1}, Landroid/net/MultiSimMobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMdstHandler;->mMdst:Landroid/net/MultiSimMobileDataStateTracker;

    # getter for: Landroid/net/MultiSimMobileDataStateTracker;->mDataConnectionTrackerAcs:[Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Landroid/net/MultiSimMobileDataStateTracker;->access$100(Landroid/net/MultiSimMobileDataStateTracker;)[Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/util/AsyncChannel;

    aput-object v0, v1, v2

    goto :goto_0

    .line 135
    :cond_0
    iget-object v0, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMdstHandler;->mMdst:Landroid/net/MultiSimMobileDataStateTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MdstHandler %s NOT connected error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/MultiSimMobileDataStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :sswitch_1
    iget-object v0, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMdstHandler;->mMdst:Landroid/net/MultiSimMobileDataStateTracker;

    const-string v1, "Disconnected from DataStateTracker"

    invoke-virtual {v0, v1}, Landroid/net/MultiSimMobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMdstHandler;->mMdst:Landroid/net/MultiSimMobileDataStateTracker;

    # getter for: Landroid/net/MultiSimMobileDataStateTracker;->mDataConnectionTrackerAcs:[Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Landroid/net/MultiSimMobileDataStateTracker;->access$100(Landroid/net/MultiSimMobileDataStateTracker;)[Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg2:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    goto :goto_0

    .line 126
    :sswitch_data_0
    .sparse-switch
        0x11000 -> :sswitch_0
        0x11004 -> :sswitch_1
    .end sparse-switch
.end method
