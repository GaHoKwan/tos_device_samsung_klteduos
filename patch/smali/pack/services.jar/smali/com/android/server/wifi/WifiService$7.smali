.class Lcom/android/server/wifi/WifiService$7;
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
    .line 880
    iput-object p1, p0, Lcom/android/server/wifi/WifiService$7;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 883
    iget-object v6, p0, Lcom/android/server/wifi/WifiService$7;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/wifi/WifiService;->access$200(Lcom/android/server/wifi/WifiService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "wifi_generalinfo_nwinfo"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 885
    .local v5, "generalinfonw":Ljava/lang/String;
    const/4 v2, 0x0

    .line 886
    .local v2, "generalFW":Ljava/io/FileOutputStream;
    # getter for: Lcom/android/server/wifi/WifiService;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 887
    const-string v6, "WifiService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "String Matched General Info List"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    :cond_0
    new-instance v6, Ljava/io/File;

    const-string v7, "/data/misc/wifi/generalinfo_nw.conf"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    # setter for: Lcom/android/server/wifi/WifiService;->mFilePath:Ljava/io/File;
    invoke-static {v6}, Lcom/android/server/wifi/WifiService;->access$1702(Ljava/io/File;)Ljava/io/File;

    .line 891
    # getter for: Lcom/android/server/wifi/WifiService;->mFilePath:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1700()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 892
    const-string v6, "WifiService"

    const-string v7, "GeneralInfo file delete is called"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    # getter for: Lcom/android/server/wifi/WifiService;->mFilePath:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1700()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 896
    :cond_1
    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v6, "/data/misc/wifi"

    const-string v7, "generalinfo_nw.conf"

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    .local v4, "generalinfofilepath":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 898
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    const-string v7, "chmod 664 /data/misc/wifi/generalinfo_nw.conf"

    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 899
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v6, 0x1

    invoke-direct {v3, v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 900
    .end local v2    # "generalFW":Ljava/io/FileOutputStream;
    .local v3, "generalFW":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 909
    if-eqz v3, :cond_2

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    :cond_2
    :goto_0
    move-object v2, v3

    .line 914
    .end local v3    # "generalFW":Ljava/io/FileOutputStream;
    .end local v4    # "generalinfofilepath":Ljava/io/File;
    .restart local v2    # "generalFW":Ljava/io/FileOutputStream;
    :cond_3
    :goto_1
    return-void

    .line 901
    :catch_0
    move-exception v0

    .line 902
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    const-string v6, "WifiService"

    const-string v7, "GeneralNwInfo File Create Not Found "

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 909
    if-eqz v2, :cond_3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 910
    :catch_1
    move-exception v1

    .line 911
    .local v1, "e2":Ljava/lang/Exception;
    const-string v6, "WifiService"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_3
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 903
    .end local v1    # "e2":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 904
    .local v0, "e":Ljava/io/IOException;
    :goto_4
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 909
    if-eqz v2, :cond_3

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 910
    :catch_3
    move-exception v1

    .line 911
    .restart local v1    # "e2":Ljava/lang/Exception;
    const-string v6, "WifiService"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 905
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e2":Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .line 906
    .local v0, "e":Ljava/lang/Exception;
    :goto_5
    :try_start_7
    const-string v6, "WifiService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "generalinfofilepath create file failed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 909
    if-eqz v2, :cond_3

    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_1

    .line 910
    :catch_5
    move-exception v1

    .line 911
    .restart local v1    # "e2":Ljava/lang/Exception;
    const-string v6, "WifiService"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 908
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "e2":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 909
    :goto_6
    if-eqz v2, :cond_4

    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 908
    :cond_4
    :goto_7
    throw v6

    .line 910
    :catch_6
    move-exception v1

    .line 911
    .restart local v1    # "e2":Ljava/lang/Exception;
    const-string v7, "WifiService"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 910
    .end local v1    # "e2":Ljava/lang/Exception;
    .end local v2    # "generalFW":Ljava/io/FileOutputStream;
    .restart local v3    # "generalFW":Ljava/io/FileOutputStream;
    .restart local v4    # "generalinfofilepath":Ljava/io/File;
    :catch_7
    move-exception v1

    .line 911
    .restart local v1    # "e2":Ljava/lang/Exception;
    const-string v6, "WifiService"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 908
    .end local v1    # "e2":Ljava/lang/Exception;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "generalFW":Ljava/io/FileOutputStream;
    .restart local v2    # "generalFW":Ljava/io/FileOutputStream;
    goto :goto_6

    .line 905
    .end local v2    # "generalFW":Ljava/io/FileOutputStream;
    .restart local v3    # "generalFW":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v0

    move-object v2, v3

    .end local v3    # "generalFW":Ljava/io/FileOutputStream;
    .restart local v2    # "generalFW":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 903
    .end local v2    # "generalFW":Ljava/io/FileOutputStream;
    .restart local v3    # "generalFW":Ljava/io/FileOutputStream;
    :catch_9
    move-exception v0

    move-object v2, v3

    .end local v3    # "generalFW":Ljava/io/FileOutputStream;
    .restart local v2    # "generalFW":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 901
    .end local v2    # "generalFW":Ljava/io/FileOutputStream;
    .restart local v3    # "generalFW":Ljava/io/FileOutputStream;
    :catch_a
    move-exception v0

    move-object v2, v3

    .end local v3    # "generalFW":Ljava/io/FileOutputStream;
    .restart local v2    # "generalFW":Ljava/io/FileOutputStream;
    goto :goto_2
.end method
