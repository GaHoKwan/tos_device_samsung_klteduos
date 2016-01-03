.class Lcom/android/server/wifi/WifiService$5;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiService;)V
    .locals 0

    .prologue
    .line 759
    iput-object p1, p0, Lcom/android/server/wifi/WifiService$5;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 762
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 763
    .local v16, "sb":Ljava/lang/StringBuilder;
    const-string v7, ""

    .line 764
    .local v7, "OTAWifiProfile":Ljava/lang/String;
    const-string v17, "WifiService"

    const-string v18, "OTA WIFI Profile Method"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    const-string v17, "NetworkSSID"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 766
    .local v6, "NetworkSSID":Ljava/lang/String;
    const-string v17, "KeyMgmt"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 767
    .local v5, "KeyMgmt":Ljava/lang/String;
    const-string v17, "EAPMethod"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 768
    .local v3, "EAPMethod":Ljava/lang/String;
    const-string v17, "Phase2"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 769
    .local v9, "Phase2":Ljava/lang/String;
    const-string v17, "Identity"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 770
    .local v4, "Identity":Ljava/lang/String;
    const-string v17, "Password"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 771
    .local v8, "Password":Ljava/lang/String;
    const-string v17, "WIFICount"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 772
    .local v10, "WifiCount":I
    # getter for: Lcom/android/server/wifi/WifiService;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v17

    if-eqz v17, :cond_0

    const-string v17, "WifiService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "OTA WIFI Profile Count = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    :cond_0
    const/16 v17, 0x0

    :try_start_0
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 776
    const-string v17, "network={\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    if-eqz v6, :cond_1

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "    ssid=\""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\"\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    :cond_1
    if-eqz v5, :cond_2

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "    key_mgmt="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    :cond_2
    if-eqz v3, :cond_3

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "    eap="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    :cond_3
    if-eqz v4, :cond_4

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "    identity=\""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\"\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    :cond_4
    if-eqz v8, :cond_5

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "    password=\""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\"\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    :cond_5
    if-eqz v9, :cond_6

    const-string v17, "None"

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_6

    .line 783
    const-string v17, "    phase2=\""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    const-string v17, "MSCHAPV2"

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 785
    const-string v17, "auth=MSCHAPV2\"\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    :cond_6
    :goto_0
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "    priority="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    # getter for: Lcom/android/server/wifi/WifiService;->OTACount:I
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1500()I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    const-string v17, "    vendor_spec_ssid=1\n}\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    # operator++ for: Lcom/android/server/wifi/WifiService;->OTACount:I
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1508()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 795
    :goto_1
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 796
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/server/wifi/WifiService;->AddedWifiProfile:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1600()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    # setter for: Lcom/android/server/wifi/WifiService;->AddedWifiProfile:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiService;->access$1602(Ljava/lang/String;)Ljava/lang/String;

    .line 797
    # getter for: Lcom/android/server/wifi/WifiService;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 798
    const-string v17, "WifiService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "OTA Count = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    # getter for: Lcom/android/server/wifi/WifiService;->OTACount:I
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1500()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    const-string v17, "WifiService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "String OTA AP List"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    const-string v17, "WifiService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "String Added Wifi AP List"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    # getter for: Lcom/android/server/wifi/WifiService;->AddedWifiProfile:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1600()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    :cond_7
    # getter for: Lcom/android/server/wifi/WifiService;->OTACount:I
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1500()I

    move-result v17

    move/from16 v0, v17

    if-ne v0, v10, :cond_b

    .line 803
    new-instance v17, Ljava/io/File;

    const-string v18, "/data/misc/wifi/default_ap.conf"

    invoke-direct/range {v17 .. v18}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    # setter for: Lcom/android/server/wifi/WifiService;->mFilePath:Ljava/io/File;
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiService;->access$1702(Ljava/io/File;)Ljava/io/File;

    .line 804
    const/4 v13, 0x0

    .line 805
    .local v13, "fw":Ljava/io/FileOutputStream;
    # getter for: Lcom/android/server/wifi/WifiService;->mFilePath:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1700()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_8

    .line 806
    const-string v17, "WifiService"

    const-string v18, "Default file delete is called by OTA"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    # getter for: Lcom/android/server/wifi/WifiService;->mFilePath:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1700()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    .line 810
    :cond_8
    :try_start_1
    new-instance v15, Ljava/io/File;

    const-string v17, "/data/misc/wifi"

    const-string v18, "default_ap.conf"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v15, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    .local v15, "profilefilepath":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->createNewFile()Z

    .line 812
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v17

    const-string v18, "chmod 664 /data/misc/wifi/default_ap.conf"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 813
    new-instance v14, Ljava/io/FileOutputStream;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-direct {v14, v15, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 814
    .end local v13    # "fw":Ljava/io/FileOutputStream;
    .local v14, "fw":Ljava/io/FileOutputStream;
    :try_start_2
    # getter for: Lcom/android/server/wifi/WifiService;->AddedWifiProfile:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1600()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 823
    if-eqz v14, :cond_9

    :try_start_3
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    :cond_9
    :goto_2
    move-object v13, v14

    .line 829
    .end local v14    # "fw":Ljava/io/FileOutputStream;
    .end local v15    # "profilefilepath":Ljava/io/File;
    .restart local v13    # "fw":Ljava/io/FileOutputStream;
    :cond_a
    :goto_3
    const/16 v17, 0x0

    # setter for: Lcom/android/server/wifi/WifiService;->mWifiProfileLoaded:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiService;->access$1802(Z)Z

    .line 830
    const/16 v17, 0x0

    # setter for: Lcom/android/server/wifi/WifiService;->mFirstScanAddProfile:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiService;->access$1902(Z)Z

    .line 831
    const/16 v17, 0x0

    # setter for: Lcom/android/server/wifi/WifiService;->flagForDefaultAp:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiService;->access$2002(Z)Z

    .line 832
    const/16 v17, 0x0

    # setter for: Lcom/android/server/wifi/WifiService;->OTACount:I
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiService;->access$1502(I)I

    .line 833
    const-string v17, ""

    # setter for: Lcom/android/server/wifi/WifiService;->AddedWifiProfile:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiService;->access$1602(Ljava/lang/String;)Ljava/lang/String;

    .line 835
    .end local v13    # "fw":Ljava/io/FileOutputStream;
    :cond_b
    return-void

    .line 787
    :cond_c
    :try_start_4
    const-string v17, "auth=GTC\"\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 792
    :catch_0
    move-exception v11

    .line 793
    .local v11, "e":Ljava/lang/NullPointerException;
    const-string v17, "WifiService"

    const-string v18, "OTA WIFI Profile - NullPointerException"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 815
    .end local v11    # "e":Ljava/lang/NullPointerException;
    .restart local v13    # "fw":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v11

    .line 816
    .local v11, "e":Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_5
    const-string v17, "WifiService"

    const-string v18, "OTA WiFi Profile File Create Not Found "

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 823
    if-eqz v13, :cond_a

    :try_start_6
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    .line 824
    :catch_2
    move-exception v12

    .line 825
    .local v12, "e2":Ljava/lang/Exception;
    const-string v17, "WifiService"

    invoke-virtual {v12}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v18

    .end local v11    # "e":Ljava/io/FileNotFoundException;
    :goto_5
    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 817
    .end local v12    # "e2":Ljava/lang/Exception;
    :catch_3
    move-exception v11

    .line 818
    .local v11, "e":Ljava/io/IOException;
    :goto_6
    :try_start_7
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 823
    if-eqz v13, :cond_a

    :try_start_8
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_3

    .line 824
    :catch_4
    move-exception v12

    .line 825
    .restart local v12    # "e2":Ljava/lang/Exception;
    const-string v17, "WifiService"

    invoke-virtual {v12}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v18

    goto :goto_5

    .line 819
    .end local v11    # "e":Ljava/io/IOException;
    .end local v12    # "e2":Ljava/lang/Exception;
    :catch_5
    move-exception v11

    .line 820
    .local v11, "e":Ljava/lang/Exception;
    :goto_7
    :try_start_9
    const-string v17, "WifiService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "OTA WIFI Profile create file failed "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v11}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 823
    if-eqz v13, :cond_a

    :try_start_a
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_3

    .line 824
    :catch_6
    move-exception v12

    .line 825
    .restart local v12    # "e2":Ljava/lang/Exception;
    const-string v17, "WifiService"

    invoke-virtual {v12}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v18

    goto :goto_5

    .line 822
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v12    # "e2":Ljava/lang/Exception;
    :catchall_0
    move-exception v17

    .line 823
    :goto_8
    if-eqz v13, :cond_d

    :try_start_b
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .line 822
    :cond_d
    :goto_9
    throw v17

    .line 824
    :catch_7
    move-exception v12

    .line 825
    .restart local v12    # "e2":Ljava/lang/Exception;
    const-string v18, "WifiService"

    invoke-virtual {v12}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 824
    .end local v12    # "e2":Ljava/lang/Exception;
    .end local v13    # "fw":Ljava/io/FileOutputStream;
    .restart local v14    # "fw":Ljava/io/FileOutputStream;
    .restart local v15    # "profilefilepath":Ljava/io/File;
    :catch_8
    move-exception v12

    .line 825
    .restart local v12    # "e2":Ljava/lang/Exception;
    const-string v17, "WifiService"

    invoke-virtual {v12}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 822
    .end local v12    # "e2":Ljava/lang/Exception;
    :catchall_1
    move-exception v17

    move-object v13, v14

    .end local v14    # "fw":Ljava/io/FileOutputStream;
    .restart local v13    # "fw":Ljava/io/FileOutputStream;
    goto :goto_8

    .line 819
    .end local v13    # "fw":Ljava/io/FileOutputStream;
    .restart local v14    # "fw":Ljava/io/FileOutputStream;
    :catch_9
    move-exception v11

    move-object v13, v14

    .end local v14    # "fw":Ljava/io/FileOutputStream;
    .restart local v13    # "fw":Ljava/io/FileOutputStream;
    goto :goto_7

    .line 817
    .end local v13    # "fw":Ljava/io/FileOutputStream;
    .restart local v14    # "fw":Ljava/io/FileOutputStream;
    :catch_a
    move-exception v11

    move-object v13, v14

    .end local v14    # "fw":Ljava/io/FileOutputStream;
    .restart local v13    # "fw":Ljava/io/FileOutputStream;
    goto :goto_6

    .line 815
    .end local v13    # "fw":Ljava/io/FileOutputStream;
    .restart local v14    # "fw":Ljava/io/FileOutputStream;
    :catch_b
    move-exception v11

    move-object v13, v14

    .end local v14    # "fw":Ljava/io/FileOutputStream;
    .restart local v13    # "fw":Ljava/io/FileOutputStream;
    goto :goto_4
.end method
