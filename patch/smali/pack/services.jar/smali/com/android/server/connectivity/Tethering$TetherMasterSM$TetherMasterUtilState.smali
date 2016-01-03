.class Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;
.super Lcom/android/internal/util/State;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering$TetherMasterSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TetherMasterUtilState"
.end annotation


# static fields
.field protected static final TRY_TO_SETUP_MOBILE_CONNECTION:Z = true

.field protected static final WAIT_FOR_NETWORK_TO_SETTLE:Z


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V
    .locals 0

    .prologue
    .line 2642
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method protected blockDataForNCM()V
    .locals 3

    .prologue
    .line 3173
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$1100(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->setIpForwardingEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3177
    :goto_0
    return-void

    .line 3174
    :catch_0
    move-exception v0

    .line 3175
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetIpForwardingDisabledErrorState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7300(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$8300(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    goto :goto_0
.end method

.method protected chooseUpstreamType(Z)V
    .locals 26
    .param p1, "tryCell"    # Z

    .prologue
    .line 2875
    const-string v22, "connectivity"

    invoke-static/range {v22 .. v22}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 2876
    .local v3, "b":Landroid/os/IBinder;
    invoke-static {v3}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v4

    .line 2877
    .local v4, "cm":Landroid/net/IConnectivityManager;
    const/16 v18, -0x1

    .line 2879
    .local v18, "upType":I
    const/4 v13, 0x0

    .line 2880
    .local v13, "isV4Connected":Z
    const/4 v14, 0x0

    .line 2882
    .local v14, "isV6Connected":Z
    const/4 v10, 0x0

    .line 2885
    .local v10, "iface":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2887
    .local v2, "actualIface":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    .line 2889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;
    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Tethering;->access$400(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v23

    monitor-enter v23

    .line 2891
    :try_start_0
    const-string v22, "Tethering"

    const-string v24, "chooseUpstreamType has upstream iface types:"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2892
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;
    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Tethering;->access$7700(Lcom/android/server/connectivity/Tethering;)Ljava/util/Collection;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    .line 2893
    .local v16, "netType":Ljava/lang/Integer;
    const-string v22, "Tethering"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2927
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v16    # "netType":Ljava/lang/Integer;
    :catchall_0
    move-exception v22

    monitor-exit v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v22

    .line 2897
    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;
    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Tethering;->access$7700(Lcom/android/server/connectivity/Tethering;)Ljava/util/Collection;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2898
    .restart local v16    # "netType":Ljava/lang/Integer;
    const/4 v11, 0x0

    .line 2900
    .local v11, "info":Landroid/net/NetworkInfo;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mConnService:Landroid/net/IConnectivityManager;
    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Tethering;->access$5700(Lcom/android/server/connectivity/Tethering;)Landroid/net/IConnectivityManager;

    move-result-object v22

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v11

    .line 2902
    :goto_1
    if-eqz v11, :cond_1

    :try_start_3
    invoke-virtual {v11}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v22

    if-eqz v22, :cond_1

    .line 2903
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 2927
    .end local v11    # "info":Landroid/net/NetworkInfo;
    .end local v16    # "netType":Ljava/lang/Integer;
    :cond_2
    monitor-exit v23
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2930
    const-string v22, "Tethering"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "chooseUpstreamType("

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "), preferredApn ="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I
    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering;->access$7800(Lcom/android/server/connectivity/Tethering;)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", got type="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2935
    const/16 v22, 0x4

    move/from16 v0, v18

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    const/16 v22, 0x5

    move/from16 v0, v18

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    .line 2937
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->turnOnUpstreamMobileConnection(I)Z

    .line 2948
    :cond_4
    :goto_2
    const/16 v22, -0x1

    move/from16 v0, v18

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    .line 2977
    const/16 v17, 0x1

    .line 2978
    .local v17, "tryAgainLater":Z
    const/16 v22, 0x1

    move/from16 v0, p1

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I
    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Tethering;->access$7800(Lcom/android/server/connectivity/Tethering;)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->turnOnUpstreamMobileConnection(I)Z

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    .line 2981
    const/16 v17, 0x0

    .line 2983
    :cond_5
    if-eqz v17, :cond_6

    .line 2984
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v22, v0

    const/16 v23, 0x5

    const-wide/16 v24, 0x2710

    invoke-virtual/range {v22 .. v25}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->sendMessageDelayed(IJ)V

    .line 3150
    .end local v17    # "tryAgainLater":Z
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->notifyTetheredOfNewUpstreamIface(Ljava/lang/String;Ljava/lang/String;)V

    .line 3151
    return-void

    .line 2938
    :cond_7
    const/16 v22, -0x1

    move/from16 v0, v18

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    .line 2945
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->turnOffUpstreamMobileConnection()Z

    goto :goto_2

    .line 2988
    :cond_8
    const/4 v15, 0x0

    .line 2990
    .local v15, "linkProperties":Landroid/net/LinkProperties;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mConnService:Landroid/net/IConnectivityManager;
    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Tethering;->access$5700(Lcom/android/server/connectivity/Tethering;)Landroid/net/IConnectivityManager;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/net/IConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v15

    .line 2993
    :goto_4
    if-eqz v15, :cond_9

    .line 2997
    const-string v22, "Tethering"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Finding IPv4 upstream interface on: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2998
    invoke-virtual {v15}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/Collection;

    move-result-object v22

    sget-object v23, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-static/range {v22 .. v23}, Landroid/net/RouteInfo;->selectBestRoute(Ljava/util/Collection;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v12

    .line 3000
    .local v12, "ipv4Default":Landroid/net/RouteInfo;
    if-eqz v12, :cond_b

    .line 3001
    invoke-virtual {v12}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v10

    .line 3002
    const-string v22, "Tethering"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Found interface "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v12}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3008
    :goto_5
    invoke-virtual {v15}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    .line 3011
    .end local v12    # "ipv4Default":Landroid/net/RouteInfo;
    :cond_9
    if-eqz v10, :cond_6

    .line 3012
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Tethering;->access$6600(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    move-result-object v6

    .line 3014
    .local v6, "dnsServers":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mDefault6DnsServers:[Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Tethering;->access$6900(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    move-result-object v21

    .line 3016
    .local v21, "v6dnsServers":[Ljava/lang/String;
    invoke-virtual {v15}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v7

    .line 3017
    .local v7, "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    if-eqz v7, :cond_10

    .line 3019
    new-instance v19, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v22

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3022
    .local v19, "v4Dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v22

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3025
    .local v20, "v6Dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_a
    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    .line 3026
    .local v5, "dnsAddress":Ljava/net/InetAddress;
    instance-of v0, v5, Ljava/net/Inet4Address;

    move/from16 v22, v0

    if-eqz v22, :cond_a

    .line 3027
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 3004
    .end local v5    # "dnsAddress":Ljava/net/InetAddress;
    .end local v6    # "dnsServers":[Ljava/lang/String;
    .end local v7    # "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .end local v19    # "v4Dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    .end local v20    # "v6Dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    .end local v21    # "v6dnsServers":[Ljava/lang/String;
    .restart local v12    # "ipv4Default":Landroid/net/RouteInfo;
    :cond_b
    invoke-virtual {v15}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v10

    .line 3005
    const-string v22, "Tethering"

    const-string v23, "No IPv4 upstream interface, set iface name for IPv6."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 3030
    .end local v12    # "ipv4Default":Landroid/net/RouteInfo;
    .restart local v6    # "dnsServers":[Ljava/lang/String;
    .restart local v7    # "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .restart local v19    # "v4Dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    .restart local v20    # "v6Dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    .restart local v21    # "v6dnsServers":[Ljava/lang/String;
    :cond_c
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-lez v22, :cond_d

    .line 3031
    invoke-static/range {v19 .. v19}, Landroid/net/NetworkUtils;->makeStrings(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v6

    .line 3032
    const/4 v13, 0x1

    .line 3035
    :cond_d
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_e
    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    .line 3036
    .restart local v5    # "dnsAddress":Ljava/net/InetAddress;
    instance-of v0, v5, Ljava/net/Inet6Address;

    move/from16 v22, v0

    if-eqz v22, :cond_e

    .line 3037
    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 3040
    .end local v5    # "dnsAddress":Ljava/net/InetAddress;
    :cond_f
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-lez v22, :cond_10

    .line 3041
    invoke-static/range {v20 .. v20}, Landroid/net/NetworkUtils;->makeStrings(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v21

    .line 3042
    const/4 v14, 0x1

    .line 3059
    .end local v19    # "v4Dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    .end local v20    # "v6Dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    :cond_10
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Tethering;->access$1100(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v6}, Landroid/os/INetworkManagementService;->setDnsForwarders([Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 3065
    :goto_8
    if-eqz v14, :cond_6

    if-nez v13, :cond_6

    .line 3068
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Tethering;->access$1100(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->setv6DnsForwarders([Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_3

    .line 3069
    :catch_0
    move-exception v8

    .line 3070
    .local v8, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetDnsForwardersErrorState:Lcom/android/internal/util/State;
    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6700(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v23

    # invokes: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v22 .. v23}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$8000(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    goto/16 :goto_3

    .line 3060
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v8

    .line 3061
    .restart local v8    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetDnsForwardersErrorState:Lcom/android/internal/util/State;
    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6700(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v23

    # invokes: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v22 .. v23}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7900(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    goto :goto_8

    .line 2991
    .end local v6    # "dnsServers":[Ljava/lang/String;
    .end local v7    # "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v21    # "v6dnsServers":[Ljava/lang/String;
    :catch_2
    move-exception v22

    goto/16 :goto_4

    .line 2901
    .end local v15    # "linkProperties":Landroid/net/LinkProperties;
    .restart local v11    # "info":Landroid/net/NetworkInfo;
    .restart local v16    # "netType":Ljava/lang/Integer;
    :catch_3
    move-exception v22

    goto/16 :goto_1
.end method

.method protected enableString(I)Ljava/lang/String;
    .locals 1
    .param p1, "apnType"    # I

    .prologue
    .line 2651
    packed-switch p1, :pswitch_data_0

    .line 2658
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2653
    :pswitch_1
    const-string v0, "enableDUNAlways"

    goto :goto_0

    .line 2656
    :pswitch_2
    const-string v0, "enableHIPRI"

    goto :goto_0

    .line 2651
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected notifyTetheredOfNewUpstreamIface(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "actualIfaceName"    # Ljava/lang/String;

    .prologue
    .line 3156
    const-string v3, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifying tethered with iface ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3157
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # setter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mUpstreamIfaceName:Ljava/lang/String;
    invoke-static {v3, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$8102(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Ljava/lang/String;)Ljava/lang/String;

    .line 3158
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # setter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mActualUpstreamIfaceName:Ljava/lang/String;
    invoke-static {v3, p2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$8202(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Ljava/lang/String;)Ljava/lang/String;

    .line 3159
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$5900(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 3163
    .local v2, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3164
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "iface"

    invoke-virtual {v1, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3165
    const-string v3, "actualIface"

    invoke-virtual {v1, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3166
    const/16 v3, 0xc

    invoke-virtual {v2, v3, v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 3169
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    .line 2648
    const/4 v0, 0x0

    return v0
.end method

.method protected turnOffMasterTetherSettings()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2810
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->access$1100(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/INetworkManagementService;->stopTethering()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2816
    :try_start_1
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->access$1100(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->setIpForwardingEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2821
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mInitialState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7500(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7600(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    .line 2822
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 2811
    :catch_0
    move-exception v0

    .line 2812
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mStopTetheringErrorState:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7100(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7200(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 2817
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 2818
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetIpForwardingDisabledErrorState:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7300(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7400(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    goto :goto_0
.end method

.method protected turnOffUpstreamMobileConnection()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, -0x1

    .line 2690
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # ++operator for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mCurrentConnectionSequence:I
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$5804(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I

    .line 2691
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mMobileApnReserved:I
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$5600(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I

    move-result v2

    if-eq v2, v5, :cond_0

    .line 2693
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mConnService:Landroid/net/IConnectivityManager;
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->access$5700(Lcom/android/server/connectivity/Tethering;)Landroid/net/IConnectivityManager;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mMobileApnReserved:I
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$5600(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->enableString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/net/IConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2698
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # setter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mMobileApnReserved:I
    invoke-static {v1, v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$5602(Lcom/android/server/connectivity/Tethering$TetherMasterSM;I)I

    .line 2700
    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 2695
    :catch_0
    move-exception v0

    .line 2696
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method protected turnOnMasterTetherSettings()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2705
    :try_start_0
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$5900(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 2706
    .local v0, "curSM":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    const-string v5, "ncm0"

    iget-object v6, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2707
    const-string v5, "Tethering"

    const-string/jumbo v6, "skip IP forwarding for ncm"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2739
    :goto_0
    :try_start_1
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v5, v5, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering;->access$2800(Lcom/android/server/connectivity/Tethering;)Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v5, v5, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering;->access$2800(Lcom/android/server/connectivity/Tethering;)Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedState()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2740
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v5, v5, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering;->access$2800(Lcom/android/server/connectivity/Tethering;)Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedUsbNetState()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2741
    const-string v5, "Tethering"

    const-string v6, "Set Sealed USB Net DHCP Range"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2742
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v5, v5, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering;->access$1100(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v5

    # getter for: Lcom/android/server/connectivity/Tethering;->mDhcpKnoxCustomRange:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$6200()[Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/os/INetworkManagementService;->startTethering([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2791
    :goto_1
    :try_start_2
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v5, v5, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering;->access$1100(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v6, v6, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/connectivity/Tethering;->access$6600(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/os/INetworkManagementService;->setDnsForwarders([Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 2799
    :try_start_3
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v5, v5, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering;->access$1100(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v6, v6, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mDefault6DnsServers:[Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/connectivity/Tethering;->access$6900(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/os/INetworkManagementService;->setv6DnsForwarders([Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move v3, v4

    .line 2806
    .end local v0    # "curSM":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :goto_2
    return v3

    .line 2709
    .restart local v0    # "curSM":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_0
    :try_start_4
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v5, v5, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering;->access$1100(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/os/INetworkManagementService;->setIpForwardingEnabled(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 2713
    .end local v0    # "curSM":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catch_0
    move-exception v1

    .line 2714
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetIpForwardingEnabledErrorState:Lcom/android/internal/util/State;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6000(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v5

    # invokes: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6100(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    goto :goto_2

    .line 2744
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "curSM":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_1
    :try_start_5
    const-string v5, "Tethering"

    const-string v6, "Set Sealed DHCP_DEFAULT_RANGE"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2745
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v5, v5, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering;->access$1100(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v6, v6, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/connectivity/Tethering;->access$6300(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/os/INetworkManagementService;->startTethering([Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 2751
    :catch_1
    move-exception v1

    .line 2753
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_6
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v5, v5, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering;->access$1100(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v5

    invoke-interface {v5}, Landroid/os/INetworkManagementService;->stopTethering()V

    .line 2754
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v5, v5, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering;->access$1100(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v6, v6, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/connectivity/Tethering;->access$6300(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/os/INetworkManagementService;->startTethering([Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 2755
    :catch_2
    move-exception v2

    .line 2756
    .local v2, "ee":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mStartTetheringErrorState:Lcom/android/internal/util/State;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6400(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v5

    # invokes: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6500(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    goto :goto_2

    .line 2749
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "ee":Ljava/lang/Exception;
    :cond_2
    :try_start_7
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v5, v5, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering;->access$1100(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v6, v6, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/connectivity/Tethering;->access$6300(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/os/INetworkManagementService;->startTethering([Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_1

    .line 2792
    :catch_3
    move-exception v1

    .line 2793
    .restart local v1    # "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetDnsForwardersErrorState:Lcom/android/internal/util/State;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6700(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v5

    # invokes: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6800(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    goto/16 :goto_2

    .line 2800
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v1

    .line 2801
    .restart local v1    # "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetDnsForwardersErrorState:Lcom/android/internal/util/State;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6700(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v5

    # invokes: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7000(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    goto/16 :goto_2
.end method

.method protected turnOnUpstreamMobileConnection(I)Z
    .locals 7
    .param p1, "apnType"    # I

    .prologue
    const/4 v4, 0x0

    .line 2661
    const/4 v3, 0x1

    .line 2662
    .local v3, "retValue":Z
    const/4 v5, -0x1

    if-ne p1, v5, :cond_1

    .line 2686
    :cond_0
    :goto_0
    return v4

    .line 2663
    :cond_1
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mMobileApnReserved:I
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$5600(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I

    move-result v5

    if-eq p1, v5, :cond_2

    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->turnOffUpstreamMobileConnection()Z

    .line 2664
    :cond_2
    const/4 v2, 0x3

    .line 2665
    .local v2, "result":I
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->enableString(I)Ljava/lang/String;

    move-result-object v0

    .line 2666
    .local v0, "enableString":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2668
    :try_start_0
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v4, v4, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mConnService:Landroid/net/IConnectivityManager;
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering;->access$5700(Lcom/android/server/connectivity/Tethering;)Landroid/net/IConnectivityManager;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Landroid/os/Binder;

    invoke-direct {v6}, Landroid/os/Binder;-><init>()V

    invoke-interface {v4, v5, v0, v6}, Landroid/net/IConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;Landroid/os/IBinder;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2672
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 2682
    const/4 v3, 0x0

    :goto_2
    move v4, v3

    .line 2686
    goto :goto_0

    .line 2675
    :pswitch_0
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # setter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mMobileApnReserved:I
    invoke-static {v4, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$5602(Lcom/android/server/connectivity/Tethering$TetherMasterSM;I)I

    .line 2676
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2677
    .local v1, "m":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # ++operator for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mCurrentConnectionSequence:I
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$5804(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I

    move-result v4

    iput v4, v1, Landroid/os/Message;->arg1:I

    .line 2678
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    const-wide/32 v5, 0x9c40

    invoke-virtual {v4, v1, v5, v6}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_2

    .line 2670
    .end local v1    # "m":Landroid/os/Message;
    :catch_0
    move-exception v4

    goto :goto_1

    .line 2672
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
