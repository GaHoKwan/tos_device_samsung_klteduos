.class public Landroid/webkitsec/HtmlComposerView$ResultTransport;
.super Ljava/lang/Object;
.source "HtmlComposerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/HtmlComposerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResultTransport"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mParam:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/webkitsec/HtmlComposerView;


# direct methods
.method public constructor <init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;TE;)V"
        }
    .end annotation

    .prologue
    .line 6346
    .local p0, "this":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<TT;TE;>;"
    .local p2, "param":[Ljava/lang/Object;, "[TT;"
    .local p3, "defaultResult":Ljava/lang/Object;, "TE;"
    iput-object p1, p0, Landroid/webkitsec/HtmlComposerView$ResultTransport;->this$0:Landroid/webkitsec/HtmlComposerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6347
    iput-object p3, p0, Landroid/webkitsec/HtmlComposerView$ResultTransport;->mResult:Ljava/lang/Object;

    .line 6348
    iput-object p2, p0, Landroid/webkitsec/HtmlComposerView$ResultTransport;->mParam:[Ljava/lang/Object;

    .line 6349
    return-void
.end method


# virtual methods
.method public declared-synchronized getParams()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .prologue
    .line 6352
    .local p0, "this":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<TT;TE;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView$ResultTransport;->mParam:[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 6360
    .local p0, "this":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<TT;TE;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView$ResultTransport;->mResult:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setResult(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 6356
    .local p0, "this":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<TT;TE;>;"
    .local p1, "result":Ljava/lang/Object;, "TE;"
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroid/webkitsec/HtmlComposerView$ResultTransport;->mResult:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6357
    monitor-exit p0

    return-void

    .line 6356
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
