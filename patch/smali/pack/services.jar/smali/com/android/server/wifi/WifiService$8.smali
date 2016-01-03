.class Lcom/android/server/wifi/WifiService$8;
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
    .line 919
    iput-object p1, p0, Lcom/android/server/wifi/WifiService$8;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 923
    const-string v0, ""

    .line 924
    .local v0, "mMCCMNC":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    .line 925
    .local v1, "simState_int":I
    const-string v2, "gsm.sim.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 926
    # getter for: Lcom/android/server/wifi/WifiService;->filePathDefaultAp:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2100()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    # getter for: Lcom/android/server/wifi/WifiService;->filePathGeneralinfo:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2200()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    # getter for: Lcom/android/server/wifi/WifiService;->mFirstScanAddProfile:Z
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1900()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wifi/WifiService$8;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->isBootCompleted:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiService;->access$1400(Lcom/android/server/wifi/WifiService;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 927
    iget-object v2, p0, Lcom/android/server/wifi/WifiService$8;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mWifiProfile:Lcom/android/server/wifi/WifiService$WifiProfile;
    invoke-static {v2}, Lcom/android/server/wifi/WifiService;->access$900(Lcom/android/server/wifi/WifiService;)Lcom/android/server/wifi/WifiService$WifiProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiService$WifiProfile;->getVendorApInfo()[Lcom/android/server/wifi/WifiService$ApInfo;

    .line 928
    iget-object v2, p0, Lcom/android/server/wifi/WifiService$8;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mWifiProfile:Lcom/android/server/wifi/WifiService$WifiProfile;
    invoke-static {v2}, Lcom/android/server/wifi/WifiService;->access$900(Lcom/android/server/wifi/WifiService;)Lcom/android/server/wifi/WifiService$WifiProfile;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/WifiService$WifiProfile;->checkNetworkName()V
    invoke-static {v2}, Lcom/android/server/wifi/WifiService$WifiProfile;->access$2300(Lcom/android/server/wifi/WifiService$WifiProfile;)V

    .line 929
    # getter for: Lcom/android/server/wifi/WifiService;->mWifiProfileLoaded:Z
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1800()Z

    move-result v2

    if-nez v2, :cond_0

    .line 930
    iget-object v2, p0, Lcom/android/server/wifi/WifiService$8;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mWifiProfile:Lcom/android/server/wifi/WifiService$WifiProfile;
    invoke-static {v2}, Lcom/android/server/wifi/WifiService;->access$900(Lcom/android/server/wifi/WifiService;)Lcom/android/server/wifi/WifiService$WifiProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiService$WifiProfile;->addWifiVendorProfile()V

    .line 939
    :cond_0
    :goto_0
    return-void

    .line 931
    :cond_1
    # getter for: Lcom/android/server/wifi/WifiService;->filePathGeneralinfo:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2200()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    # getter for: Lcom/android/server/wifi/WifiService;->filePathDefaultAp:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2100()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    # getter for: Lcom/android/server/wifi/WifiService;->mFirstScanAddProfile:Z
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1900()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/WifiService$8;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->isBootCompleted:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiService;->access$1400(Lcom/android/server/wifi/WifiService;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 932
    iget-object v2, p0, Lcom/android/server/wifi/WifiService$8;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mWifiProfile:Lcom/android/server/wifi/WifiService$WifiProfile;
    invoke-static {v2}, Lcom/android/server/wifi/WifiService;->access$900(Lcom/android/server/wifi/WifiService;)Lcom/android/server/wifi/WifiService$WifiProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiService$WifiProfile;->getVendorApInfo()[Lcom/android/server/wifi/WifiService$ApInfo;

    .line 933
    iget-object v2, p0, Lcom/android/server/wifi/WifiService$8;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mWifiProfile:Lcom/android/server/wifi/WifiService$WifiProfile;
    invoke-static {v2}, Lcom/android/server/wifi/WifiService;->access$900(Lcom/android/server/wifi/WifiService;)Lcom/android/server/wifi/WifiService$WifiProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiService$WifiProfile;->getGeneralNwInfo()[Lcom/android/server/wifi/WifiService$ApInfo;

    .line 934
    iget-object v2, p0, Lcom/android/server/wifi/WifiService$8;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mWifiProfile:Lcom/android/server/wifi/WifiService$WifiProfile;
    invoke-static {v2}, Lcom/android/server/wifi/WifiService;->access$900(Lcom/android/server/wifi/WifiService;)Lcom/android/server/wifi/WifiService$WifiProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiService$WifiProfile;->getPrevNetworkName()[Lcom/android/server/wifi/WifiService$ApInfo;

    .line 935
    iget-object v2, p0, Lcom/android/server/wifi/WifiService$8;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mWifiProfile:Lcom/android/server/wifi/WifiService$WifiProfile;
    invoke-static {v2}, Lcom/android/server/wifi/WifiService;->access$900(Lcom/android/server/wifi/WifiService;)Lcom/android/server/wifi/WifiService$WifiProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiService$WifiProfile;->removeChangedWifiProfile()V

    .line 936
    const-string v2, ""

    # getter for: Lcom/android/server/wifi/WifiService;->mMatchedPrevNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2400()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    # getter for: Lcom/android/server/wifi/WifiService;->mRemoveWifiProfile:Z
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2500()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 937
    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiService$8;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mWifiProfile:Lcom/android/server/wifi/WifiService$WifiProfile;
    invoke-static {v2}, Lcom/android/server/wifi/WifiService;->access$900(Lcom/android/server/wifi/WifiService;)Lcom/android/server/wifi/WifiService$WifiProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiService$WifiProfile;->addChangedWifiProfile()V

    goto :goto_0
.end method
