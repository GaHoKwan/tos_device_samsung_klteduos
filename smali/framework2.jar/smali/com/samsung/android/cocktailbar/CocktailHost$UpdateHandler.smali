.class Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;
.super Landroid/os/Handler;
.source "CocktailHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cocktailbar/CocktailHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/cocktailbar/CocktailHost;


# direct methods
.method public constructor <init>(Lcom/samsung/android/cocktailbar/CocktailHost;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    .line 105
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 106
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 109
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 131
    :goto_0
    return-void

    .line 111
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/cocktailbar/Cocktail;

    iget v3, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/samsung/android/cocktailbar/CocktailHost;->updateCocktail(ILcom/samsung/android/cocktailbar/Cocktail;I)V
    invoke-static {v1, v2, v0, v3}, Lcom/samsung/android/cocktailbar/CocktailHost;->access$000(Lcom/samsung/android/cocktailbar/CocktailHost;ILcom/samsung/android/cocktailbar/Cocktail;I)V

    goto :goto_0

    .line 115
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/samsung/android/cocktailbar/CocktailHost;->removeCocktail(II)V
    invoke-static {v0, v1, v2}, Lcom/samsung/android/cocktailbar/CocktailHost;->access$100(Lcom/samsung/android/cocktailbar/CocktailHost;II)V

    goto :goto_0

    .line 119
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/samsung/android/cocktailbar/CocktailHost;->closeContextualCocktail(II)V
    invoke-static {v0, v1, v2}, Lcom/samsung/android/cocktailbar/CocktailHost;->access$200(Lcom/samsung/android/cocktailbar/CocktailHost;II)V

    goto :goto_0

    .line 123
    :pswitch_3
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    # invokes: Lcom/samsung/android/cocktailbar/CocktailHost;->viewDataChanged(III)V
    invoke-static {v1, v2, v3, v0}, Lcom/samsung/android/cocktailbar/CocktailHost;->access$300(Lcom/samsung/android/cocktailbar/CocktailHost;III)V

    goto :goto_0

    .line 127
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/samsung/android/cocktailbar/CocktailHost;->updateToolLauncher(I)V
    invoke-static {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailHost;->access$400(Lcom/samsung/android/cocktailbar/CocktailHost;I)V

    goto :goto_0

    .line 109
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
