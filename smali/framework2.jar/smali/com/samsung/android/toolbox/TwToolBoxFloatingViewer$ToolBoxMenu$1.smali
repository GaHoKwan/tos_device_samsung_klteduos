.class Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu$1;
.super Ljava/lang/Object;
.source "TwToolBoxFloatingViewer.java"

# interfaces
.implements Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;


# direct methods
.method constructor <init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 648
    iput-object p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu$1;->this$1:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    iput-object p2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu$1;->val$this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    iput-object p3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAction()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 650
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu$1;->val$packageName:Ljava/lang/String;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 651
    .local v2, "data":[Ljava/lang/String;
    if-nez v2, :cond_1

    .line 675
    :cond_0
    :goto_0
    return-void

    .line 652
    :cond_1
    array-length v5, v2

    if-lez v5, :cond_2

    const/4 v5, 0x0

    aget-object v4, v2, v5

    .line 653
    .local v4, "pkgName":Ljava/lang/String;
    :goto_1
    array-length v5, v2

    if-le v5, v7, :cond_3

    aget-object v0, v2, v7

    .line 654
    .local v0, "activityName":Ljava/lang/String;
    :goto_2
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 655
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 656
    const/high16 v5, 0x10200000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 657
    if-eqz v3, :cond_0

    .line 658
    const-string v5, "00"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 659
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 670
    :goto_3
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 673
    :goto_4
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu$1;->this$1:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    iget-object v5, v5, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # invokes: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->startActivityOrTask(Landroid/content/Intent;)V
    invoke-static {v5, v3}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$3100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Landroid/content/Intent;)V

    goto :goto_0

    .line 652
    .end local v0    # "activityName":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "pkgName":Ljava/lang/String;
    :cond_2
    const-string v4, "00"

    goto :goto_1

    .line 653
    .restart local v4    # "pkgName":Ljava/lang/String;
    :cond_3
    const-string v0, "00"

    goto :goto_2

    .line 662
    .restart local v0    # "activityName":Ljava/lang/String;
    .restart local v3    # "intent":Landroid/content/Intent;
    :cond_4
    :try_start_1
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    .local v1, "cm":Landroid/content/ComponentName;
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 664
    .end local v1    # "cm":Landroid/content/ComponentName;
    :catch_0
    move-exception v5

    goto :goto_3

    .line 671
    :catch_1
    move-exception v5

    goto :goto_4
.end method
