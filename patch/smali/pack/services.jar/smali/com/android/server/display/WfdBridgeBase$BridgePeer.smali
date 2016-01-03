.class public Lcom/android/server/display/WfdBridgeBase$BridgePeer;
.super Ljava/lang/Thread;
.source "WfdBridgeBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WfdBridgeBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BridgePeer"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WfdBridgeBase::BridgePeer"


# instance fields
.field public mBusyFlag:I

.field public mDevice:Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;

.field public mIsLegacyDevice:Z

.field private mMsgHandler:Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

.field private mSocReader:Ljava/io/BufferedReader;

.field private mSocWriter:Ljava/io/PrintWriter;

.field mSocket:Ljava/net/Socket;

.field public mWbpVersion:F

.field final synthetic this$0:Lcom/android/server/display/WfdBridgeBase;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WfdBridgeBase;Ljava/net/Socket;Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;)V
    .locals 4
    .param p2, "soc"    # Ljava/net/Socket;
    .param p3, "msgHandler"    # Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->this$0:Lcom/android/server/display/WfdBridgeBase;

    .line 125
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 119
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mDevice:Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;

    .line 120
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mBusyFlag:I

    .line 121
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mIsLegacyDevice:Z

    .line 122
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mWbpVersion:F

    .line 126
    const-string v1, "WfdBridgeBase::BridgePeer"

    const-string v2, "Create BridgePeer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iput-object p3, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mMsgHandler:Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

    .line 129
    iput-object p2, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mSocket:Ljava/net/Socket;

    .line 132
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v1, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mSocReader:Ljava/io/BufferedReader;

    .line 133
    new-instance v1, Ljava/io/PrintWriter;

    iget-object v2, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mSocWriter:Ljava/io/PrintWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 139
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "WfdBridgeBase::BridgePeer"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public closeSocket()V
    .locals 3

    .prologue
    .line 156
    const-string v1, "WfdBridgeBase::BridgePeer"

    const-string v2, "Close Socket"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 159
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mSocket:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "WfdBridgeBase::BridgePeer"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public isSocClosed()Z
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    .line 152
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSocConnected()Z
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    .line 145
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 9

    .prologue
    .line 186
    const/4 v2, 0x0

    .line 187
    .local v2, "msg":Ljava/lang/String;
    const/16 v5, 0x100

    new-array v0, v5, [C

    .line 188
    .local v0, "buf":[C
    const/4 v4, 0x0

    .line 190
    .local v4, "readLen":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mSocket:Ljava/net/Socket;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mSocket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 192
    :try_start_0
    iget-object v5, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mSocReader:Ljava/io/BufferedReader;

    const/4 v6, 0x0

    array-length v7, v0

    invoke-virtual {v5, v0, v6, v7}, Ljava/io/BufferedReader;->read([CII)I

    move-result v4

    if-lez v4, :cond_1

    .line 193
    new-instance v3, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v3, v0, v5, v4}, Ljava/lang/String;-><init>([CII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .end local v2    # "msg":Ljava/lang/String;
    .local v3, "msg":Ljava/lang/String;
    :try_start_1
    const-string v5, "WfdBridgeBase::BridgePeer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "len: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Get MSG : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const-string v5, "\r\n\r\n"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_0

    .line 197
    iget-object v5, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mMsgHandler:Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

    new-instance v6, Lcom/android/server/display/WfdBridgeBase$WBPMsg;

    iget-object v7, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->this$0:Lcom/android/server/display/WfdBridgeBase;

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8, v3, p0}, Lcom/android/server/display/WfdBridgeBase$WBPMsg;-><init>(Lcom/android/server/display/WfdBridgeBase;ILjava/lang/String;Lcom/android/server/display/WfdBridgeBase$BridgePeer;)V

    invoke-virtual {v5, v6}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->putMsg(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)I

    move-object v2, v3

    .end local v3    # "msg":Ljava/lang/String;
    .restart local v2    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 199
    .end local v2    # "msg":Ljava/lang/String;
    .restart local v3    # "msg":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mMsgHandler:Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

    new-instance v6, Lcom/android/server/display/WfdBridgeBase$WBPMsg;

    iget-object v7, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->this$0:Lcom/android/server/display/WfdBridgeBase;

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8, v3, p0}, Lcom/android/server/display/WfdBridgeBase$WBPMsg;-><init>(Lcom/android/server/display/WfdBridgeBase;ILjava/lang/String;Lcom/android/server/display/WfdBridgeBase$BridgePeer;)V

    invoke-virtual {v5, v6}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->putMsg(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .end local v3    # "msg":Ljava/lang/String;
    .restart local v2    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 203
    :cond_1
    const-wide/16 v5, 0xa

    :try_start_2
    invoke-static {v5, v6}, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 206
    :catch_0
    move-exception v1

    .line 207
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    const-string v5, "WfdBridgeBase::BridgePeer"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v5, "WfdBridgeBase::BridgePeer"

    const-string v6, "End of Peer"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    return-void

    .line 206
    .end local v2    # "msg":Ljava/lang/String;
    .restart local v3    # "msg":Ljava/lang/String;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "msg":Ljava/lang/String;
    .restart local v2    # "msg":Ljava/lang/String;
    goto :goto_1
.end method

.method public send(Ljava/lang/String;)I
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 178
    const-string v0, "WfdBridgeBase::BridgePeer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send msg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mSocWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mSocWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 181
    const/4 v0, 0x1

    return v0
.end method

.method public socketState()I
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    :cond_0
    const/4 v0, 0x0

    .line 174
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
