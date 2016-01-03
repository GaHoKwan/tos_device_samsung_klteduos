.class Lcom/samsung/android/airbutton/AirButtonImpl$10;
.super Ljava/lang/Object;
.source "AirButtonImpl.java"

# interfaces
.implements Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/airbutton/AirButtonImpl;->createQuickCommandOnItemSelector()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/airbutton/AirButtonImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/airbutton/AirButtonImpl;)V
    .locals 0

    .prologue
    .line 1582
    iput-object p1, p0, Lcom/samsung/android/airbutton/AirButtonImpl$10;->this$0:Lcom/samsung/android/airbutton/AirButtonImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/view/View;ILjava/lang/Object;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "itemIndex"    # I
    .param p3, "data"    # Ljava/lang/Object;

    .prologue
    const/high16 v4, 0x14000000

    const/4 v7, 0x1

    const/16 v6, 0x12c

    .line 1589
    const/4 v1, 0x0

    .line 1595
    .local v1, "intent":Landroid/content/Intent;
    packed-switch p2, :pswitch_data_0

    .line 1665
    :goto_0
    return-void

    .line 1607
    :pswitch_0
    const-string v4, "AirButtonImpl"

    const-string v5, "createGlobalAirButton : RakeIn launching "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1609
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v4, "com.sec.android.app.SmartClipService"

    const-string v5, "com.sec.android.app.SmartClipService.rakein.RakeInService"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1611
    const-string/jumbo v4, "selectIndex"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1612
    iget-object v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl$10;->this$0:Lcom/samsung/android/airbutton/AirButtonImpl;

    # getter for: Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/samsung/android/airbutton/AirButtonImpl;->access$800(Lcom/samsung/android/airbutton/AirButtonImpl;)Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    goto :goto_0

    .line 1630
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1631
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1632
    const-string v4, "com.sec.spen.flashannotatesvc"

    const-string v5, "com.sec.spen.flashannotatesvc.flashannotateservice"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1638
    iget-object v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl$10;->this$0:Lcom/samsung/android/airbutton/AirButtonImpl;

    # getter for: Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/samsung/android/airbutton/AirButtonImpl;->access$800(Lcom/samsung/android/airbutton/AirButtonImpl;)Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    goto :goto_0

    .line 1643
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1644
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1645
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.samsung.android.app.galaxyfinder"

    const-string v6, "com.samsung.android.app.galaxyfinder.GalaxyFinderActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1647
    const-string v4, "callername"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1648
    iget-object v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl$10;->this$0:Lcom/samsung/android/airbutton/AirButtonImpl;

    # getter for: Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/samsung/android/airbutton/AirButtonImpl;->access$800(Lcom/samsung/android/airbutton/AirButtonImpl;)Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 1652
    :pswitch_3
    const-string v4, "AirButtonImpl"

    const-string v5, "AirButton: GLOBAL_AIR_BUTTON_MULTIWINDOW "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v6, v6, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1654
    .local v2, "mDrawRect":Landroid/graphics/Rect;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.android.action.MULTIWINDOW_SMART_WINDOW_LAUNCH"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1655
    .local v3, "penPopupIntent":Landroid/content/Intent;
    const-string v4, "com.sec.android.app.FlashBarService"

    const-string v5, "com.sec.android.app.FlashBarService.MultiWindowTrayService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1657
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1658
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "cropRect"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1659
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1660
    iget-object v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl$10;->this$0:Lcom/samsung/android/airbutton/AirButtonImpl;

    # getter for: Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/samsung/android/airbutton/AirButtonImpl;->access$800(Lcom/samsung/android/airbutton/AirButtonImpl;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 1595
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
