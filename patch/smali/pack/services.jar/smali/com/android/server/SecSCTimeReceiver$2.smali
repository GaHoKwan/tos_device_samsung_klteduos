.class Lcom/android/server/SecSCTimeReceiver$2;
.super Ljava/lang/Object;
.source "SecSCTimeReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/SecSCTimeReceiver;->sec_sctime_handleAutoTimeUpdation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SecSCTimeReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/SecSCTimeReceiver;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/android/server/SecSCTimeReceiver$2;->this$0:Lcom/android/server/SecSCTimeReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 272
    new-instance v0, Landroid/net/SntpClient;

    invoke-direct {v0}, Landroid/net/SntpClient;-><init>()V

    .line 273
    .local v0, "client":Landroid/net/SntpClient;
    const-wide/16 v1, -0x1

    .local v1, "networktime":J
    const-wide/16 v3, -0x1

    .line 275
    .local v3, "systemtime":J
    const-string v5, "SecSCTimeReceiver"

    const-string v6, "set diff to zero, handleAutoTimeUpdation()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long v3, v5, v7

    .line 278
    iget-object v5, p0, Lcom/android/server/SecSCTimeReceiver$2;->this$0:Lcom/android/server/SecSCTimeReceiver;

    invoke-virtual {v5, v3, v4, v3, v4}, Lcom/android/server/SecSCTimeReceiver;->onNetworkTimeReceived(JJ)V

    .line 290
    return-void
.end method
