.class Lcom/android/server/enterprise/auditlog/CircularBuffer$1;
.super Ljava/util/TimerTask;
.source "CircularBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/auditlog/CircularBuffer;->tictacForDeprecation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field pfn:Lcom/android/server/enterprise/auditlog/PartialFileNode;

.field final synthetic this$0:Lcom/android/server/enterprise/auditlog/CircularBuffer;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/auditlog/CircularBuffer;)V
    .locals 1

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer$1;->this$0:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer$1;->pfn:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 176
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer$1;->this$0:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    # getter for: Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->access$000(Lcom/android/server/enterprise/auditlog/CircularBuffer;)Ljava/util/List;

    move-result-object v2

    monitor-enter v2

    .line 177
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer$1;->this$0:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    # getter for: Lcom/android/server/enterprise/auditlog/CircularBuffer;->mDumpList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->access$000(Lcom/android/server/enterprise/auditlog/CircularBuffer;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 178
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 179
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    iput-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer$1;->pfn:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    .line 180
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer$1;->pfn:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->isDeprecated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer$1;->pfn:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getTimestamp()J

    move-result-wide v3

    const-wide/32 v5, 0x5265c00

    add-long/2addr v3, v5

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-gtz v1, :cond_1

    .line 184
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer$1;->pfn:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->setDeprecated(Z)Z

    .line 185
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer$1;->this$0:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer$1;->pfn:Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v3}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFileSize()J

    move-result-wide v3

    # -= operator for: Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J
    invoke-static {v1, v3, v4}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->access$122(Lcom/android/server/enterprise/auditlog/CircularBuffer;J)J

    .line 186
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer$1;->this$0:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer$1;->this$0:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    # operator++ for: Lcom/android/server/enterprise/auditlog/CircularBuffer;->mNumberOfDeprecatedFiles:I
    invoke-static {v3}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->access$208(Lcom/android/server/enterprise/auditlog/CircularBuffer;)I

    move-result v3

    # invokes: Lcom/android/server/enterprise/auditlog/CircularBuffer;->setNumberOfDeprecatedFiles(I)V
    invoke-static {v1, v3}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->access$300(Lcom/android/server/enterprise/auditlog/CircularBuffer;I)V

    .line 190
    :cond_1
    monitor-exit v2

    .line 191
    return-void

    .line 190
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/PartialFileNode;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
