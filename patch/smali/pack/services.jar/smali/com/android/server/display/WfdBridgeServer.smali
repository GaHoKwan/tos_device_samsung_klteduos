.class public Lcom/android/server/display/WfdBridgeServer;
.super Lcom/android/server/display/WfdBridgeBase;
.source "WfdBridgeServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "WfdBridgeServer"


# instance fields
.field private mClientList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/display/WfdBridgeBase$BridgePeer;",
            ">;"
        }
    .end annotation
.end field

.field private mLastUpdatedClient:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mPort:I

.field private mServerSocket:Ljava/net/ServerSocket;


# direct methods
.method public constructor <init>(ILcom/android/server/display/WfdBridgeBase$BridgeListner;)V
    .locals 2
    .param p1, "port"    # I
    .param p2, "listner"    # Lcom/android/server/display/WfdBridgeBase$BridgeListner;

    .prologue
    .line 37
    invoke-direct {p0, p2}, Lcom/android/server/display/WfdBridgeBase;-><init>(Lcom/android/server/display/WfdBridgeBase$BridgeListner;)V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/WfdBridgeServer;->mPort:I

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/WfdBridgeServer;->mLastUpdatedClient:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 38
    const-string v0, "WfdBridgeServer"

    const-string v1, "Created WFDBridgeServer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iput p1, p0, Lcom/android/server/display/WfdBridgeServer;->mPort:I

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    .line 42
    return-void
.end method

.method private getIndexFromDeviceInfo(Landroid/net/wifi/p2p/WifiP2pDevice;)I
    .locals 3
    .param p1, "dst"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 230
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 231
    iget-object v1, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iget-object v1, v1, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mDevice:Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iget-object v1, v1, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mDevice:Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iget-object v1, v1, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mDevice:Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 230
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 239
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public connect()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/WfdBridgeBase;->mSession:Z

    .line 48
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 50
    iget-object v0, p0, Lcom/android/server/display/WfdBridgeBase;->mMsgHandler:Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 51
    return-void
.end method

