.class Lcom/android/server/wifi/WifiService$WifiProfile;
.super Ljava/lang/Object;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiProfile"
.end annotation


# static fields
.field private static final fileDefaultNamedata:Ljava/lang/String; = "/system/etc/wifi/default_ap.conf"

.field private static final fileGeneralNwInfo:Ljava/lang/String; = "/data/misc/wifi/generalinfo_nw.conf"

.field private static final fileNamedata:Ljava/lang/String; = "/data/misc/wifi/default_ap.conf"

.field private static final filePrevNetworkName:Ljava/lang/String; = "/data/misc/wifi/prev_networkname.conf"


# instance fields
.field private fileDefaultPath:Ljava/io/File;

.field private filePath:Ljava/io/File;

.field private flagForGeneralNwInfo:Z

.field private flagForPrevNetworkName:Z

.field final synthetic this$0:Lcom/android/server/wifi/WifiService;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiService;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1409
    iput-object p1, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1410
    # setter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {v0}, Lcom/android/server/wifi/WifiService;->access$2602([Lcom/android/server/wifi/WifiService$ApInfo;)[Lcom/android/server/wifi/WifiService$ApInfo;

    .line 1411
    # setter for: Lcom/android/server/wifi/WifiService;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {v0}, Lcom/android/server/wifi/WifiService;->access$2702([Lcom/android/server/wifi/WifiService$ApInfo;)[Lcom/android/server/wifi/WifiService$ApInfo;

    .line 1412
    # setter for: Lcom/android/server/wifi/WifiService;->mPrevNetworkName:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {v0}, Lcom/android/server/wifi/WifiService;->access$2802([Lcom/android/server/wifi/WifiService$ApInfo;)[Lcom/android/server/wifi/WifiService$ApInfo;

    .line 1413
    # setter for: Lcom/android/server/wifi/WifiService;->flagForDefaultAp:Z
    invoke-static {v1}, Lcom/android/server/wifi/WifiService;->access$2002(Z)Z

    .line 1414
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->flagForGeneralNwInfo:Z

    .line 1415
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->flagForPrevNetworkName:Z

    .line 1416
    iput-object v0, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->filePath:Ljava/io/File;

    .line 1417
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/wifi/WifiService$WifiProfile;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService$WifiProfile;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1400
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiService$WifiProfile;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/wifi/WifiService$WifiProfile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService$WifiProfile;

    .prologue
    .line 1400
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService$WifiProfile;->checkNetworkName()V

    return-void
.end method

