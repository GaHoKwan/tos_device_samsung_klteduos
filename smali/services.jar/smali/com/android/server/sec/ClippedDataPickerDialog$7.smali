.class Lcom/android/server/sec/ClippedDataPickerDialog$7;
.super Ljava/lang/Object;
.source "ClippedDataPickerDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sec/ClippedDataPickerDialog;->onMenuItemSelected(ILandroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

.field final synthetic val$currentMode:I

.field final synthetic val$data:Landroid/sec/clipboard/data/ClipboardData;


# direct methods
.method constructor <init>(Lcom/android/server/sec/ClippedDataPickerDialog;Landroid/sec/clipboard/data/ClipboardData;I)V
    .locals 0

    .prologue
    .line 1230
    iput-object p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog$7;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iput-object p2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$7;->val$data:Landroid/sec/clipboard/data/ClipboardData;

    iput p3, p0, Lcom/android/server/sec/ClippedDataPickerDialog$7;->val$currentMode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 1233
    const-string v6, ""

    .line 1234
    .local v6, "sendData":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/sec/ClippedDataPickerDialog$7;->val$data:Landroid/sec/clipboard/data/ClipboardData;

    invoke-virtual {v9}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 1263
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v4, 0x0

    .line 1264
    .local v4, "intent":Landroid/content/Intent;
    iget v9, p0, Lcom/android/server/sec/ClippedDataPickerDialog$7;->val$currentMode:I

    if-nez v9, :cond_2

    .line 1265
    new-instance v4, Landroid/content/Intent;

    .end local v4    # "intent":Landroid/content/Intent;
    const-string v9, "android.intent.action.CLIPBOARD_TO_MEMO_INSERT"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1270
    .restart local v4    # "intent":Landroid/content/Intent;
    :goto_1
    if-eqz v4, :cond_4

    iget-object v9, p0, Lcom/android/server/sec/ClippedDataPickerDialog$7;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    # getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$000(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/content/Context;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 1271
    const/16 v9, 0x20

    invoke-virtual {v4, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1272
    const-string/jumbo v9, "title"

    const-string v10, ""

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1273
    const-string v9, "content"

    invoke-virtual {v4, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1275
    iget-object v9, p0, Lcom/android/server/sec/ClippedDataPickerDialog$7;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-virtual {v9}, Lcom/android/server/sec/ClippedDataPickerDialog;->isKnoxTwoEnabled()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1276
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1277
    .local v2, "ident":J
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 1278
    .local v0, "currUser":I
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1279
    iget-object v9, p0, Lcom/android/server/sec/ClippedDataPickerDialog$7;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    # getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$000(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/content/Context;

    move-result-object v9

    new-instance v10, Landroid/os/UserHandle;

    invoke-direct {v10, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v9, v4, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1280
    sget-boolean v9, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v9, :cond_1

    const-string v9, "ClipboardServiceEx"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "UID :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    .end local v0    # "currUser":I
    .end local v2    # "ident":J
    :cond_1
    :goto_2
    return-void

    .line 1236
    .end local v4    # "intent":Landroid/content/Intent;
    :pswitch_1
    iget-object v7, p0, Lcom/android/server/sec/ClippedDataPickerDialog$7;->val$data:Landroid/sec/clipboard/data/ClipboardData;

    check-cast v7, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .line 1237
    .local v7, "textData":Landroid/sec/clipboard/data/list/ClipboardDataText;
    if-eqz v7, :cond_0

    .line 1238
    invoke-virtual {v7}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 1242
    .end local v7    # "textData":Landroid/sec/clipboard/data/list/ClipboardDataText;
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog$7;->val$data:Landroid/sec/clipboard/data/ClipboardData;

    check-cast v1, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    .line 1243
    .local v1, "htmlData":Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    if-eqz v1, :cond_0

    .line 1244
    invoke-virtual {v1}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->getText()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 1248
    .end local v1    # "htmlData":Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    :pswitch_3
    iget-object v8, p0, Lcom/android/server/sec/ClippedDataPickerDialog$7;->val$data:Landroid/sec/clipboard/data/ClipboardData;

    check-cast v8, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    .line 1249
    .local v8, "uriData":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    if-eqz v8, :cond_0

    .line 1250
    invoke-virtual {v8}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->GetUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 1254
    .end local v8    # "uriData":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    :pswitch_4
    iget-object v5, p0, Lcom/android/server/sec/ClippedDataPickerDialog$7;->val$data:Landroid/sec/clipboard/data/ClipboardData;

    check-cast v5, Landroid/sec/clipboard/data/list/ClipboardDataIntent;

    .line 1255
    .local v5, "intentData":Landroid/sec/clipboard/data/list/ClipboardDataIntent;
    if-eqz v5, :cond_0

    .line 1256
    invoke-virtual {v5}, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->GetIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 1267
    .end local v5    # "intentData":Landroid/sec/clipboard/data/list/ClipboardDataIntent;
    .restart local v4    # "intent":Landroid/content/Intent;
    :cond_2
    new-instance v4, Landroid/content/Intent;

    .end local v4    # "intent":Landroid/content/Intent;
    const-string v9, "sec_container_1.android.intent.action.CLIPBOARD_TO_MEMO_INSERT"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v4    # "intent":Landroid/content/Intent;
    goto/16 :goto_1

    .line 1283
    :cond_3
    iget-object v9, p0, Lcom/android/server/sec/ClippedDataPickerDialog$7;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    # getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$000(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    .line 1286
    :cond_4
    sget-boolean v9, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v9, :cond_1

    const-string v9, "ClipboardServiceEx"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Can not save content..currentMode :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/sec/ClippedDataPickerDialog$7;->val$currentMode:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", intent :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", sendData :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mContext :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/sec/ClippedDataPickerDialog$7;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    # getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$000(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1234
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