.method public disconnect()V
    .locals 4

    .prologue
    .line 137
    iget-object v2, p0, Lcom/android/server/display/WfdBridgeBase;->mMsgHandler:Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

    invoke-virtual {v2}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->destroy()V

    .line 139
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 140
    iget-object v2, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    invoke-virtual {v2}, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->closeSocket()V

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 145
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    .line 147
    iget-object v2, p0, Lcom/android/server/display/WfdBridgeServer;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V

    .line 148
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/display/WfdBridgeServer;->mServerSocket:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/display/WfdBridgeBase;->mSession:Z

    .line 154
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "WfdBridgeServer"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getAddr()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/server/display/WfdBridgeServer;->mServerSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/server/display/WfdBridgeServer;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 131
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConnectAddrList()[Ljava/net/InetAddress;
    .locals 3

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/android/server/display/WfdBridgeServer;->isConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 115
    const/4 v0, 0x0

    .line 122
    :cond_0
    return-object v0

    .line 118
    :cond_1
    iget-object v2, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Ljava/net/InetAddress;

    .line 119
    .local v0, "addrlist":[Ljava/net/InetAddress;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 120
    iget-object v2, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    invoke-virtual {v2}, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    aput-object v2, v0, v1

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 2

    .prologue
    .line 55
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 56
    iget-object v1, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    invoke-virtual {v1}, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->isSocConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    const/4 v1, 0x1

    .line 61
    :goto_1
    return v1

    .line 55
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public request(Landroid/net/wifi/p2p/WifiP2pDevice;II)V
    .locals 9
    .param p1, "sinkDevice"    # Landroid/net/wifi/p2p/WifiP2pDevice;
    .param p2, "dev"    # I
    .param p3, "type"    # I

    .prologue
    .line 66
    const-string v3, ""

    .line 70
    .local v3, "reqMsg":Ljava/lang/String;
    packed-switch p3, :pswitch_data_0

    .line 84
    :goto_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WfdBridgeBase;->mMsgHandler:Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

    const-string v1, "Sink"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 90
    :cond_0
    :goto_1
    const/4 v7, 0x0

    .line 91
    .local v7, "index":I
    if-eqz p1, :cond_1

    .line 93
    invoke-direct {p0, p1}, Lcom/android/server/display/WfdBridgeServer;->getIndexFromDeviceInfo(Landroid/net/wifi/p2p/WifiP2pDevice;)I

    move-result v7

    .line 98
    :cond_1
    iget-object v8, p0, Lcom/android/server/display/WfdBridgeBase;->mMsgHandler:Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

    new-instance v0, Lcom/android/server/display/WfdBridgeBase$WBPMsg;

    const/16 v2, 0x3e8

    iget-object v1, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    move-object v1, p0

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/WfdBridgeBase$WBPMsg;-><init>(Lcom/android/server/display/WfdBridgeBase;ILjava/lang/String;Lcom/android/server/display/WfdBridgeBase$BridgePeer;II)V

    invoke-virtual {v8, v0}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->putMsg(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)I

    .line 99
    return-void

    .line 72
    .end local v7    # "index":I
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/display/WfdBridgeBase;->mMsgHandler:Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

    const-string v3, "RVF"

    .line 73
    goto :goto_0

    .line 76
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/display/WfdBridgeBase;->mMsgHandler:Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

    const-string v3, "MirrorMouse"

    .line 77
    goto :goto_0

    .line 80
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/display/WfdBridgeBase;->mMsgHandler:Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

    const-string v3, "ScreenMirroring"

    goto :goto_0

    .line 86
    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WfdBridgeBase;->mMsgHandler:Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

    const-string v1, "Source"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 70
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 202
    iput-object v3, p0, Lcom/android/server/display/WfdBridgeServer;->mServerSocket:Ljava/net/ServerSocket;

    .line 205
    :try_start_0
    new-instance v3, Ljava/net/ServerSocket;

    iget v4, p0, Lcom/android/server/display/WfdBridgeServer;->mPort:I

    invoke-direct {v3, v4}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/display/WfdBridgeServer;->mServerSocket:Ljava/net/ServerSocket;

    .line 207
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/display/WfdBridgeBase;->mSession:Z

    if-eqz v3, :cond_0

    .line 208
    iget-object v3, p0, Lcom/android/server/display/WfdBridgeServer;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v2

    .line 211
    .local v2, "socket":Ljava/net/Socket;
    new-instance v0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iget-object v3, p0, Lcom/android/server/display/WfdBridgeBase;->mMsgHandler:Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

    invoke-direct {v0, p0, v2, v3}, Lcom/android/server/display/WfdBridgeBase$BridgePeer;-><init>(Lcom/android/server/display/WfdBridgeBase;Ljava/net/Socket;Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;)V

    .line 212
    .local v0, "bp":Lcom/android/server/display/WfdBridgeBase$BridgePeer;
    new-instance v3, Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;

    iget-object v4, p0, Lcom/android/server/display/WfdBridgeServer;->mLastUpdatedClient:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v3, p0, v4}, Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;-><init>(Lcom/android/server/display/WfdBridgeBase;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    iput-object v3, v0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mDevice:Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;

    .line 213
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/display/WfdBridgeServer;->mLastUpdatedClient:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 214
    iget-object v3, p0, Lcom/android/server/display/WfdBridgeBase;->mMsgHandler:Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v0}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->triggerMsg(ILcom/android/server/display/WfdBridgeBase$BridgePeer;)I

    .line 215
    iget-object v3, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    iget-object v3, p0, Lcom/android/server/display/WfdBridgeBase;->mListner:Lcom/android/server/display/WfdBridgeBase$BridgeListner;

    invoke-interface {v3}, Lcom/android/server/display/WfdBridgeBase$BridgeListner;->onBridgeConnected()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 220
    .end local v0    # "bp":Lcom/android/server/display/WfdBridgeBase$BridgePeer;
    .end local v2    # "socket":Ljava/net/Socket;
    :catch_0
    move-exception v1

    .line 221
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "WfdBridgeServer"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    const-string v3, "WfdBridgeServer"

    const-string v4, "End of WfdBridgeServer"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    return-void
.end method

.method public sendBusyflag(I)V
    .locals 9
    .param p1, "flag"    # I

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/android/server/display/WfdBridgeServer;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 104
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iget-boolean v0, v0, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mIsLegacyDevice:Z

    if-eqz v0, :cond_0

    .line 106
    iget-object v8, p0, Lcom/android/server/display/WfdBridgeBase;->mMsgHandler:Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;

    new-instance v0, Lcom/android/server/display/WfdBridgeBase$WBPMsg;

    const/16 v2, 0x3ed

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    const/4 v5, 0x0

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/WfdBridgeBase$WBPMsg;-><init>(Lcom/android/server/display/WfdBridgeBase;ILjava/lang/String;Lcom/android/server/display/WfdBridgeBase$BridgePeer;II)V

    invoke-virtual {v8, v0}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->putMsg(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)I

    .line 104
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 110
    .end local v7    # "i":I
    :cond_1
    return-void
.end method

.method public sendMsg(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)I
    .locals 5
    .param p1, "msg"    # Lcom/android/server/display/WfdBridgeBase$WBPMsg;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 158
    const-string v2, "WfdBridgeServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send msg : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v2, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v0, :cond_1

    .line 161
    :cond_0
    const-string v0, "WfdBridgeServer"

    const-string v2, "Client is not connected"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 171
    :goto_0
    return v0

    .line 165
    :cond_1
    iget-object v2, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    invoke-virtual {v2}, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->isSocConnected()Z

    move-result v2

    if-nez v2, :cond_3

    .line 166
    :cond_2
    const-string v0, "WfdBridgeServer"

    const-string v2, "Client is not found"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 167
    goto :goto_0

    .line 170
    :cond_3
    iget-object v1, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iget-object v2, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->send(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateClientDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 5
    .param p1, "client"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    const/4 v4, 0x0

    .line 179
    iput-object p1, p0, Lcom/android/server/display/WfdBridgeServer;->mLastUpdatedClient:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 180
    iget-object v1, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/WfdBridgeServer;->mLastUpdatedClient:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v1, :cond_0

    .line 181
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iget-object v1, v1, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mDevice:Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iget-object v1, v1, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mDevice:Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/display/WfdBridgeServer;->mLastUpdatedClient:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 185
    iget-object v1, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    invoke-virtual {v1}, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->closeSocket()V

    .line 186
    iget-object v1, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 187
    iput-object v4, p0, Lcom/android/server/display/WfdBridgeServer;->mLastUpdatedClient:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 198
    .end local v0    # "i":I
    :cond_0
    :goto_1
    return-void

    .line 189
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iget-object v1, v1, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mDevice:Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iget-object v1, v1, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mDevice:Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iget-object v1, v1, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mDevice:Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 190
    :cond_2
    iget-object v1, p0, Lcom/android/server/display/WfdBridgeServer;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    new-instance v2, Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;

    iget-object v3, p0, Lcom/android/server/display/WfdBridgeServer;->mLastUpdatedClient:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v2, p0, v3}, Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;-><init>(Lcom/android/server/display/WfdBridgeBase;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    iput-object v2, v1, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mDevice:Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;

    .line 193
    iput-object v4, p0, Lcom/android/server/display/WfdBridgeServer;->mLastUpdatedClient:Landroid/net/wifi/p2p/WifiP2pDevice;

    goto :goto_1

    .line 181
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
