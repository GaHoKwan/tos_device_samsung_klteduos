.class Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;
.super Lcom/samsung/android/cocktailbar/ICocktailHost$Stub;
.source "CocktailHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cocktailbar/CocktailHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Callbacks"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/cocktailbar/CocktailHost;


# direct methods
.method constructor <init>(Lcom/samsung/android/cocktailbar/CocktailHost;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/ICocktailHost$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public closeContextualCocktail(II)V
    .locals 3
    .param p1, "cocktailId"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget-object v1, v1, Lcom/samsung/android/cocktailbar/CocktailHost;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 85
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 86
    return-void
.end method

.method public removeCocktail(II)V
    .locals 3
    .param p1, "cocktailId"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget-object v1, v1, Lcom/samsung/android/cocktailbar/CocktailHost;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 78
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 79
    return-void
.end method

.method public updateCocktail(ILcom/samsung/android/cocktailbar/Cocktail;I)V
    .locals 3
    .param p1, "cocktailId"    # I
    .param p2, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget-object v1, v1, Lcom/samsung/android/cocktailbar/CocktailHost;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1, p3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 71
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 72
    return-void
.end method

.method public updateToolLauncher(I)V
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 98
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget-object v1, v1, Lcom/samsung/android/cocktailbar/CocktailHost;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 99
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 100
    return-void
.end method

.method public viewDataChanged(III)V
    .locals 4
    .param p1, "cocktailId"    # I
    .param p2, "viewId"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget-object v1, v1, Lcom/samsung/android/cocktailbar/CocktailHost;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, p1, p2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 92
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 93
    return-void
.end method