.method private checkNetworkName()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    .line 1786
    const-string v7, ""

    .line 1787
    .local v7, "mMCCMNC":Ljava/lang/String;
    const-string v6, ""

    .line 1788
    .local v6, "mKeymgmt":Ljava/lang/String;
    const-string v5, ""

    .line 1789
    .local v5, "mEap":Ljava/lang/String;
    new-instance v8, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v8}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1790
    .local v8, "mWifiConfig":Landroid/net/wifi/WifiConfiguration;
    const-string v10, "gsm.sim.operator.numeric"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1791
    iget-object v10, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-virtual {v10}, Lcom/android/server/wifi/WifiService;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 1792
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const-string v10, ""

    # setter for: Lcom/android/server/wifi/WifiService;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/wifi/WifiService;->access$3102(Ljava/lang/String;)Ljava/lang/String;

    .line 1793
    const-string v10, ""

    # setter for: Lcom/android/server/wifi/WifiService;->mMatchedPrevNetworkName:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/wifi/WifiService;->access$2402(Ljava/lang/String;)Ljava/lang/String;

    .line 1794
    # getter for: Lcom/android/server/wifi/WifiService;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "WifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mMCCMNC = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    :cond_0
    :try_start_0
    # getter for: Lcom/android/server/wifi/WifiService;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2700()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 1797
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    # getter for: Lcom/android/server/wifi/WifiService;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2700()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v10

    array-length v10, v10

    if-ge v4, v10, :cond_2

    .line 1798
    # getter for: Lcom/android/server/wifi/WifiService;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "WifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mGeneralNwInfo[j].getMCCMNC() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    # getter for: Lcom/android/server/wifi/WifiService;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2700()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v12

    aget-object v12, v12, v4

    invoke-virtual {v12}, Lcom/android/server/wifi/WifiService$ApInfo;->getMCCMNC()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    :cond_1
    const-string v10, ""

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    # getter for: Lcom/android/server/wifi/WifiService;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2700()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v10

    aget-object v10, v10, v4

    invoke-virtual {v10}, Lcom/android/server/wifi/WifiService$ApInfo;->getMCCMNC()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1800
    # getter for: Lcom/android/server/wifi/WifiService;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2700()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v10

    aget-object v10, v10, v4

    invoke-virtual {v10}, Lcom/android/server/wifi/WifiService$ApInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v10

    # setter for: Lcom/android/server/wifi/WifiService;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/wifi/WifiService;->access$3102(Ljava/lang/String;)Ljava/lang/String;

    .line 1801
    # getter for: Lcom/android/server/wifi/WifiService;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, "WifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mMatchedNetworkName = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    # getter for: Lcom/android/server/wifi/WifiService;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$3100()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1806
    .end local v4    # "j":I
    :cond_2
    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2600()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v10

    if-eqz v10, :cond_a

    .line 1807
    const/4 v9, 0x0

    .local v9, "p":I
    :goto_1
    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2600()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v10

    array-length v10, v10

    if-ge v9, v10, :cond_a

    .line 1808
    if-eqz v1, :cond_f

    .line 1809
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1810
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-nez v10, :cond_4

    iget-object v10, v8, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1811
    :cond_4
    const-string v6, "WPA-EAP IEEE8021X"

    .line 1813
    :cond_5
    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v10}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_c

    .line 1814
    const-string v5, "SIM"

    .line 1822
    :cond_6
    :goto_2
    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2600()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v11

    aget-object v11, v11, v9

    invoke-virtual {v11}, Lcom/android/server/wifi/WifiService$ApInfo;->getSSID()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/wifi/WifiService$WifiProfile;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2600()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v10

    aget-object v10, v10, v9

    invoke-virtual {v10}, Lcom/android/server/wifi/WifiService$ApInfo;->getSecurityType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2600()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v10

    aget-object v10, v10, v9

    invoke-virtual {v10}, Lcom/android/server/wifi/WifiService$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1823
    # getter for: Lcom/android/server/wifi/WifiService;->mPrevNetworkName:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2800()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v10

    if-eqz v10, :cond_7

    .line 1824
    # getter for: Lcom/android/server/wifi/WifiService;->mPrevNetworkName:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2800()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v10}, Lcom/android/server/wifi/WifiService$ApInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v10

    # setter for: Lcom/android/server/wifi/WifiService;->mMatchedPrevNetworkName:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/wifi/WifiService;->access$2402(Ljava/lang/String;)Ljava/lang/String;

    .line 1825
    :cond_7
    # getter for: Lcom/android/server/wifi/WifiService;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v10

    if-eqz v10, :cond_8

    const-string v10, "WifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mMatchedPrevNetworkName"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    # getter for: Lcom/android/server/wifi/WifiService;->mMatchedPrevNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2400()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    :cond_8
    const-string v6, ""

    .line 1827
    const-string v5, ""

    .line 1828
    const/4 v10, 0x1

    # setter for: Lcom/android/server/wifi/WifiService;->mWifiProfileLoaded:Z
    invoke-static {v10}, Lcom/android/server/wifi/WifiService;->access$1802(Z)Z

    .line 1832
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_9
    const-string v10, ""

    # getter for: Lcom/android/server/wifi/WifiService;->mMatchedPrevNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2400()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_f

    .line 1840
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v9    # "p":I
    :cond_a
    :goto_3
    return-void

    .line 1797
    .restart local v4    # "j":I
    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1815
    .end local v4    # "j":I
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v9    # "p":I
    :cond_c
    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v10}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v10

    const/4 v11, 0x5

    if-ne v10, v11, :cond_d

    .line 1816
    const-string v5, "AKA"

    goto/16 :goto_2

    .line 1817
    :cond_d
    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v10}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v10

    if-nez v10, :cond_e

    .line 1818
    const-string v5, "PEAP"

    goto/16 :goto_2

    .line 1819
    :cond_e
    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v10}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v10

    if-ne v10, v13, :cond_6

    .line 1820
    const-string v5, "TTLS"
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 1807
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_f
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 1837
    .end local v9    # "p":I
    :catch_0
    move-exception v2

    .line 1838
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v10, "WifiService"

    const-string v11, "checkNetworkName - NullPointerException"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 1737
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getGeneralNwInfoFromFile(Ljava/lang/String;)[Lcom/android/server/wifi/WifiService$ApInfo;
    .locals 17
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 1636
    # getter for: Lcom/android/server/wifi/WifiService;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v14

    if-eqz v14, :cond_0

    const-string v14, "WifiService"

    const-string v15, "getGeneralNwInfoFromFile()"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    :cond_0
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/wifi/WifiService$WifiProfile;->flagForGeneralNwInfo:Z

    .line 1639
    const-string v1, ""

    .line 1640
    .local v1, "buf1":Ljava/lang/String;
    const-string v2, ""

    .line 1642
    .local v2, "buf2":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1644
    .local v6, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/FileReader;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1647
    .end local v6    # "in":Ljava/io/BufferedReader;
    .local v7, "in":Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "bufLine":Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 1648
    const-string v14, "mccmnc=\""

    invoke-virtual {v3, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1649
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 1650
    .local v8, "mccmnc":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x22

    invoke-virtual {v8, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    const/16 v16, 0x22

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1651
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1652
    goto :goto_0

    .end local v8    # "mccmnc":Ljava/lang/String;
    :cond_2
    const-string v14, "networkname=\""

    invoke-virtual {v3, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 1653
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 1654
    .local v11, "networkname":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x22

    invoke-virtual {v11, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    const/16 v16, 0x22

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1655
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 1656
    goto/16 :goto_0

    .line 1658
    .end local v3    # "bufLine":Ljava/lang/String;
    .end local v7    # "in":Ljava/io/BufferedReader;
    .end local v11    # "networkname":Ljava/lang/String;
    .restart local v6    # "in":Ljava/io/BufferedReader;
    :catch_0
    move-exception v4

    .line 1659
    .local v4, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    const-string v14, "WifiService"

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1660
    const/4 v13, 0x0

    .line 1662
    if-eqz v6, :cond_3

    .line 1664
    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1685
    .end local v4    # "e":Ljava/io/IOException;
    :cond_3
    :goto_2
    return-object v13

    .line 1662
    :catchall_0
    move-exception v14

    :goto_3
    if-eqz v6, :cond_4

    .line 1664
    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1662
    :cond_4
    throw v14

    .end local v6    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "bufLine":Ljava/lang/String;
    .restart local v7    # "in":Ljava/io/BufferedReader;
    :cond_5
    if-eqz v7, :cond_6

    .line 1664
    :try_start_5
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 1672
    :cond_6
    const-string v14, ","

    invoke-virtual {v1, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1673
    .local v9, "mccmncs":[Ljava/lang/String;
    const-string v14, ","

    invoke-virtual {v2, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1675
    .local v12, "networknames":[Ljava/lang/String;
    array-length v10, v9

    .line 1676
    .local v10, "networkCount":I
    new-array v13, v10, [Lcom/android/server/wifi/WifiService$ApInfo;

    .line 1678
    .local v13, "ret":[Lcom/android/server/wifi/WifiService$ApInfo;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4
    if-ge v5, v10, :cond_8

    .line 1679
    :try_start_6
    new-instance v14, Lcom/android/server/wifi/WifiService$ApInfo;

    aget-object v15, v9, v5

    aget-object v16, v12, v5

    invoke-direct/range {v14 .. v16}, Lcom/android/server/wifi/WifiService$ApInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v14, v13, v5

    .line 1680
    # getter for: Lcom/android/server/wifi/WifiService;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v14

    if-eqz v14, :cond_7

    const-string v14, "WifiService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "GeneralNwInfo["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v13, v5

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wifi/WifiService$ApInfo;->getMCCMNC()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v13, v5

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wifi/WifiService$ApInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_1

    .line 1678
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_8
    move-object v6, v7

    .line 1682
    .end local v7    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "in":Ljava/io/BufferedReader;
    goto :goto_2

    .line 1683
    .end local v6    # "in":Ljava/io/BufferedReader;
    .restart local v7    # "in":Ljava/io/BufferedReader;
    :catch_1
    move-exception v4

    .line 1684
    .local v4, "e":Ljava/lang/NullPointerException;
    const-string v14, "WifiService"

    const-string v15, "getGeneralNwInfoFromFile: No ApInfo - NullPointerException"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    const/4 v13, 0x0

    move-object v6, v7

    .end local v7    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "in":Ljava/io/BufferedReader;
    goto :goto_2

    .line 1665
    .end local v3    # "bufLine":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/NullPointerException;
    .end local v5    # "i":I
    .end local v9    # "mccmncs":[Ljava/lang/String;
    .end local v10    # "networkCount":I
    .end local v12    # "networknames":[Ljava/lang/String;
    .end local v13    # "ret":[Lcom/android/server/wifi/WifiService$ApInfo;
    :catch_2
    move-exception v4

    .line 1666
    .local v4, "e":Ljava/io/IOException;
    const-string v14, "WifiService"

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    :goto_5
    const/4 v13, 0x0

    goto :goto_2

    .line 1665
    :catch_3
    move-exception v4

    .line 1666
    const-string v14, "WifiService"

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1665
    .end local v4    # "e":Ljava/io/IOException;
    .end local v6    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "bufLine":Ljava/lang/String;
    .restart local v7    # "in":Ljava/io/BufferedReader;
    :catch_4
    move-exception v4

    .line 1666
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v14, "WifiService"

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    const/4 v13, 0x0

    move-object v6, v7

    .end local v7    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_2

    .line 1662
    .end local v3    # "bufLine":Ljava/lang/String;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v6    # "in":Ljava/io/BufferedReader;
    .restart local v7    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v14

    move-object v6, v7

    .end local v7    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_3

    .line 1658
    .end local v6    # "in":Ljava/io/BufferedReader;
    .restart local v7    # "in":Ljava/io/BufferedReader;
    :catch_5
    move-exception v4

    move-object v6, v7

    .end local v7    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_1
.end method

.method private getPrevNetworkNameFromFile(Ljava/lang/String;)[Lcom/android/server/wifi/WifiService$ApInfo;
    .locals 14
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 1690
    # getter for: Lcom/android/server/wifi/WifiService;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "WifiService"

    const-string v12, "getPrevNetworkNameFromFile()"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    :cond_0
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->flagForPrevNetworkName:Z

    .line 1693
    const-string v0, ""

    .line 1695
    .local v0, "buf1":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1697
    .local v4, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/FileReader;

    invoke-direct {v11, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1700
    .end local v4    # "in":Ljava/io/BufferedReader;
    .local v5, "in":Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "bufLine":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 1701
    const-string v11, "networkname=\""

    invoke-virtual {v1, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1702
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 1703
    .local v7, "networkname":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x22

    invoke-virtual {v7, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    const/16 v13, 0x22

    invoke-virtual {v7, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v13

    invoke-virtual {v7, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1704
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 1705
    goto :goto_0

    .line 1707
    .end local v1    # "bufLine":Ljava/lang/String;
    .end local v5    # "in":Ljava/io/BufferedReader;
    .end local v7    # "networkname":Ljava/lang/String;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    .line 1708
    .local v2, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    const-string v11, "WifiService"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1711
    if-eqz v4, :cond_2

    .line 1713
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_2
    move-object v9, v10

    .line 1732
    .end local v2    # "e":Ljava/io/IOException;
    :goto_2
    return-object v9

    .line 1711
    :catchall_0
    move-exception v11

    :goto_3
    if-eqz v4, :cond_3

    .line 1713
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1711
    :cond_3
    throw v11

    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "bufLine":Ljava/lang/String;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    :cond_4
    if-eqz v5, :cond_5

    .line 1713
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 1721
    :cond_5
    const-string v11, ","

    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1722
    .local v8, "networknames":[Ljava/lang/String;
    array-length v6, v8

    .line 1723
    .local v6, "networkCount":I
    new-array v9, v6, [Lcom/android/server/wifi/WifiService$ApInfo;

    .line 1725
    .local v9, "ret":[Lcom/android/server/wifi/WifiService$ApInfo;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    if-ge v3, v6, :cond_7

    .line 1726
    :try_start_6
    new-instance v11, Lcom/android/server/wifi/WifiService$ApInfo;

    aget-object v12, v8, v3

    invoke-direct {v11, v12}, Lcom/android/server/wifi/WifiService$ApInfo;-><init>(Ljava/lang/String;)V

    aput-object v11, v9, v3

    .line 1727
    # getter for: Lcom/android/server/wifi/WifiService;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v11

    if-eqz v11, :cond_6

    const-string v11, "WifiService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "PrevNetworkName["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v9, v3

    invoke-virtual {v13}, Lcom/android/server/wifi/WifiService$ApInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_1

    .line 1725
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    move-object v4, v5

    .line 1729
    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    goto :goto_2

    .line 1730
    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    :catch_1
    move-exception v2

    .line 1731
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v11, "WifiService"

    const-string v12, "getPrevNetworkNameFromFile: No ApInfo - NullPointerException"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    move-object v9, v10

    .line 1732
    goto :goto_2

    .line 1714
    .end local v1    # "bufLine":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/NullPointerException;
    .end local v3    # "i":I
    .end local v6    # "networkCount":I
    .end local v8    # "networknames":[Ljava/lang/String;
    .end local v9    # "ret":[Lcom/android/server/wifi/WifiService$ApInfo;
    :catch_2
    move-exception v2

    .line 1715
    .local v2, "e":Ljava/io/IOException;
    const-string v11, "WifiService"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    move-object v9, v10

    .line 1716
    goto :goto_2

    .line 1714
    :catch_3
    move-exception v2

    .line 1715
    const-string v11, "WifiService"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1714
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "bufLine":Ljava/lang/String;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    :catch_4
    move-exception v2

    .line 1715
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v11, "WifiService"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    move-object v9, v10

    .line 1716
    goto/16 :goto_2

    .line 1711
    .end local v1    # "bufLine":Ljava/lang/String;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v11

    move-object v4, v5

    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_3

    .line 1707
    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    :catch_5
    move-exception v2

    move-object v4, v5

    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_1
.end method

.method private getVendorApInfoFromFile(Ljava/lang/String;)[Lcom/android/server/wifi/WifiService$ApInfo;
    .locals 43
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 1517
    # getter for: Lcom/android/server/wifi/WifiService;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "WifiService"

    const-string v2, "getVendorApInfoFromFile()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    :cond_0
    const/4 v1, 0x1

    # setter for: Lcom/android/server/wifi/WifiService;->flagForDefaultAp:Z
    invoke-static {v1}, Lcom/android/server/wifi/WifiService;->access$2002(Z)Z

    .line 1520
    const-string v38, ""

    .line 1521
    .local v38, "ssidbuf":Ljava/lang/String;
    const-string v20, ""

    .line 1522
    .local v20, "keymgmtbuf":Ljava/lang/String;
    const-string v41, ""

    .line 1523
    .local v41, "wepkeybuf":Ljava/lang/String;
    const-string v32, ""

    .line 1524
    .local v32, "prioritybuf":Ljava/lang/String;
    const-string v12, ""

    .line 1525
    .local v12, "eapbuf":Ljava/lang/String;
    const-string v23, ""

    .line 1526
    .local v23, "networknamebuf":Ljava/lang/String;
    const-string v16, ""

    .line 1527
    .local v16, "identitybuf":Ljava/lang/String;
    const-string v26, ""

    .line 1528
    .local v26, "passwordbuf":Ljava/lang/String;
    const-string v30, ""

    .line 1530
    .local v30, "phasebuf":Ljava/lang/String;
    const/16 v18, 0x0

    .line 1532
    .local v18, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v19, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1535
    .end local v18    # "in":Ljava/io/BufferedReader;
    .local v19, "in":Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .local v9, "bufLine":Ljava/lang/String;
    if-eqz v9, :cond_c

    .line 1536
    const-string/jumbo v1, "ssid=\""

    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1537
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v37

    .line 1538
    .local v37, "ssid":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x22

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x22

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    move-object/from16 v0, v37

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    .line 1539
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    .line 1540
    goto :goto_0

    .end local v37    # "ssid":Ljava/lang/String;
    :cond_2
    const-string v1, "key_mgmt="

    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1541
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v35

    .line 1542
    .local v35, "secure":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3d

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1543
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1544
    goto/16 :goto_0

    .end local v35    # "secure":Ljava/lang/String;
    :cond_3
    const-string/jumbo v1, "wep_key0="

    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1545
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v40

    .line 1546
    .local v40, "wepkey":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v41

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3d

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    .line 1547
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v41

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    .line 1548
    goto/16 :goto_0

    .end local v40    # "wepkey":Ljava/lang/String;
    :cond_4
    const-string v1, "priority="

    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1549
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v31

    .line 1550
    .local v31, "priority":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3d

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 1551
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 1552
    goto/16 :goto_0

    .end local v31    # "priority":Ljava/lang/String;
    :cond_5
    const-string v1, "eap="

    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1553
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 1554
    .local v11, "eap":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3d

    invoke-virtual {v11, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v11, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1555
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1556
    goto/16 :goto_0

    .end local v11    # "eap":Ljava/lang/String;
    :cond_6
    const-string v1, "networkname=\""

    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1557
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    .line 1558
    .local v22, "networkname":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x22

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 1559
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 1560
    goto/16 :goto_0

    .end local v22    # "networkname":Ljava/lang/String;
    :cond_7
    const-string v1, "identity=\""

    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1561
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 1562
    .local v15, "identity":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x22

    invoke-virtual {v15, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x22

    invoke-virtual {v15, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {v15, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1563
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1564
    goto/16 :goto_0

    .end local v15    # "identity":Ljava/lang/String;
    :cond_8
    const-string v1, "password=\""

    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1565
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    .line 1566
    .local v25, "password":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x22

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x22

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 1567
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 1568
    goto/16 :goto_0

    .end local v25    # "password":Ljava/lang/String;
    :cond_9
    const-string v1, "phase2=\""

    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1569
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    .line 1570
    .local v28, "phase2":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x22

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x22

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 1571
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v30

    .line 1572
    goto/16 :goto_0

    .line 1574
    .end local v9    # "bufLine":Ljava/lang/String;
    .end local v19    # "in":Ljava/io/BufferedReader;
    .end local v28    # "phase2":Ljava/lang/String;
    .restart local v18    # "in":Ljava/io/BufferedReader;
    :catch_0
    move-exception v10

    .line 1575
    .local v10, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    const-string v1, "WifiService"

    invoke-virtual {v10}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1576
    const/16 v34, 0x0

    .line 1578
    if-eqz v18, :cond_a

    .line 1580
    :try_start_3
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1631
    .end local v10    # "e":Ljava/io/IOException;
    :cond_a
    :goto_2
    return-object v34

    .line 1578
    :catchall_0
    move-exception v1

    :goto_3
    if-eqz v18, :cond_b

    .line 1580
    :try_start_4
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1578
    :cond_b
    throw v1

    .end local v18    # "in":Ljava/io/BufferedReader;
    .restart local v9    # "bufLine":Ljava/lang/String;
    .restart local v19    # "in":Ljava/io/BufferedReader;
    :cond_c
    if-eqz v19, :cond_d

    .line 1580
    :try_start_5
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 1588
    :cond_d
    const-string v1, ","

    move-object/from16 v0, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v39

    .line 1589
    .local v39, "ssids":[Ljava/lang/String;
    const-string v1, ","

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v36

    .line 1590
    .local v36, "secures":[Ljava/lang/String;
    const-string v1, ","

    move-object/from16 v0, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v42

    .line 1591
    .local v42, "wepkeys":[Ljava/lang/String;
    const-string v1, ","

    move-object/from16 v0, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v33

    .line 1592
    .local v33, "prioritys":[Ljava/lang/String;
    const-string v1, ","

    invoke-virtual {v12, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 1593
    .local v13, "eaps":[Ljava/lang/String;
    const-string v1, ","

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 1594
    .local v24, "networknames":[Ljava/lang/String;
    const-string v1, ","

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 1595
    .local v17, "identitys":[Ljava/lang/String;
    const-string v1, ","

    move-object/from16 v0, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .line 1596
    .local v27, "passwords":[Ljava/lang/String;
    const-string v1, ","

    move-object/from16 v0, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v29

    .line 1598
    .local v29, "phase2s":[Ljava/lang/String;
    move-object/from16 v0, v39

    array-length v1, v0

    move-object/from16 v0, v36

    array-length v2, v0

    if-eq v1, v2, :cond_e

    .line 1599
    const-string v1, "WifiService"

    const-string v2, "Parse error default ap"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    const/16 v34, 0x0

    move-object/from16 v18, v19

    .end local v19    # "in":Ljava/io/BufferedReader;
    .restart local v18    # "in":Ljava/io/BufferedReader;
    goto :goto_2

    .line 1603
    .end local v18    # "in":Ljava/io/BufferedReader;
    .restart local v19    # "in":Ljava/io/BufferedReader;
    :cond_e
    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v21, v0

    .line 1604
    .local v21, "networkCount":I
    move/from16 v0, v21

    new-array v0, v0, [Lcom/android/server/wifi/WifiService$ApInfo;

    move-object/from16 v34, v0

    .line 1606
    .local v34, "ret":[Lcom/android/server/wifi/WifiService$ApInfo;
    :try_start_6
    const-string v1, ""

    const/4 v2, 0x0

    aget-object v2, v33, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string v1, ""

    const/4 v2, 0x0

    aget-object v2, v39, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string v1, ""

    const/4 v2, 0x0

    aget-object v2, v13, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string v1, ""

    const/4 v2, 0x0

    aget-object v2, v17, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, ""

    const/4 v2, 0x0

    aget-object v2, v27, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1607
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_4
    move/from16 v0, v21

    if-ge v14, v0, :cond_12

    .line 1608
    const-string v1, ""

    aget-object v2, v33, v14

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, ""

    aget-object v2, v13, v14

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, ""

    const/4 v2, 0x0

    aget-object v2, v24, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, ""

    const/4 v2, 0x0

    aget-object v2, v36, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 1609
    new-instance v1, Lcom/android/server/wifi/WifiService$ApInfo;

    aget-object v2, v39, v14

    aget-object v3, v36, v14

    aget-object v4, v33, v14

    aget-object v5, v13, v14

    aget-object v6, v24, v14

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wifi/WifiService$ApInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v34, v14

    .line 1613
    :cond_f
    :goto_5
    # getter for: Lcom/android/server/wifi/WifiService;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIM/AKA DefaultAp["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v34, v14

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiService$ApInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v34, v14

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiService$ApInfo;->getSecurityType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ret[].getEap() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v34, v14

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiService$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    :cond_10
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_4

    .line 1610
    :cond_11
    const-string v1, ""

    aget-object v2, v33, v14

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, ""

    aget-object v2, v13, v14

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, ""

    const/4 v2, 0x0

    aget-object v2, v24, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, ""

    const/4 v2, 0x0

    aget-object v2, v36, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 1611
    new-instance v1, Lcom/android/server/wifi/WifiService$ApInfo;

    aget-object v2, v39, v14

    aget-object v3, v36, v14

    aget-object v4, v33, v14

    aget-object v5, v13, v14

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/wifi/WifiService$ApInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v34, v14
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_5

    .line 1629
    .end local v14    # "i":I
    :catch_1
    move-exception v10

    .line 1630
    .local v10, "e":Ljava/lang/NullPointerException;
    const-string v1, "WifiService"

    const-string v2, "getVendorApInfoFromFile: No ApInfo - NullPointerException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    const/16 v34, 0x0

    move-object/from16 v18, v19

    .end local v19    # "in":Ljava/io/BufferedReader;
    .restart local v18    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_2

    .end local v10    # "e":Ljava/lang/NullPointerException;
    .end local v18    # "in":Ljava/io/BufferedReader;
    .restart local v14    # "i":I
    .restart local v19    # "in":Ljava/io/BufferedReader;
    :cond_12
    move-object/from16 v18, v19

    .line 1615
    .end local v19    # "in":Ljava/io/BufferedReader;
    .restart local v18    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_2

    .line 1616
    .end local v14    # "i":I
    .end local v18    # "in":Ljava/io/BufferedReader;
    .restart local v19    # "in":Ljava/io/BufferedReader;
    :cond_13
    :try_start_7
    const-string v1, ""

    const/4 v2, 0x0

    aget-object v2, v17, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, ""

    const/4 v2, 0x0

    aget-object v2, v27, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 1617
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_6
    move/from16 v0, v21

    if-ge v14, v0, :cond_16

    .line 1618
    const-string v1, ""

    const/4 v2, 0x0

    aget-object v2, v29, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1619
    new-instance v1, Lcom/android/server/wifi/WifiService$ApInfo;

    aget-object v2, v39, v14

    aget-object v3, v36, v14

    aget-object v4, v33, v14

    aget-object v5, v13, v14

    aget-object v6, v17, v14

    aget-object v7, v27, v14

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wifi/WifiService$ApInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v34, v14

    .line 1622
    :goto_7
    # getter for: Lcom/android/server/wifi/WifiService;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PEAP/TTLS DefaultAp["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v34, v14

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiService$ApInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v34, v14

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiService$ApInfo;->getSecurityType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ret[].getEap() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v34, v14

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiService$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    :cond_14
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 1621
    :cond_15
    new-instance v1, Lcom/android/server/wifi/WifiService$ApInfo;

    aget-object v2, v39, v14

    aget-object v3, v36, v14

    aget-object v4, v33, v14

    aget-object v5, v13, v14

    aget-object v6, v17, v14

    aget-object v7, v27, v14

    aget-object v8, v29, v14

    invoke-direct/range {v1 .. v8}, Lcom/android/server/wifi/WifiService$ApInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v34, v14

    goto :goto_7

    :cond_16
    move-object/from16 v18, v19

    .line 1624
    .end local v19    # "in":Ljava/io/BufferedReader;
    .restart local v18    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_2

    .line 1626
    .end local v14    # "i":I
    .end local v18    # "in":Ljava/io/BufferedReader;
    .restart local v19    # "in":Ljava/io/BufferedReader;
    :cond_17
    const-string v1, "WifiService"

    const-string v2, "No ApInfo"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_1

    .line 1627
    const/16 v34, 0x0

    .end local v34    # "ret":[Lcom/android/server/wifi/WifiService$ApInfo;
    move-object/from16 v18, v19

    .end local v19    # "in":Ljava/io/BufferedReader;
    .restart local v18    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_2

    .line 1581
    .end local v9    # "bufLine":Ljava/lang/String;
    .end local v13    # "eaps":[Ljava/lang/String;
    .end local v17    # "identitys":[Ljava/lang/String;
    .end local v21    # "networkCount":I
    .end local v24    # "networknames":[Ljava/lang/String;
    .end local v27    # "passwords":[Ljava/lang/String;
    .end local v29    # "phase2s":[Ljava/lang/String;
    .end local v33    # "prioritys":[Ljava/lang/String;
    .end local v36    # "secures":[Ljava/lang/String;
    .end local v39    # "ssids":[Ljava/lang/String;
    .end local v42    # "wepkeys":[Ljava/lang/String;
    :catch_2
    move-exception v10

    .line 1582
    .local v10, "e":Ljava/io/IOException;
    const-string v1, "WifiService"

    invoke-virtual {v10}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    :goto_8
    const/16 v34, 0x0

    goto/16 :goto_2

    .line 1581
    :catch_3
    move-exception v10

    .line 1582
    const-string v1, "WifiService"

    invoke-virtual {v10}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 1581
    .end local v10    # "e":Ljava/io/IOException;
    .end local v18    # "in":Ljava/io/BufferedReader;
    .restart local v9    # "bufLine":Ljava/lang/String;
    .restart local v19    # "in":Ljava/io/BufferedReader;
    :catch_4
    move-exception v10

    .line 1582
    .restart local v10    # "e":Ljava/io/IOException;
    const-string v1, "WifiService"

    invoke-virtual {v10}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    const/16 v34, 0x0

    move-object/from16 v18, v19

    .end local v19    # "in":Ljava/io/BufferedReader;
    .restart local v18    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_2

    .line 1578
    .end local v9    # "bufLine":Ljava/lang/String;
    .end local v10    # "e":Ljava/io/IOException;
    .end local v18    # "in":Ljava/io/BufferedReader;
    .restart local v19    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v1

    move-object/from16 v18, v19

    .end local v19    # "in":Ljava/io/BufferedReader;
    .restart local v18    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_3

    .line 1574
    .end local v18    # "in":Ljava/io/BufferedReader;
    .restart local v19    # "in":Ljava/io/BufferedReader;
    :catch_5
    move-exception v10

    move-object/from16 v18, v19

    .end local v19    # "in":Ljava/io/BufferedReader;
    .restart local v18    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_1
.end method

.method private makePrevNetworkName()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    .line 1456
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1457
    .local v9, "sb":Ljava/lang/StringBuilder;
    const-string v6, ""

    .line 1458
    .local v6, "mNetworkNameProfile":Ljava/lang/String;
    const-string v7, ""

    .line 1459
    .local v7, "mPrevNetworkName":Ljava/lang/String;
    const-string v5, ""

    .line 1460
    .local v5, "mMCCMNC":Ljava/lang/String;
    const-string v10, "gsm.sim.operator.numeric"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1461
    # getter for: Lcom/android/server/wifi/WifiService;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "WifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "makePrevNetworkName mMCCMNC = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    :cond_0
    :try_start_0
    # getter for: Lcom/android/server/wifi/WifiService;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2700()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 1464
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    # getter for: Lcom/android/server/wifi/WifiService;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2700()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v10

    array-length v10, v10

    if-ge v4, v10, :cond_2

    .line 1465
    # getter for: Lcom/android/server/wifi/WifiService;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "WifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mGeneralNwInfo[].getMCCMNC() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    # getter for: Lcom/android/server/wifi/WifiService;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2700()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v12

    aget-object v12, v12, v4

    invoke-virtual {v12}, Lcom/android/server/wifi/WifiService$ApInfo;->getMCCMNC()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    :cond_1
    const-string v10, ""

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    # getter for: Lcom/android/server/wifi/WifiService;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2700()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v10

    aget-object v10, v10, v4

    invoke-virtual {v10}, Lcom/android/server/wifi/WifiService$ApInfo;->getMCCMNC()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1467
    # getter for: Lcom/android/server/wifi/WifiService;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2700()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v10

    aget-object v10, v10, v4

    invoke-virtual {v10}, Lcom/android/server/wifi/WifiService$ApInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v7

    .line 1468
    # getter for: Lcom/android/server/wifi/WifiService;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, "WifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mPrevNetworkName = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1476
    .end local v4    # "j":I
    :cond_2
    :goto_1
    # getter for: Lcom/android/server/wifi/WifiService;->flagForNWNameCreate:Z
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$3000()Z

    move-result v10

    if-nez v10, :cond_8

    .line 1478
    const/4 v10, 0x0

    :try_start_1
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1479
    const-string v10, "network={\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1480
    const-string v10, ""

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "    networkname=\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\"\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1481
    :cond_3
    const-string/jumbo v10, "}\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1485
    :goto_2
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1486
    # getter for: Lcom/android/server/wifi/WifiService;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1487
    const-string v10, "WifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "String mNetworkNameProfile "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    :cond_4
    new-instance v10, Ljava/io/File;

    const-string v11, "/data/misc/wifi/prev_networkname.conf"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    # setter for: Lcom/android/server/wifi/WifiService;->mFilePath:Ljava/io/File;
    invoke-static {v10}, Lcom/android/server/wifi/WifiService;->access$1702(Ljava/io/File;)Ljava/io/File;

    .line 1490
    const/4 v2, 0x0

    .line 1491
    .local v2, "fw":Ljava/io/FileOutputStream;
    # getter for: Lcom/android/server/wifi/WifiService;->mFilePath:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1700()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1492
    # getter for: Lcom/android/server/wifi/WifiService;->mFilePath:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1700()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 1495
    :cond_5
    :try_start_2
    new-instance v8, Ljava/io/File;

    const-string v10, "/data/misc/wifi"

    const-string v11, "prev_networkname.conf"

    invoke-direct {v8, v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    .local v8, "profilefilepath":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    .line 1497
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    const-string v11, "chmod 664 /data/misc/wifi/prev_networkname.conf"

    invoke-virtual {v10, v11}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 1498
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v10, 0x1

    invoke-direct {v3, v8, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1499
    .end local v2    # "fw":Ljava/io/FileOutputStream;
    .local v3, "fw":Ljava/io/FileOutputStream;
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/io/OutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1508
    if-eqz v3, :cond_6

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9

    :cond_6
    :goto_3
    move-object v2, v3

    .line 1513
    .end local v3    # "fw":Ljava/io/FileOutputStream;
    .end local v8    # "profilefilepath":Ljava/io/File;
    .restart local v2    # "fw":Ljava/io/FileOutputStream;
    :cond_7
    :goto_4
    # setter for: Lcom/android/server/wifi/WifiService;->flagForNWNameCreate:Z
    invoke-static {v13}, Lcom/android/server/wifi/WifiService;->access$3002(Z)Z

    .line 1515
    .end local v2    # "fw":Ljava/io/FileOutputStream;
    :cond_8
    return-void

    .line 1464
    .restart local v4    # "j":I
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1473
    .end local v4    # "j":I
    :catch_0
    move-exception v0

    .line 1474
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v10, "WifiService"

    const-string v11, "makePrevNetworkName - NullPointerException"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1482
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1483
    .restart local v0    # "e":Ljava/lang/NullPointerException;
    const-string v10, "WifiService"

    const-string v11, "makePrevNetworkName -NullPointerException"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1500
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .restart local v2    # "fw":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    .line 1501
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_5
    :try_start_5
    const-string v10, "WifiService"

    const-string v11, "PrevNetworkName File Create Not Found "

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1508
    if-eqz v2, :cond_7

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_4

    .line 1509
    :catch_3
    move-exception v1

    .line 1510
    .local v1, "e2":Ljava/lang/Exception;
    const-string v10, "WifiService"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_6
    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1502
    .end local v1    # "e2":Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .line 1503
    .local v0, "e":Ljava/io/IOException;
    :goto_7
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1508
    if-eqz v2, :cond_7

    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_4

    .line 1509
    :catch_5
    move-exception v1

    .line 1510
    .restart local v1    # "e2":Ljava/lang/Exception;
    const-string v10, "WifiService"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_6

    .line 1504
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e2":Ljava/lang/Exception;
    :catch_6
    move-exception v0

    .line 1505
    .local v0, "e":Ljava/lang/Exception;
    :goto_8
    :try_start_9
    const-string v10, "WifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "PrevNetworkName create file failed "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1508
    if-eqz v2, :cond_7

    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_4

    .line 1509
    :catch_7
    move-exception v1

    .line 1510
    .restart local v1    # "e2":Ljava/lang/Exception;
    const-string v10, "WifiService"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_6

    .line 1507
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "e2":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    .line 1508
    :goto_9
    if-eqz v2, :cond_a

    :try_start_b
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    .line 1507
    :cond_a
    :goto_a
    throw v10

    .line 1509
    :catch_8
    move-exception v1

    .line 1510
    .restart local v1    # "e2":Ljava/lang/Exception;
    const-string v11, "WifiService"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 1509
    .end local v1    # "e2":Ljava/lang/Exception;
    .end local v2    # "fw":Ljava/io/FileOutputStream;
    .restart local v3    # "fw":Ljava/io/FileOutputStream;
    .restart local v8    # "profilefilepath":Ljava/io/File;
    :catch_9
    move-exception v1

    .line 1510
    .restart local v1    # "e2":Ljava/lang/Exception;
    const-string v10, "WifiService"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1507
    .end local v1    # "e2":Ljava/lang/Exception;
    :catchall_1
    move-exception v10

    move-object v2, v3

    .end local v3    # "fw":Ljava/io/FileOutputStream;
    .restart local v2    # "fw":Ljava/io/FileOutputStream;
    goto :goto_9

    .line 1504
    .end local v2    # "fw":Ljava/io/FileOutputStream;
    .restart local v3    # "fw":Ljava/io/FileOutputStream;
    :catch_a
    move-exception v0

    move-object v2, v3

    .end local v3    # "fw":Ljava/io/FileOutputStream;
    .restart local v2    # "fw":Ljava/io/FileOutputStream;
    goto :goto_8

    .line 1502
    .end local v2    # "fw":Ljava/io/FileOutputStream;
    .restart local v3    # "fw":Ljava/io/FileOutputStream;
    :catch_b
    move-exception v0

    move-object v2, v3

    .end local v3    # "fw":Ljava/io/FileOutputStream;
    .restart local v2    # "fw":Ljava/io/FileOutputStream;
    goto :goto_7

    .line 1500
    .end local v2    # "fw":Ljava/io/FileOutputStream;
    .restart local v3    # "fw":Ljava/io/FileOutputStream;
    :catch_c
    move-exception v0

    move-object v2, v3

    .end local v3    # "fw":Ljava/io/FileOutputStream;
    .restart local v2    # "fw":Ljava/io/FileOutputStream;
    goto :goto_5
.end method


# virtual methods
.method public addChangedWifiProfile()V
    .locals 8

    .prologue
    .line 1843
    iget-object v6, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/wifi/WifiService;->access$200(Lcom/android/server/wifi/WifiService;)Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "wifi"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 1844
    .local v4, "mWifi":Landroid/net/wifi/WifiManager;
    new-instance v5, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v5}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1845
    .local v5, "mWifiConfig":Landroid/net/wifi/WifiConfiguration;
    iget-object v6, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiService;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 1846
    .local v0, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v3, 0x0

    .line 1848
    .local v3, "mRes":I
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService$WifiProfile;->checkNetworkName()V

    .line 1850
    :try_start_0
    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2600()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 1851
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_0
    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2600()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v6

    array-length v6, v6

    if-ge v2, v6, :cond_4

    .line 1852
    # getter for: Lcom/android/server/wifi/WifiService;->mMatchedPrevNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2400()Ljava/lang/String;

    move-result-object v6

    # getter for: Lcom/android/server/wifi/WifiService;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$3100()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    # getter for: Lcom/android/server/wifi/WifiService;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$3100()Ljava/lang/String;

    move-result-object v6

    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2600()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v7

    aget-object v7, v7, v2

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiService$ApInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1853
    const-string v6, "WifiService"

    const-string v7, "addChangedWifiProfile()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2600()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v6

    aget-object v6, v6, v2

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiService$ApInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiService$WifiProfile;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1855
    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 1856
    const/4 v6, 0x2

    iput v6, v5, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 1857
    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2600()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v6

    aget-object v6, v6, v2

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiService$ApInfo;->getPriority()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 1858
    const-string v6, "WPA-EAP IEEE8021X"

    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2600()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v7

    aget-object v7, v7, v2

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiService$ApInfo;->getSecurityType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1859
    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->set(I)V

    .line 1860
    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->set(I)V

    .line 1862
    :cond_0
    const-string v6, "SIM"

    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2600()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v7

    aget-object v7, v7, v2

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiService$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1863
    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 1866
    :cond_1
    :goto_1
    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    .line 1867
    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 1868
    const/4 v6, 0x1

    # setter for: Lcom/android/server/wifi/WifiService;->mFirstScanAddProfile:Z
    invoke-static {v6}, Lcom/android/server/wifi/WifiService;->access$1902(Z)Z

    .line 1851
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1864
    :cond_3
    const-string v6, "AKA"

    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2600()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v7

    aget-object v7, v7, v2

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiService$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1865
    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1872
    .end local v2    # "k":I
    :catch_0
    move-exception v1

    .line 1873
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v6, "WifiService"

    const-string v7, "addChangedWifiProfile - NullPointerException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_4
    return-void
.end method

.method public addWifiVendorProfile()V
    .locals 7

    .prologue
    .line 1740
    iget-object v5, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/wifi/WifiService;->access$200(Lcom/android/server/wifi/WifiService;)Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 1741
    .local v3, "mWifi":Landroid/net/wifi/WifiManager;
    new-instance v4, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v4}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1742
    .local v4, "mWifiConfig":Landroid/net/wifi/WifiConfiguration;
    const/4 v2, 0x0

    .line 1744
    .local v2, "mRes":I
    :try_start_0
    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2600()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 1745
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2600()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v5

    array-length v5, v5

    if-ge v1, v5, :cond_8

    .line 1746
    # getter for: Lcom/android/server/wifi/WifiService;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "WifiService"

    const-string v6, "addWifiVendorProfile()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    :cond_0
    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2600()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiService$ApInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiService$WifiProfile;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1748
    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 1749
    const/4 v5, 0x2

    iput v5, v4, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 1750
    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2600()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiService$ApInfo;->getPriority()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1751
    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2600()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiService$ApInfo;->getPriority()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 1752
    :cond_1
    const-string v5, "WPA-EAP IEEE8021X"

    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2600()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiService$ApInfo;->getSecurityType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1753
    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->set(I)V

    .line 1754
    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->set(I)V

    .line 1756
    :cond_2
    const-string v5, "SIM"

    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2600()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiService$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1757
    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 1765
    :cond_3
    :goto_1
    const-string v5, "None"

    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2600()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiService$ApInfo;->getPhase2()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1766
    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 1771
    :cond_4
    :goto_2
    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2600()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiService$ApInfo;->getIdentity()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 1772
    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2600()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiService$ApInfo;->getIdentity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 1773
    :cond_5
    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2600()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiService$ApInfo;->getPassword()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 1774
    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2600()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiService$ApInfo;->getPassword()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    .line 1775
    :cond_6
    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    .line 1776
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 1777
    const/4 v5, 0x1

    # setter for: Lcom/android/server/wifi/WifiService;->mFirstScanAddProfile:Z
    invoke-static {v5}, Lcom/android/server/wifi/WifiService;->access$1902(Z)Z

    .line 1745
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1758
    :cond_7
    const-string v5, "AKA"

    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2600()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiService$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1759
    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1780
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 1781
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v5, "WifiService"

    const-string v6, "addWifiVendorProfile - NullPointerException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_8
    return-void

    .line 1760
    .restart local v1    # "i":I
    :cond_9
    :try_start_1
    const-string v5, "PEAP"

    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2600()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiService$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1761
    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_1

    .line 1762
    :cond_a
    const-string v5, "TTLS"

    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2600()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiService$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1763
    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_1

    .line 1767
    :cond_b
    const-string v5, "MSCHAPV2"

    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2600()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiService$ApInfo;->getPhase2()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1768
    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_2

    .line 1769
    :cond_c
    const-string v5, "GTC"

    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2600()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiService$ApInfo;->getPhase2()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1770
    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method public getGeneralNwInfo()[Lcom/android/server/wifi/WifiService$ApInfo;
    .locals 2

    .prologue
    .line 1434
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->flagForGeneralNwInfo:Z

    if-eqz v0, :cond_0

    .line 1435
    # getter for: Lcom/android/server/wifi/WifiService;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2700()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v0

    .line 1441
    :goto_0
    return-object v0

    .line 1436
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/wifi/generalinfo_nw.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->filePath:Ljava/io/File;

    .line 1438
    iget-object v0, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->filePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1439
    const-string v0, "/data/misc/wifi/generalinfo_nw.conf"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiService$WifiProfile;->getGeneralNwInfoFromFile(Ljava/lang/String;)[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v0

    # setter for: Lcom/android/server/wifi/WifiService;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {v0}, Lcom/android/server/wifi/WifiService;->access$2702([Lcom/android/server/wifi/WifiService$ApInfo;)[Lcom/android/server/wifi/WifiService$ApInfo;

    .line 1441
    :cond_1
    # getter for: Lcom/android/server/wifi/WifiService;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2700()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getPrevNetworkName()[Lcom/android/server/wifi/WifiService$ApInfo;
    .locals 2

    .prologue
    .line 1445
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->flagForPrevNetworkName:Z

    if-eqz v0, :cond_0

    .line 1446
    # getter for: Lcom/android/server/wifi/WifiService;->mPrevNetworkName:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2800()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v0

    .line 1453
    :goto_0
    return-object v0

    .line 1447
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/wifi/prev_networkname.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->filePath:Ljava/io/File;

    .line 1449
    iget-object v0, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->filePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1450
    const-string v0, "/data/misc/wifi/prev_networkname.conf"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiService$WifiProfile;->getPrevNetworkNameFromFile(Ljava/lang/String;)[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v0

    # setter for: Lcom/android/server/wifi/WifiService;->mPrevNetworkName:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {v0}, Lcom/android/server/wifi/WifiService;->access$2802([Lcom/android/server/wifi/WifiService$ApInfo;)[Lcom/android/server/wifi/WifiService$ApInfo;

    .line 1452
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService$WifiProfile;->makePrevNetworkName()V

    .line 1453
    # getter for: Lcom/android/server/wifi/WifiService;->mPrevNetworkName:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2800()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getVendorApInfo()[Lcom/android/server/wifi/WifiService$ApInfo;
    .locals 2

    .prologue
    .line 1420
    # getter for: Lcom/android/server/wifi/WifiService;->flagForDefaultAp:Z
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1421
    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2600()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v0

    .line 1430
    :goto_0
    return-object v0

    .line 1422
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/wifi/default_ap.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->filePath:Ljava/io/File;

    .line 1423
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/wifi/default_ap.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->fileDefaultPath:Ljava/io/File;

    .line 1425
    iget-object v0, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->filePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->fileDefaultPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1426
    const-string v0, "/data/misc/wifi/default_ap.conf"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiService$WifiProfile;->getVendorApInfoFromFile(Ljava/lang/String;)[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v0

    # setter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {v0}, Lcom/android/server/wifi/WifiService;->access$2602([Lcom/android/server/wifi/WifiService$ApInfo;)[Lcom/android/server/wifi/WifiService$ApInfo;

    .line 1430
    :cond_1
    :goto_1
    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2600()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v0

    goto :goto_0

    .line 1427
    :cond_2
    const-string v0, "Private"

    # getter for: Lcom/android/server/wifi/WifiService;->mConfigPriorAp:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2900()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->fileDefaultPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1428
    const-string v0, "/system/etc/wifi/default_ap.conf"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiService$WifiProfile;->getVendorApInfoFromFile(Ljava/lang/String;)[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v0

    # setter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {v0}, Lcom/android/server/wifi/WifiService;->access$2602([Lcom/android/server/wifi/WifiService$ApInfo;)[Lcom/android/server/wifi/WifiService$ApInfo;

    goto :goto_1
.end method

.method public removeChangedWifiProfile()V
    .locals 10

    .prologue
    .line 1878
    new-instance v6, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v6}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1879
    .local v6, "mWifiConfig":Landroid/net/wifi/WifiConfiguration;
    iget-object v8, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiService;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 1880
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const-string v5, ""

    .line 1881
    .local v5, "mKeymgmt":Ljava/lang/String;
    const-string v4, ""

    .line 1883
    .local v4, "mEap":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService$WifiProfile;->checkNetworkName()V

    .line 1885
    :try_start_0
    # getter for: Lcom/android/server/wifi/WifiService;->mMatchedPrevNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2400()Ljava/lang/String;

    move-result-object v8

    # getter for: Lcom/android/server/wifi/WifiService;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$3100()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2600()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 1886
    const/4 v7, 0x0

    .local v7, "p":I
    :goto_0
    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2600()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v8

    array-length v8, v8

    if-ge v7, v8, :cond_5

    .line 1887
    if-eqz v1, :cond_7

    .line 1888
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1889
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, v6, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1890
    :cond_1
    const-string v5, "WPA-EAP IEEE8021X"

    .line 1892
    :cond_2
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v8}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_6

    .line 1893
    const-string v4, "SIM"

    .line 1897
    :cond_3
    :goto_2
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2600()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v9

    aget-object v9, v9, v7

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiService$ApInfo;->getSSID()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/wifi/WifiService$WifiProfile;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2600()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v8

    aget-object v8, v8, v7

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiService$ApInfo;->getSecurityType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2600()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v8

    aget-object v8, v8, v7

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiService$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1898
    # getter for: Lcom/android/server/wifi/WifiService;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "WifiService"

    const-string v9, "remove proper wifi profile"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    :cond_4
    iget-object v8, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->this$0:Lcom/android/server/wifi/WifiService;

    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiService;->removeNetwork(I)Z

    .line 1900
    const-string v5, ""

    .line 1901
    const-string v4, ""

    .line 1902
    const/4 v8, 0x1

    # setter for: Lcom/android/server/wifi/WifiService;->mFirstScanAddProfile:Z
    invoke-static {v8}, Lcom/android/server/wifi/WifiService;->access$1902(Z)Z

    .line 1903
    const/4 v8, 0x1

    # setter for: Lcom/android/server/wifi/WifiService;->mRemoveWifiProfile:Z
    invoke-static {v8}, Lcom/android/server/wifi/WifiService;->access$2502(Z)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1909
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v7    # "p":I
    :catch_0
    move-exception v2

    .line 1910
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v8, "WifiService"

    const-string v9, "removeChangedWifiProfile - NullPointerException"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1912
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :cond_5
    return-void

    .line 1894
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v7    # "p":I
    :cond_6
    :try_start_1
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v8}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v8

    const/4 v9, 0x5

    if-ne v8, v9, :cond_3

    .line 1895
    const-string v4, "AKA"
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1886
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0
.end method
