.class public Lcom/android/server/display/WfdBridgeBase$WBPMsg;
.super Ljava/lang/Object;
.source "WfdBridgeBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WfdBridgeBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WBPMsg"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WBPMsg"

.field public static final WBPMSGTYPE_DESTROY:I = -0x1

.field public static final WBPMSGTYPE_NOT_PARSED:I = 0x0

.field public static final WBPMSGTYPE_NOT_PARSED_LEGACY:I = 0x1

.field public static final WBPMSGTYPE_TRIGGER_BUSYFLAG:I = 0x3ed

.field public static final WBPMSGTYPE_TRIGGER_M1:I = 0x2

.field public static final WBPMSGTYPE_WBP_GET_PARAMETER:I = 0x3ec

.field public static final WBPMSGTYPE_WBP_PLAY:I = 0x3e9

.field public static final WBPMSGTYPE_WBP_SETUP:I = 0x3ea

.field public static final WBPMSGTYPE_WBP_SET_PARAMETER:I = 0x3eb

.field public static final WBPMSGTYPE_WBP_TRIGGER:I = 0x3e8


# instance fields
.field public mDev:I

.field public mMsg:Ljava/lang/String;

.field public mMsgType:I

.field public mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

.field public mType:I

.field final synthetic this$0:Lcom/android/server/display/WfdBridgeBase;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WfdBridgeBase;I)V
    .locals 1
    .param p2, "msgType"    # I

    .prologue
    const/4 v0, 0x0

    .line 241
    iput-object p1, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->this$0:Lcom/android/server/display/WfdBridgeBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput p2, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mMsgType:I

    .line 243
    iput-object v0, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    .line 244
    iput-object v0, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mMsg:Ljava/lang/String;

    .line 245
    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/WfdBridgeBase;ILcom/android/server/display/WfdBridgeBase$BridgePeer;)V
    .locals 1
    .param p2, "msgType"    # I
    .param p3, "to"    # Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->this$0:Lcom/android/server/display/WfdBridgeBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    iput p2, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mMsgType:I

    .line 249
    iput-object p3, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mMsg:Ljava/lang/String;

    .line 251
    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/WfdBridgeBase;ILjava/lang/String;Lcom/android/server/display/WfdBridgeBase$BridgePeer;)V
    .locals 0
    .param p2, "msgType"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "to"    # Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->this$0:Lcom/android/server/display/WfdBridgeBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput p2, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mMsgType:I

    .line 255
    iput-object p4, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    .line 256
    iput-object p3, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mMsg:Ljava/lang/String;

    .line 257
    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/WfdBridgeBase;ILjava/lang/String;Lcom/android/server/display/WfdBridgeBase$BridgePeer;II)V
    .locals 0
    .param p2, "msgType"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "from"    # Lcom/android/server/display/WfdBridgeBase$BridgePeer;
    .param p5, "dev"    # I
    .param p6, "type"    # I

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->this$0:Lcom/android/server/display/WfdBridgeBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    iput p2, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mMsgType:I

    .line 267
    iput-object p4, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    .line 268
    iput-object p3, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mMsg:Ljava/lang/String;

    .line 269
    iput p5, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mDev:I

    .line 270
    iput p6, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mType:I

    .line 271
    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/WfdBridgeBase;Ljava/lang/String;Lcom/android/server/display/WfdBridgeBase$BridgePeer;)V
    .locals 1
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "from"    # Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->this$0:Lcom/android/server/display/WfdBridgeBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mMsgType:I

    .line 261
    iput-object p2, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mMsg:Ljava/lang/String;

    .line 262
    iput-object p3, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    .line 263
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
