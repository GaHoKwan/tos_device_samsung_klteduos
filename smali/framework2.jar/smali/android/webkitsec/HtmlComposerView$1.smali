.class Landroid/webkitsec/HtmlComposerView$1;
.super Landroid/content/BroadcastReceiver;
.source "HtmlComposerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/HtmlComposerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkitsec/HtmlComposerView;


# direct methods
.method constructor <init>(Landroid/webkitsec/HtmlComposerView;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Landroid/webkitsec/HtmlComposerView$1;->this$0:Landroid/webkitsec/HtmlComposerView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    .line 378
    const-string v4, "caller"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, "caller":Ljava/lang/String;
    const/4 v3, 0x0

    .line 381
    .local v3, "target_html_text":Ljava/lang/String;
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView$1;->this$0:Landroid/webkitsec/HtmlComposerView;

    # getter for: Landroid/webkitsec/HtmlComposerView;->mCaller:Ljava/lang/String;
    invoke-static {v4}, Landroid/webkitsec/HtmlComposerView;->access$000(Landroid/webkitsec/HtmlComposerView;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    if-eqz v0, :cond_2

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView$1;->this$0:Landroid/webkitsec/HtmlComposerView;

    # getter for: Landroid/webkitsec/HtmlComposerView;->mCaller:Ljava/lang/String;
    invoke-static {v4}, Landroid/webkitsec/HtmlComposerView;->access$000(Landroid/webkitsec/HtmlComposerView;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 382
    const-string/jumbo v4, "result_code"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 384
    .local v2, "resultCode":I
    if-ne v2, v6, :cond_0

    .line 385
    const-string/jumbo v4, "target_text"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 387
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView$1;->this$0:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v4}, Landroid/view/View;->isFocused()Z

    move-result v4

    if-ne v6, v4, :cond_0

    .line 388
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView$1;->this$0:Landroid/webkitsec/HtmlComposerView;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/webkitsec/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkitsec/HtmlComposerView$InsertionPosition;)Z

    .line 392
    :cond_0
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView$1;->this$0:Landroid/webkitsec/HtmlComposerView;

    iget-boolean v4, v4, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "HtmlComposerView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "target HTML text = ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_1
    :try_start_0
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView$1;->this$0:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView$1;->this$0:Landroid/webkitsec/HtmlComposerView;

    # getter for: Landroid/webkitsec/HtmlComposerView;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v5}, Landroid/webkitsec/HtmlComposerView;->access$100(Landroid/webkitsec/HtmlComposerView;)Landroid/content/BroadcastReceiver;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    .end local v2    # "resultCode":I
    :cond_2
    :goto_0
    return-void

    .line 396
    .restart local v2    # "resultCode":I
    :catch_0
    move-exception v1

    .line 397
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
