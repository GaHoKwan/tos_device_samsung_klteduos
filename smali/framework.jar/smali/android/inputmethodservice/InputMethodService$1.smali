.class Landroid/inputmethodservice/InputMethodService$1;
.super Landroid/content/BroadcastReceiver;
.source "InputMethodService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/InputMethodService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/InputMethodService;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService$1;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 426
    const-string v13, "InputMethodService"

    const-string v14, "mBR.onReceive()"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    const-string v14, "RequestAxT9Info"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 429
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 430
    .local v11, "respInt":Landroid/content/Intent;
    const-string v13, "ResponseAxT9Info"

    invoke-virtual {v11, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 431
    const-string v13, "AxT9IME.isVisibleWindow"

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/inputmethodservice/InputMethodService$1;->this$0:Landroid/inputmethodservice/InputMethodService;

    # invokes: Landroid/inputmethodservice/InputMethodService;->getIsVisibleWindow()Z
    invoke-static {v14}, Landroid/inputmethodservice/InputMethodService;->access$000(Landroid/inputmethodservice/InputMethodService;)Z

    move-result v14

    invoke-virtual {v11, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 432
    const-string v13, "AxT9IME.isMovableKeypad"

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/inputmethodservice/InputMethodService$1;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v14}, Landroid/inputmethodservice/InputMethodService;->isMovable()Z

    move-result v14

    invoke-virtual {v11, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 433
    const-string v13, "AxT9IME.is3X4Keypad"

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/inputmethodservice/InputMethodService$1;->this$0:Landroid/inputmethodservice/InputMethodService;

    # invokes: Landroid/inputmethodservice/InputMethodService;->is34Keypad()Z
    invoke-static {v14}, Landroid/inputmethodservice/InputMethodService;->access$100(Landroid/inputmethodservice/InputMethodService;)Z

    move-result v14

    invoke-virtual {v11, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 434
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/inputmethodservice/InputMethodService$1;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v13, v11}, Landroid/inputmethodservice/InputMethodService;->sendBroadcast(Landroid/content/Intent;)V

    .line 535
    .end local v11    # "respInt":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    const-string v14, "com.sec.android.spc.eventcontrol.ACTION_SYNC_REMOTE_INPUT"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_14

    .line 436
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_6

    const/4 v1, 0x0

    .line 437
    .local v1, "DEBUG_HIGH":Z
    :goto_1
    if-eqz v1, :cond_2

    const-string v13, "InputMethodService"

    const-string v14, "[RCtrl-S] ACTION_SYNC_REMOTE_INPUT"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/inputmethodservice/InputMethodService$1;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v13, v13, Landroid/inputmethodservice/InputMethodService;->mSPCHandler:Landroid/os/Handler;

    if-nez v13, :cond_3

    .line 449
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/inputmethodservice/InputMethodService$1;->this$0:Landroid/inputmethodservice/InputMethodService;

    new-instance v14, Landroid/inputmethodservice/InputMethodService$1$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v1}, Landroid/inputmethodservice/InputMethodService$1$1;-><init>(Landroid/inputmethodservice/InputMethodService$1;Z)V

    iput-object v14, v13, Landroid/inputmethodservice/InputMethodService;->mSPCHandler:Landroid/os/Handler;

    .line 457
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/inputmethodservice/InputMethodService$1;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v13, v13, Landroid/inputmethodservice/InputMethodService;->mSPCHandler:Landroid/os/Handler;

    if-eqz v13, :cond_4

    .line 459
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/inputmethodservice/InputMethodService$1;->this$0:Landroid/inputmethodservice/InputMethodService;

    const/4 v14, 0x1

    # setter for: Landroid/inputmethodservice/InputMethodService;->mCallBySpcBr:Z
    invoke-static {v13, v14}, Landroid/inputmethodservice/InputMethodService;->access$202(Landroid/inputmethodservice/InputMethodService;Z)Z

    .line 460
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/inputmethodservice/InputMethodService$1;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v13, v13, Landroid/inputmethodservice/InputMethodService;->mSPCHandler:Landroid/os/Handler;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 461
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/inputmethodservice/InputMethodService$1;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v13, v13, Landroid/inputmethodservice/InputMethodService;->mSPCHandler:Landroid/os/Handler;

    const/4 v14, 0x0

    const-wide/16 v15, 0x1f4

    invoke-virtual/range {v13 .. v16}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 464
    :cond_4
    const-string v13, "changeMode"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 467
    .local v10, "mChangeMode":I
    and-int/lit8 v13, v10, 0x1

    if-eqz v13, :cond_7

    .line 468
    if-eqz v1, :cond_5

    const-string v13, "InputMethodService"

    const-string v14, "[RCtrl-S]  - CHANGE_MODE_HIDE_SIP"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/inputmethodservice/InputMethodService$1;->this$0:Landroid/inputmethodservice/InputMethodService;

    # invokes: Landroid/inputmethodservice/InputMethodService;->doHideWindow()V
    invoke-static {v13}, Landroid/inputmethodservice/InputMethodService;->access$300(Landroid/inputmethodservice/InputMethodService;)V

    goto :goto_0

    .line 436
    .end local v1    # "DEBUG_HIGH":Z
    .end local v10    # "mChangeMode":I
    :cond_6
    const/4 v1, 0x1

    goto :goto_1

    .line 470
    .restart local v1    # "DEBUG_HIGH":Z
    .restart local v10    # "mChangeMode":I
    :cond_7
    and-int/lit8 v13, v10, 0x2

    if-eqz v13, :cond_9

    .line 471
    if-eqz v1, :cond_8

    const-string v13, "InputMethodService"

    const-string v14, "[RCtrl-S]  - CHANGE_MODE_SHOW_SIP"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/inputmethodservice/InputMethodService$1;->this$0:Landroid/inputmethodservice/InputMethodService;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/inputmethodservice/InputMethodService;->showWindow(Z)V

    goto/16 :goto_0

    .line 475
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/inputmethodservice/InputMethodService$1;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v13}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    .line 476
    .local v3, "currentInputConnection":Landroid/view/inputmethod/InputConnection;
    if-eqz v3, :cond_0

    .line 479
    and-int/lit8 v13, v10, 0x4

    if-nez v13, :cond_a

    and-int/lit8 v13, v10, 0x8

    if-eqz v13, :cond_11

    .line 480
    :cond_a
    const-string v13, "inputText"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 481
    .local v9, "inputText":Ljava/lang/CharSequence;
    new-instance v13, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v13}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/4 v14, 0x0

    invoke-interface {v3, v13, v14}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v6

    .line 482
    .local v6, "extractedText":Landroid/view/inputmethod/ExtractedText;
    const-string v2, ""

    .line 483
    .local v2, "curText":Ljava/lang/CharSequence;
    const-string v13, "cursorStart"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 484
    .local v5, "cursorStart":I
    const-string v13, "cursorEnd"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 486
    .local v4, "cursorEnd":I
    if-eqz v6, :cond_b

    .line 487
    iget-object v2, v6, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 489
    :cond_b
    if-nez v9, :cond_c

    .line 490
    invoke-interface {v3, v5, v4}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    move-result v12

    .line 491
    .local v12, "result":Z
    if-eqz v1, :cond_0

    const-string v13, "InputMethodService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[RCtrl-S]  - CHANGE_MODE_CURSOR : ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "] "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 493
    .end local v12    # "result":Z
    :cond_c
    if-eqz v2, :cond_e

    invoke-virtual {v2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 494
    invoke-interface {v3, v5, v4}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    move-result v12

    .line 495
    .restart local v12    # "result":Z
    if-eqz v1, :cond_d

    const-string v13, "InputMethodService"

    const-string v14, "[RCtrl-S]  - CHANGE_MODE_TEXT - don\'t need to change text"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_d
    if-eqz v1, :cond_0

    const-string v13, "InputMethodService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[RCtrl-S]  - CHANGE_MODE_CURSOR : ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "] "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 499
    .end local v12    # "result":Z
    :cond_e
    if-nez v2, :cond_10

    .line 500
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface {v3, v13, v14}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    .line 503
    :goto_2
    const/4 v13, 0x1

    invoke-interface {v3, v9, v13}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 505
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/inputmethodservice/InputMethodService$1;->this$0:Landroid/inputmethodservice/InputMethodService;

    # setter for: Landroid/inputmethodservice/InputMethodService;->receivedText:Ljava/lang/CharSequence;
    invoke-static {v13, v9}, Landroid/inputmethodservice/InputMethodService;->access$402(Landroid/inputmethodservice/InputMethodService;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 506
    invoke-interface {v3, v5, v4}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    move-result v12

    .line 507
    .restart local v12    # "result":Z
    if-eqz v1, :cond_f

    const-string v13, "InputMethodService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[RCtrl-S]  - CHANGE_MODE_TEXT : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :cond_f
    if-eqz v1, :cond_0

    const-string v13, "InputMethodService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[RCtrl-S]  - CHANGE_MODE_CURSOR : ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "] "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 502
    .end local v12    # "result":Z
    :cond_10
    const/4 v13, 0x0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v14

    invoke-interface {v3, v13, v14}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    goto :goto_2

    .line 510
    .end local v2    # "curText":Ljava/lang/CharSequence;
    .end local v4    # "cursorEnd":I
    .end local v5    # "cursorStart":I
    .end local v6    # "extractedText":Landroid/view/inputmethod/ExtractedText;
    .end local v9    # "inputText":Ljava/lang/CharSequence;
    :cond_11
    and-int/lit8 v13, v10, 0x10

    if-eqz v13, :cond_0

    .line 511
    const-string v13, "imeOpt"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 512
    .local v8, "imeOpt":I
    and-int/lit16 v7, v8, 0xff

    .line 513
    .local v7, "imeAction":I
    const/4 v13, 0x1

    if-eq v7, v13, :cond_12

    .line 514
    invoke-interface {v3, v7}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    .line 517
    :cond_12
    if-eqz v1, :cond_13

    const-string v13, "InputMethodService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[RCtrl-S]  - CHANGE_MODE_IME_OPT.imeOpt : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :cond_13
    if-eqz v1, :cond_0

    const-string v13, "InputMethodService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[RCtrl-S]  - CHANGE_MODE_IME_OPT.imeAction SET : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 530
    .end local v1    # "DEBUG_HIGH":Z
    .end local v3    # "currentInputConnection":Landroid/view/inputmethod/InputConnection;
    .end local v7    # "imeAction":I
    .end local v8    # "imeOpt":I
    .end local v10    # "mChangeMode":I
    :cond_14
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    const-string v14, "com.samsung.axt9info.close"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 531
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/inputmethodservice/InputMethodService$1;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v13}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 532
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/inputmethodservice/InputMethodService$1;->this$0:Landroid/inputmethodservice/InputMethodService;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/inputmethodservice/InputMethodService;->requestHideSelf(I)V

    goto/16 :goto_0
.end method
