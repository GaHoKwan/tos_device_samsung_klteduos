.class Lcom/android/server/power/ShutdownThread$10;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->shutdownRadios(ILandroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;

.field final synthetic val$done:[Z

.field final synthetic val$endTime:J

.field final synthetic val$mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;Landroid/net/wifi/WifiManager;J[Z)V
    .locals 0

    .prologue
    .line 1015
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$10;->this$0:Lcom/android/server/power/ShutdownThread;

    iput-object p2, p0, Lcom/android/server/power/ShutdownThread$10;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    iput-wide p3, p0, Lcom/android/server/power/ShutdownThread$10;->val$endTime:J

    iput-object p5, p0, Lcom/android/server/power/ShutdownThread$10;->val$done:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 25

    .prologue
    .line 1017
    const-string v21, "ShutdownThread"

    const-string v22, "!@Start shutdown radios"

    invoke-static/range {v21 .. v22}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    const-string/jumbo v21, "sys.deviceOffReq"

    const-string v22, "1"

    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    const-string/jumbo v21, "sys.radio.shutdown"

    const-string/jumbo v22, "true"

    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    const/4 v10, 0x0

    .line 1033
    .local v10, "modemOff":Z
    const-string v21, "nfc"

    invoke-static/range {v21 .. v21}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v12

    .line 1035
    .local v12, "nfc":Landroid/nfc/INfcAdapter;
    const-string v21, "phone"

    invoke-static/range {v21 .. v21}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v14

    .line 1037
    .local v14, "phone":Lcom/android/internal/telephony/ITelephony;
    const-string v21, "bluetooth_manager"

    invoke-static/range {v21 .. v21}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v3

    .line 1040
    .local v3, "bluetooth":Landroid/bluetooth/IBluetoothManager;
    const-string v21, "connectivity"

    invoke-static/range {v21 .. v21}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v5

    .line 1043
    .local v5, "connectivity":Landroid/net/IConnectivityManager;
    const/4 v15, 0x0

    .line 1050
    .local v15, "phone2":Lcom/android/internal/telephony/ITelephony;
    const-string v21, "phone2"

    invoke-static/range {v21 .. v21}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v15

    .line 1067
    const/4 v4, 0x1

    .line 1070
    .local v4, "bluetoothOff":Z
    const/16 v16, 0x1

    .line 1071
    .local v16, "radioOff":Z
    :try_start_0
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v21

    if-eqz v21, :cond_2

    .line 1072
    const-string v21, "phone_msim"

    invoke-static/range {v21 .. v21}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v11

    .line 1074
    .local v11, "mphone":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    if-eqz v11, :cond_7

    .line 1077
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v21

    move/from16 v0, v21

    if-ge v9, v0, :cond_7

    .line 1079
    if-eqz v16, :cond_1

    invoke-interface {v11, v9}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->isRadioOn(I)Z

    move-result v21

    if-nez v21, :cond_1

    const/16 v16, 0x1

    .line 1080
    :goto_1
    invoke-interface {v11, v9}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->isRadioOn(I)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 1081
    const-string v21, "ShutdownThread"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Turning off radio on Subscription :"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-interface {v11, v0, v9}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->setRadio(ZI)Z

    .line 1078
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1079
    :cond_1
    const/16 v16, 0x0

    goto :goto_1

    .line 1087
    .end local v9    # "i":I
    .end local v11    # "mphone":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :cond_2
    if-eqz v14, :cond_3

    invoke-interface {v14}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v21

    if-nez v21, :cond_11

    :cond_3
    const/16 v16, 0x1

    .line 1088
    :goto_2
    if-eqz v5, :cond_4

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-interface {v5, v0}, Landroid/net/IConnectivityManager;->isNetworkSupported(I)Z

    move-result v21

    if-eqz v21, :cond_5

    :cond_4
    if-eqz v14, :cond_5

    invoke-interface {v14}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v21

    if-nez v21, :cond_6

    .line 1091
    :cond_5
    const/16 v16, 0x1

    .line 1093
    :cond_6
    if-nez v16, :cond_12

    .line 1094
    const-string v21, "ShutdownThread"

    const-string v22, "Turning off radio..."

    invoke-static/range {v21 .. v22}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-interface {v14, v0}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1109
    :cond_7
    :goto_3
    if-eqz v15, :cond_8

    :try_start_1
    invoke-interface {v15}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v21

    if-nez v21, :cond_13

    :cond_8
    const/16 v17, 0x1

    .line 1111
    .local v17, "radioOff2":Z
    :goto_4
    if-nez v17, :cond_9

    .line 1112
    const-string v21, "ShutdownThread"

    const-string v22, "Turning off radio2..."

    invoke-static/range {v21 .. v22}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-interface {v15, v0}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1121
    :cond_9
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$10;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v21, v0

    if-eqz v21, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$10;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$10;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v21

    const/16 v22, 0xb

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_14

    :cond_a
    const/4 v2, 0x1

    .line 1124
    .local v2, "WiFiOff":Z
    :goto_6
    if-nez v2, :cond_b

    .line 1125
    const-string v21, "ShutdownThread"

    const-string v22, "Disabling WiFi..."

    invoke-static/range {v21 .. v22}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$10;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiManager;->shutdown()Z

    .line 1128
    :cond_b
    const-string v21, "ShutdownThread"

    const-string v22, "Waiting for NFC, Bluetooth, Wi-Fi and Radio..."

    invoke-static/range {v21 .. v22}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    if-eqz v12, :cond_c

    :try_start_2
    invoke-interface {v12}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_15

    :cond_c
    const/4 v13, 0x1

    .line 1136
    .local v13, "nfcOff":Z
    :goto_7
    if-nez v13, :cond_d

    .line 1137
    const-string v21, "ShutdownThread"

    const-string v22, "Turning off NFC..."

    invoke-static/range {v21 .. v22}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-interface {v12, v0}, Landroid/nfc/INfcAdapter;->disable(Z)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1146
    :cond_d
    :goto_8
    if-eqz v3, :cond_e

    .line 1147
    :try_start_3
    invoke-interface {v3}, Landroid/bluetooth/IBluetoothManager;->dumpInFile()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1152
    :cond_e
    :goto_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v21

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/ShutdownThread$10;->val$endTime:J

    move-wide/from16 v23, v0

    cmp-long v21, v21, v23

    if-gez v21, :cond_21

    .line 1153
    if-nez v4, :cond_10

    .line 1155
    if-eqz v3, :cond_f

    .line 1156
    :try_start_4
    invoke-interface {v3}, Landroid/bluetooth/IBluetoothManager;->isEnabled()Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v21

    if-nez v21, :cond_16

    const/4 v4, 0x1

    .line 1161
    :cond_f
    :goto_a
    if-eqz v4, :cond_10

    .line 1162
    const-string v21, "ShutdownThread"

    const-string v22, "Bluetooth turned off."

    invoke-static/range {v21 .. v22}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    :cond_10
    if-nez v16, :cond_1a

    .line 1167
    :try_start_5
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v21

    if-eqz v21, :cond_18

    .line 1168
    const-string v21, "phone_msim"

    invoke-static/range {v21 .. v21}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v11

    .line 1170
    .restart local v11    # "mphone":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_b
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v21

    move/from16 v0, v21

    if-ge v9, v0, :cond_19

    .line 1172
    if-eqz v16, :cond_17

    invoke-interface {v11, v9}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->isRadioOn(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v21

    if-nez v21, :cond_17

    const/16 v16, 0x1

    .line 1171
    :goto_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 1087
    .end local v2    # "WiFiOff":Z
    .end local v9    # "i":I
    .end local v11    # "mphone":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    .end local v13    # "nfcOff":Z
    .end local v17    # "radioOff2":Z
    :cond_11
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 1097
    :cond_12
    :try_start_6
    const-string v21, "ShutdownThread"

    const-string v22, "radio already turned off"

    invoke-static/range {v21 .. v22}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_3

    .line 1100
    :catch_0
    move-exception v8

    .line 1101
    .local v8, "ex":Landroid/os/RemoteException;
    const-string v21, "ShutdownThread"

    const-string v22, "RemoteException during radio shutdown"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 1102
    const/16 v16, 0x1

    goto/16 :goto_3

    .line 1109
    .end local v8    # "ex":Landroid/os/RemoteException;
    :cond_13
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 1115
    :catch_1
    move-exception v8

    .line 1116
    .restart local v8    # "ex":Landroid/os/RemoteException;
    const-string v21, "ShutdownThread"

    const-string v22, "RemoteException during radio2 shutdown"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 1117
    const/16 v17, 0x1

    .restart local v17    # "radioOff2":Z
    goto/16 :goto_5

    .line 1121
    .end local v8    # "ex":Landroid/os/RemoteException;
    :cond_14
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 1134
    .restart local v2    # "WiFiOff":Z
    :cond_15
    const/4 v13, 0x0

    goto/16 :goto_7

    .line 1140
    :catch_2
    move-exception v8

    .line 1141
    .restart local v8    # "ex":Landroid/os/RemoteException;
    const-string v21, "ShutdownThread"

    const-string v22, "RemoteException during NFC shutdown"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 1142
    const/4 v13, 0x1

    .restart local v13    # "nfcOff":Z
    goto/16 :goto_8

    .line 1148
    .end local v8    # "ex":Landroid/os/RemoteException;
    :catch_3
    move-exception v8

    .line 1149
    .restart local v8    # "ex":Landroid/os/RemoteException;
    const-string v21, "ShutdownThread"

    const-string v22, "RemoteException during bluetooth permanent log dump"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto/16 :goto_9

    .line 1156
    .end local v8    # "ex":Landroid/os/RemoteException;
    :cond_16
    const/4 v4, 0x0

    goto/16 :goto_a

    .line 1157
    :catch_4
    move-exception v8

    .line 1158
    .restart local v8    # "ex":Landroid/os/RemoteException;
    const-string v21, "ShutdownThread"

    const-string v22, "RemoteException during bluetooth shutdown"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 1159
    const/4 v4, 0x1

    goto/16 :goto_a

    .line 1172
    .end local v8    # "ex":Landroid/os/RemoteException;
    .restart local v9    # "i":I
    .restart local v11    # "mphone":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :cond_17
    const/16 v16, 0x0

    goto :goto_c

    .line 1175
    .end local v9    # "i":I
    .end local v11    # "mphone":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :cond_18
    :try_start_7
    invoke-interface {v14}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_5

    move-result v21

    if-nez v21, :cond_22

    const/16 v16, 0x1

    .line 1182
    :cond_19
    :goto_d
    const-string v6, ""

    .line 1183
    .local v6, "cpName":Ljava/lang/String;
    const-string v21, "ril.modem.board"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1184
    const-string v21, "XMM"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_24

    .line 1185
    if-nez v16, :cond_1a

    .line 1186
    const-string v18, ""

    .line 1187
    .local v18, "repPhoneOff":Ljava/lang/String;
    const-string v21, "ril.deviceOffRes"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1188
    if-eqz v18, :cond_23

    const-string v21, "1"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_23

    .line 1190
    const-string v21, "ShutdownThread"

    const-string v22, "!@PhoneOff req resp"

    invoke-static/range {v21 .. v22}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    const/16 v16, 0x1

    .line 1192
    const-string v21, "ShutdownThread"

    const-string v22, "Radio turned off."

    invoke-static/range {v21 .. v22}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    .end local v6    # "cpName":Ljava/lang/String;
    .end local v18    # "repPhoneOff":Ljava/lang/String;
    :cond_1a
    :goto_e
    const-string v21, "ShutdownThread"

    const-string v22, "Skip wait for modem state off."

    invoke-static/range {v21 .. v22}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    const/4 v10, 0x1

    .line 1230
    if-nez v17, :cond_1b

    .line 1232
    :try_start_8
    invoke-interface {v15}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_6

    move-result v21

    if-nez v21, :cond_25

    const/16 v17, 0x1

    .line 1237
    :goto_f
    if-eqz v17, :cond_1b

    .line 1238
    const-string v21, "ShutdownThread"

    const-string v22, "Radio2 turned off."

    invoke-static/range {v21 .. v22}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    :cond_1b
    if-nez v2, :cond_1f

    .line 1252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$10;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1c

    .line 1253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$10;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v20

    .line 1254
    .local v20, "ss":Landroid/net/wifi/SupplicantState;
    sget-object v21, Landroid/net/wifi/SupplicantState;->INTERFACE_DISABLED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_26

    const/4 v2, 0x1

    .line 1256
    .end local v20    # "ss":Landroid/net/wifi/SupplicantState;
    :cond_1c
    :goto_10
    if-nez v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$10;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$10;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v21

    const/16 v22, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_27

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$10;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v21

    const/16 v22, 0xb

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$10;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v21

    const/16 v22, 0xe

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_27

    :cond_1e
    const/4 v2, 0x1

    .line 1261
    :goto_11
    if-eqz v2, :cond_1f

    .line 1262
    const-string v21, "ShutdownThread"

    const-string v22, "Wifi turned off."

    invoke-static/range {v21 .. v22}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    :cond_1f
    if-nez v13, :cond_20

    .line 1268
    :try_start_9
    invoke-interface {v12}, Landroid/nfc/INfcAdapter;->getState()I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_7

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_28

    const/4 v13, 0x1

    .line 1273
    :goto_12
    if-eqz v13, :cond_20

    .line 1274
    const-string v21, "ShutdownThread"

    const-string v22, "NFC turned off."

    invoke-static/range {v21 .. v22}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    :cond_20
    if-eqz v16, :cond_29

    if-eqz v17, :cond_29

    if-eqz v4, :cond_29

    if-eqz v13, :cond_29

    if-eqz v2, :cond_29

    if-eqz v10, :cond_29

    .line 1280
    const-string v21, "ShutdownThread"

    const-string v22, "NFC, Radio, Bluetooth and WiFi shutdown complete."

    invoke-static/range {v21 .. v22}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$10;->val$done:[Z

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x1

    aput-boolean v23, v21, v22

    .line 1309
    :cond_21
    return-void

    .line 1175
    :cond_22
    const/16 v16, 0x0

    goto/16 :goto_d

    .line 1177
    :catch_5
    move-exception v8

    .line 1178
    .restart local v8    # "ex":Landroid/os/RemoteException;
    const-string v21, "ShutdownThread"

    const-string v22, "RemoteException during radio shutdown"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 1179
    const/16 v16, 0x1

    goto/16 :goto_d

    .line 1194
    .end local v8    # "ex":Landroid/os/RemoteException;
    .restart local v6    # "cpName":Ljava/lang/String;
    .restart local v18    # "repPhoneOff":Ljava/lang/String;
    :cond_23
    const/16 v16, 0x0

    .line 1195
    const-string v21, "ShutdownThread"

    const-string v22, "ril.deviceOffRes is not set"

    invoke-static/range {v21 .. v22}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 1199
    .end local v18    # "repPhoneOff":Ljava/lang/String;
    :cond_24
    if-eqz v16, :cond_1a

    .line 1200
    const-string v21, "ShutdownThread"

    const-string v22, "Radio turned off."

    invoke-static/range {v21 .. v22}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 1232
    .end local v6    # "cpName":Ljava/lang/String;
    :cond_25
    const/16 v17, 0x0

    goto/16 :goto_f

    .line 1233
    :catch_6
    move-exception v8

    .line 1234
    .restart local v8    # "ex":Landroid/os/RemoteException;
    const-string v21, "ShutdownThread"

    const-string v22, "RemoteException during radio2 shutdown"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 1235
    const/16 v17, 0x1

    goto/16 :goto_f

    .line 1254
    .end local v8    # "ex":Landroid/os/RemoteException;
    .restart local v20    # "ss":Landroid/net/wifi/SupplicantState;
    :cond_26
    const/4 v2, 0x0

    goto/16 :goto_10

    .line 1256
    .end local v20    # "ss":Landroid/net/wifi/SupplicantState;
    :cond_27
    const/4 v2, 0x0

    goto/16 :goto_11

    .line 1268
    :cond_28
    const/4 v13, 0x0

    goto :goto_12

    .line 1269
    :catch_7
    move-exception v8

    .line 1270
    .restart local v8    # "ex":Landroid/os/RemoteException;
    const-string v21, "ShutdownThread"

    const-string v22, "RemoteException during NFC shutdown"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 1271
    const/4 v13, 0x1

    goto :goto_12

    .line 1284
    .end local v8    # "ex":Landroid/os/RemoteException;
    :cond_29
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 1285
    .local v19, "sb":Ljava/lang/StringBuilder;
    const-string v21, "RadioOff:"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", BluetoothOff:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", NFC Off:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", WiFiOff:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1289
    const-string v21, "ShutdownThread"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    const-string v21, "ShutdownThread"

    const-string v22, "!@before sleep"

    invoke-static/range {v21 .. v22}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    const-wide/16 v21, 0x1f4

    :try_start_a
    invoke-static/range {v21 .. v22}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_8

    .line 1303
    :goto_13
    const-string v21, "ShutdownThread"

    const-string v22, "!@after sleep"

    invoke-static/range {v21 .. v22}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    const-string v21, "ShutdownThread"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "!@[Phone off retry:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "] : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/ShutdownThread$10;->val$endTime:J

    move-wide/from16 v23, v0

    invoke-virtual/range {v22 .. v24}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " radio="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " radio2="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " bluetooth="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " nfc="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " modem="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 1300
    :catch_8
    move-exception v7

    .line 1301
    .local v7, "e":Ljava/lang/InterruptedException;
    const-string v21, "ShutdownThread"

    const-string v22, "InterruptedException"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto/16 :goto_13
.end method
