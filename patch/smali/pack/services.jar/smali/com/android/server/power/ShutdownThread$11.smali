.class final Lcom/android/server/power/ShutdownThread$11;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->textToSpeech(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$ttsVolume:D


# direct methods
.method constructor <init>(DLjava/lang/String;)V
    .locals 0

    .prologue
    .line 1963
    iput-wide p1, p0, Lcom/android/server/power/ShutdownThread$11;->val$ttsVolume:D

    iput-object p3, p0, Lcom/android/server/power/ShutdownThread$11;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 4
    .param p1, "status"    # I

    .prologue
    .line 1966
    if-nez p1, :cond_0

    .line 1967
    const-string v1, "ShutdownThread"

    const-string v2, "!@Text to speech"

    invoke-static {v1, v2}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1969
    .local v0, "param":Ljava/util/HashMap;
    const-string/jumbo v1, "streamType"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1971
    const-string/jumbo v1, "volume"

    iget-wide v2, p0, Lcom/android/server/power/ShutdownThread$11;->val$ttsVolume:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1973
    # getter for: Lcom/android/server/power/ShutdownThread;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1900()Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$11;->val$msg:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 1977
    .end local v0    # "param":Ljava/util/HashMap;
    :goto_0
    return-void

    .line 1975
    :cond_0
    const-string v1, "ShutdownThread"

    const-string v2, "TTS init result fail"

    invoke-static {v1, v2}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
