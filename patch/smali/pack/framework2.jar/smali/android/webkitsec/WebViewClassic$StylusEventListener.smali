.class Landroid/webkitsec/WebViewClassic$StylusEventListener;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnStylusButtonEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StylusEventListener"
.end annotation


# instance fields
.field private final DELTA:I

.field private final HORIZONAL_THRESHOLD:I

.field private final VERTICAL_THRESHOLD:I

.field private mDirLTR:Z

.field private mMaxX:F

.field private mPressed:Z

.field private mSelectionSound:Landroid/media/SoundPool;

.field private mSoundId:I

.field private mStartX:F

.field private mStartY:F

.field private final soundURIs:Ljava/lang/String;

.field final synthetic this$0:Landroid/webkitsec/WebViewClassic;


# direct methods
.method private constructor <init>(Landroid/webkitsec/WebViewClassic;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15927
    iput-object p1, p0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15928
    iput v1, p0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mStartX:F

    .line 15929
    iput v1, p0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mStartY:F

    .line 15930
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mPressed:Z

    .line 15931
    iput v1, p0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mMaxX:F

    .line 15932
    const/16 v0, 0x14

    iput v0, p0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->DELTA:I

    .line 15933
    const/16 v0, 0x32

    iput v0, p0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->VERTICAL_THRESHOLD:I

    .line 15934
    const/16 v0, 0xa

    iput v0, p0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->HORIZONAL_THRESHOLD:I

    .line 15935
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mDirLTR:Z

    .line 15938
    const-string v0, "/media/audio/ui/TextSelection.ogg"

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->soundURIs:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkitsec/WebViewClassic;Landroid/webkitsec/WebViewClassic$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/webkitsec/WebViewClassic;
    .param p2, "x1"    # Landroid/webkitsec/WebViewClassic$1;

    .prologue
    .line 15927
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewClassic$StylusEventListener;-><init>(Landroid/webkitsec/WebViewClassic;)V

    return-void
.end method

.method private playSound()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    .line 16110
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mSelectionSound:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 16111
    new-instance v0, Landroid/media/SoundPool;

    invoke-direct {v0, v4, v4, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mSelectionSound:Landroid/media/SoundPool;

    .line 16113
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/media/audio/ui/TextSelection.ogg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 16114
    .local v7, "soundPath":Ljava/lang/String;
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mSelectionSound:Landroid/media/SoundPool;

    invoke-virtual {v0, v7, v4}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mSoundId:I

    .line 16115
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mSelectionSound:Landroid/media/SoundPool;

    iget v1, p0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mSoundId:I

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 16116
    return-void
.end method


# virtual methods
.method public onStylusButtonEvent(Landroid/view/MotionEvent;I)V
    .locals 16
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "clipboardId"    # I

    .prologue
    .line 15944
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 15945
    .local v1, "action":I
    const/4 v9, 0x0

    .line 15946
    .local v9, "startCurPositionX":I
    const/4 v10, 0x0

    .line 15947
    .local v10, "startCurPositionY":I
    const/4 v2, 0x0

    .line 15948
    .local v2, "endCurPositionX":I
    const/4 v3, 0x0

    .line 15950
    .local v3, "endCurPositionY":I
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v12

    const/4 v13, 0x2

    if-eq v12, v13, :cond_1

    .line 16106
    :cond_0
    :goto_0
    return-void

    .line 15954
    :cond_1
    const-string/jumbo v12, "webview"

    const-string/jumbo v13, "onStylusButtonEvent start"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15956
    packed-switch v1, :pswitch_data_0

    .line 16105
    :cond_2
    :goto_1
    const-string/jumbo v12, "webview"

    const-string/jumbo v13, "onStylusButtonEvent END"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 15958
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mPressed:Z

    if-eqz v12, :cond_2

    .line 15963
    move-object/from16 v0, p0

    iget v12, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mMaxX:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-nez v12, :cond_6

    .line 15964
    move-object/from16 v0, p0

    iget v12, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mStartX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_5

    move-object/from16 v0, p0

    iget v12, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mStartX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    const/high16 v14, 0x41a00000    # 20.0f

    add-float/2addr v13, v14

    cmpg-float v12, v12, v13

    if-gez v12, :cond_5

    .line 15965
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mDirLTR:Z

    .line 15966
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mMaxX:F

    .line 15989
    :cond_3
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mStartY:F

    const/high16 v14, 0x42480000    # 50.0f

    add-float/2addr v13, v14

    cmpl-float v12, v12, v13

    if-gtz v12, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mStartY:F

    const/high16 v14, 0x42480000    # 50.0f

    sub-float/2addr v13, v14

    cmpg-float v12, v12, v13

    if-gez v12, :cond_2

    .line 15990
    :cond_4
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mPressed:Z

    .line 15991
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->this$0:Landroid/webkitsec/WebViewClassic;

    const/4 v13, 0x0

    # setter for: Landroid/webkitsec/WebViewClassic;->mSpenTextSelectionMode:I
    invoke-static {v12, v13}, Landroid/webkitsec/WebViewClassic;->access$10602(Landroid/webkitsec/WebViewClassic;I)I

    .line 15992
    const-string/jumbo v12, "webview"

    const-string v13, "TextSelection is canceled because of height difference"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 15967
    :cond_5
    move-object/from16 v0, p0

    iget v12, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mStartX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    cmpl-float v12, v12, v13

    if-lez v12, :cond_3

    move-object/from16 v0, p0

    iget v12, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mStartX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    const/high16 v14, 0x41a00000    # 20.0f

    add-float/2addr v13, v14

    cmpl-float v12, v12, v13

    if-lez v12, :cond_3

    .line 15968
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mDirLTR:Z

    .line 15969
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mMaxX:F

    goto :goto_2

    .line 15971
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mDirLTR:Z

    if-eqz v12, :cond_8

    .line 15972
    move-object/from16 v0, p0

    iget v12, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mMaxX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_7

    .line 15973
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mMaxX:F

    goto :goto_2

    .line 15974
    :cond_7
    move-object/from16 v0, p0

    iget v12, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mMaxX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    const/high16 v14, 0x41a00000    # 20.0f

    add-float/2addr v13, v14

    cmpl-float v12, v12, v13

    if-lez v12, :cond_3

    .line 15975
    const-string/jumbo v12, "webview"

    const-string v13, "TextSelection is canceled because of wrong X position, DirLTR"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15976
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->this$0:Landroid/webkitsec/WebViewClassic;

    const/4 v13, 0x0

    # setter for: Landroid/webkitsec/WebViewClassic;->mSpenTextSelectionMode:I
    invoke-static {v12, v13}, Landroid/webkitsec/WebViewClassic;->access$10602(Landroid/webkitsec/WebViewClassic;I)I

    .line 15977
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mPressed:Z

    goto/16 :goto_2

    .line 15979
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mDirLTR:Z

    if-nez v12, :cond_3

    .line 15980
    move-object/from16 v0, p0

    iget v12, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mMaxX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    cmpl-float v12, v12, v13

    if-ltz v12, :cond_9

    .line 15981
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mMaxX:F

    goto/16 :goto_2

    .line 15982
    :cond_9
    move-object/from16 v0, p0

    iget v12, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mMaxX:F

    const/high16 v13, 0x41a00000    # 20.0f

    add-float/2addr v12, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_3

    .line 15983
    const-string/jumbo v12, "webview"

    const-string v13, "TextSelection is canceled because of wrong X position, DirRTL"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15984
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->this$0:Landroid/webkitsec/WebViewClassic;

    const/4 v13, 0x0

    # setter for: Landroid/webkitsec/WebViewClassic;->mSpenTextSelectionMode:I
    invoke-static {v12, v13}, Landroid/webkitsec/WebViewClassic;->access$10602(Landroid/webkitsec/WebViewClassic;I)I

    .line 15985
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mPressed:Z

    goto/16 :goto_2

    .line 15998
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mStartX:F

    .line 16000
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mMaxX:F

    .line 16001
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mStartY:F

    .line 16002
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mPressed:Z

    .line 16003
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->this$0:Landroid/webkitsec/WebViewClassic;

    const/4 v13, 0x1

    # setter for: Landroid/webkitsec/WebViewClassic;->mSpenTextSelectionMode:I
    invoke-static {v12, v13}, Landroid/webkitsec/WebViewClassic;->access$10602(Landroid/webkitsec/WebViewClassic;I)I

    .line 16004
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static {v12}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->requestFocus()Z

    .line 16005
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->this$0:Landroid/webkitsec/WebViewClassic;

    const/4 v13, 0x0

    # setter for: Landroid/webkitsec/WebViewClassic;->mActionMove:Z
    invoke-static {v12, v13}, Landroid/webkitsec/WebViewClassic;->access$13202(Landroid/webkitsec/WebViewClassic;Z)Z

    .line 16006
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->this$0:Landroid/webkitsec/WebViewClassic;

    iget-object v12, v12, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    if-eqz v12, :cond_a

    .line 16007
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v12}, Landroid/webkitsec/WebViewClassic;->clearSelection()V

    .line 16009
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mSelectingText:Z
    invoke-static {v12}, Landroid/webkitsec/WebViewClassic;->access$10900(Landroid/webkitsec/WebViewClassic;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 16010
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v12}, Landroid/webkitsec/WebViewClassic;->selectionDone()V

    goto/16 :goto_1

    .line 16016
    :pswitch_2
    const/4 v4, 0x0

    .line 16017
    .local v4, "endX":F
    const/4 v5, 0x0

    .line 16019
    .local v5, "endY":F
    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mPressed:Z

    if-eqz v12, :cond_0

    .line 16022
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 16023
    .local v7, "rect":Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 16024
    .local v6, "offset":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static {v12}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v12

    invoke-virtual {v12, v7, v6}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 16025
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 16026
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 16028
    move-object/from16 v0, p0

    iget v12, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mStartX:F

    iget v13, v6, Landroid/graphics/Point;->x:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mStartX:F

    .line 16029
    move-object/from16 v0, p0

    iget v12, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mStartY:F

    iget v13, v6, Landroid/graphics/Point;->y:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mStartY:F

    .line 16030
    move-object/from16 v0, p0

    iget v12, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mStartX:F

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gez v12, :cond_b

    .line 16031
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mStartX:F

    .line 16033
    :cond_b
    move-object/from16 v0, p0

    iget v12, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mStartY:F

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gez v12, :cond_c

    .line 16034
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mStartY:F

    .line 16036
    :cond_c
    iget v12, v6, Landroid/graphics/Point;->x:I

    int-to-float v12, v12

    sub-float/2addr v4, v12

    .line 16037
    iget v12, v6, Landroid/graphics/Point;->y:I

    int-to-float v12, v12

    sub-float/2addr v5, v12

    .line 16038
    const/4 v12, 0x0

    cmpg-float v12, v4, v12

    if-gez v12, :cond_d

    .line 16039
    const/4 v4, 0x0

    .line 16041
    :cond_d
    const/4 v12, 0x0

    cmpg-float v12, v5, v12

    if-gez v12, :cond_e

    .line 16042
    const/4 v5, 0x0

    .line 16048
    :cond_e
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v0, p0

    iget v13, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mStartX:F

    float-to-int v13, v13

    invoke-virtual {v12, v13}, Landroid/webkitsec/WebViewClassic;->viewToContentX(I)I

    move-result v9

    .line 16049
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v0, p0

    iget v13, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mStartY:F

    float-to-int v13, v13

    invoke-virtual {v12, v13}, Landroid/webkitsec/WebViewClassic;->viewToContentY(I)I

    move-result v10

    .line 16050
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->this$0:Landroid/webkitsec/WebViewClassic;

    float-to-int v13, v4

    invoke-virtual {v12, v13}, Landroid/webkitsec/WebViewClassic;->viewToContentX(I)I

    move-result v2

    .line 16051
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->this$0:Landroid/webkitsec/WebViewClassic;

    float-to-int v13, v5

    invoke-virtual {v12, v13}, Landroid/webkitsec/WebViewClassic;->viewToContentY(I)I

    move-result v3

    .line 16054
    if-eq v9, v2, :cond_f

    sub-int v12, v9, v2

    const/16 v13, 0xa

    if-ge v12, v13, :cond_10

    sub-int v12, v2, v9

    const/16 v13, 0xa

    if-ge v12, v13, :cond_10

    .line 16055
    :cond_f
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mPressed:Z

    .line 16056
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->this$0:Landroid/webkitsec/WebViewClassic;

    const/4 v13, 0x0

    # setter for: Landroid/webkitsec/WebViewClassic;->mSpenTextSelectionMode:I
    invoke-static {v12, v13}, Landroid/webkitsec/WebViewClassic;->access$10602(Landroid/webkitsec/WebViewClassic;I)I

    .line 16057
    const-string/jumbo v12, "webview"

    const-string v13, "TextSelection is canceled because the positions are same."

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 16060
    :cond_10
    if-le v9, v2, :cond_11

    .line 16061
    move v11, v2

    .line 16062
    .local v11, "temp":I
    move v2, v9

    .line 16063
    move v9, v11

    .line 16067
    .end local v11    # "temp":I
    :cond_11
    const-string/jumbo v12, "webview"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "mStartX "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mStartX:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " mStartY "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mStartY:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16068
    const-string/jumbo v12, "webview"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "endX "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " endY "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16069
    const-string/jumbo v12, "webview"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "offset.x "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v6, Landroid/graphics/Point;->x:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " offset.y "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16070
    const-string/jumbo v12, "webview"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "startCurPositionX "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " startCurPositionY "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16071
    const-string/jumbo v12, "webview"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "endCurPositionX "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " endCurPositionY "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16085
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v9, v10, v2, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 16086
    .local v8, "selectRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v12}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v12

    if-eqz v12, :cond_12

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v13}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v13

    invoke-virtual {v13}, Landroid/webkitsec/WebSettingsClassic;->getAdvancedCopyPasteFeature()Z

    move-result v13

    if-ne v12, v13, :cond_12

    .line 16087
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->this$0:Landroid/webkitsec/WebViewClassic;

    # invokes: Landroid/webkitsec/WebViewClassic;->setUpAdvSelect()Z
    invoke-static {v12}, Landroid/webkitsec/WebViewClassic;->access$13300(Landroid/webkitsec/WebViewClassic;)Z

    .line 16089
    :cond_12
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;
    invoke-static {v12}, Landroid/webkitsec/WebViewClassic;->access$800(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebViewCore;

    move-result-object v12

    const/16 v13, 0x22a

    invoke-virtual {v12, v13, v8}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 16090
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->this$0:Landroid/webkitsec/WebViewClassic;

    iget-object v12, v12, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->this$0:Landroid/webkitsec/WebViewClassic;

    iget-object v13, v13, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v14, 0xb9

    invoke-virtual {v13, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    const-wide/16 v14, 0x1f4

    invoke-virtual {v12, v13, v14, v15}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 16092
    const-string/jumbo v12, "webview"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "action_up mSpenTextSelectionMode = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mSpenTextSelectionMode:I
    invoke-static {v14}, Landroid/webkitsec/WebViewClassic;->access$10600(Landroid/webkitsec/WebViewClassic;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 16096
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->this$0:Landroid/webkitsec/WebViewClassic;

    const/4 v13, 0x0

    # setter for: Landroid/webkitsec/WebViewClassic;->mSpenTextSelectionMode:I
    invoke-static {v12, v13}, Landroid/webkitsec/WebViewClassic;->access$10602(Landroid/webkitsec/WebViewClassic;I)I

    .line 16097
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mPressed:Z

    goto/16 :goto_1

    .line 16102
    .end local v4    # "endX":F
    .end local v5    # "endY":F
    .end local v6    # "offset":Landroid/graphics/Point;
    .end local v7    # "rect":Landroid/graphics/Rect;
    .end local v8    # "selectRect":Landroid/graphics/Rect;
    :pswitch_3
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Landroid/webkitsec/WebViewClassic$StylusEventListener;->mPressed:Z

    goto/16 :goto_1

    .line 15956
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
