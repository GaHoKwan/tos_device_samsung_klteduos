.class Lcom/android/server/InputMethodManagerService$11;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/InputMethodManagerService;->showInputMethodMenuInternal(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .locals 0

    .prologue
    .line 4433
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$11;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 4437
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$11;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v3}, Lcom/android/server/InputMethodManagerService;->access$2400(Lcom/android/server/InputMethodManagerService;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    if-nez p2, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowManagerService;->setHardKeyboardEnabled(Z)V

    .line 4440
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$11;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v3}, Lcom/android/server/InputMethodManagerService;->hideInputMethodMenu()V

    .line 4442
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$11;->this$0:Lcom/android/server/InputMethodManagerService;

    # invokes: Lcom/android/server/InputMethodManagerService;->setOnScreenKeyboardSettingValue(Z)V
    invoke-static {v3, p2}, Lcom/android/server/InputMethodManagerService;->access$2500(Lcom/android/server/InputMethodManagerService;Z)V

    .line 4443
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$11;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mSwitchingDialogAdapter:Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;
    invoke-static {v3}, Lcom/android/server/InputMethodManagerService;->access$2600(Lcom/android/server/InputMethodManagerService;)Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 4444
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$11;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/android/server/InputMethodManagerService;->access$2000(Lcom/android/server/InputMethodManagerService;)Landroid/app/AlertDialog;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$11;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/android/server/InputMethodManagerService;->access$2000(Lcom/android/server/InputMethodManagerService;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4445
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$11;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/android/server/InputMethodManagerService;->access$2000(Lcom/android/server/InputMethodManagerService;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 4446
    .local v1, "listView":Landroid/widget/ListView;
    if-eqz v1, :cond_2

    .line 4447
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 4448
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4449
    .local v2, "view":Landroid/view/View;
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$11;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mSwitchingDialogAdapter:Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;
    invoke-static {v3}, Lcom/android/server/InputMethodManagerService;->access$2600(Lcom/android/server/InputMethodManagerService;)Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;

    move-result-object v3

    invoke-virtual {v3, p2, v2}, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->setAllListItemEnabled(ZLandroid/view/View;)V

    .line 4447
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4437
    .end local v0    # "i":I
    .end local v1    # "listView":Landroid/widget/ListView;
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 4451
    .restart local v0    # "i":I
    .restart local v1    # "listView":Landroid/widget/ListView;
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 4456
    .end local v0    # "i":I
    .end local v1    # "listView":Landroid/widget/ListView;
    :cond_2
    return-void
.end method
