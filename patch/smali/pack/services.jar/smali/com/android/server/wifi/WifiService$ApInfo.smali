.class public Lcom/android/server/wifi/WifiService$ApInfo;
.super Ljava/lang/Object;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApInfo"
.end annotation


# instance fields
.field private Eap:Ljava/lang/String;

.field private Identity:Ljava/lang/String;

.field private MCCMNC:Ljava/lang/String;

.field private NetworkName:Ljava/lang/String;

.field private Password:Ljava/lang/String;

.field private Phase2:Ljava/lang/String;

.field private Priority:Ljava/lang/String;

.field private SSID:Ljava/lang/String;

.field private securityType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1926
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1927
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiService$ApInfo;->SSID:Ljava/lang/String;

    .line 1928
    const-string v0, "NONE"

    iput-object v0, p0, Lcom/android/server/wifi/WifiService$ApInfo;->securityType:Ljava/lang/String;

    .line 1929
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiService$ApInfo;->Priority:Ljava/lang/String;

    .line 1930
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiService$ApInfo;->Eap:Ljava/lang/String;

    .line 1931
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiService$ApInfo;->MCCMNC:Ljava/lang/String;

    .line 1932
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiService$ApInfo;->NetworkName:Ljava/lang/String;

    .line 1933
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiService$ApInfo;->Identity:Ljava/lang/String;

    .line 1934
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiService$ApInfo;->Password:Ljava/lang/String;

    .line 1935
    const-string v0, "None"

    iput-object v0, p0, Lcom/android/server/wifi/WifiService$ApInfo;->Phase2:Ljava/lang/String;

    .line 1936
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "networkname"    # Ljava/lang/String;

    .prologue
    .line 1938
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1939
    iput-object p1, p0, Lcom/android/server/wifi/WifiService$ApInfo;->NetworkName:Ljava/lang/String;

    .line 1940
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "mccmnc"    # Ljava/lang/String;
    .param p2, "networkname"    # Ljava/lang/String;

    .prologue
    .line 1941
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1942
    iput-object p1, p0, Lcom/android/server/wifi/WifiService$ApInfo;->MCCMNC:Ljava/lang/String;

    .line 1943
    iput-object p2, p0, Lcom/android/server/wifi/WifiService$ApInfo;->NetworkName:Ljava/lang/String;

    .line 1944
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "secure"    # Ljava/lang/String;
    .param p3, "priority"    # Ljava/lang/String;
    .param p4, "eap"    # Ljava/lang/String;

    .prologue
    .line 1945
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1946
    iput-object p1, p0, Lcom/android/server/wifi/WifiService$ApInfo;->SSID:Ljava/lang/String;

    .line 1947
    iput-object p2, p0, Lcom/android/server/wifi/WifiService$ApInfo;->securityType:Ljava/lang/String;

    .line 1948
    iput-object p3, p0, Lcom/android/server/wifi/WifiService$ApInfo;->Priority:Ljava/lang/String;

    .line 1949
    iput-object p4, p0, Lcom/android/server/wifi/WifiService$ApInfo;->Eap:Ljava/lang/String;

    .line 1950
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "secure"    # Ljava/lang/String;
    .param p3, "priority"    # Ljava/lang/String;
    .param p4, "eap"    # Ljava/lang/String;
    .param p5, "networkname"    # Ljava/lang/String;

    .prologue
    .line 1951
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1952
    iput-object p1, p0, Lcom/android/server/wifi/WifiService$ApInfo;->SSID:Ljava/lang/String;

    .line 1953
    iput-object p2, p0, Lcom/android/server/wifi/WifiService$ApInfo;->securityType:Ljava/lang/String;

    .line 1954
    iput-object p3, p0, Lcom/android/server/wifi/WifiService$ApInfo;->Priority:Ljava/lang/String;

    .line 1955
    iput-object p4, p0, Lcom/android/server/wifi/WifiService$ApInfo;->Eap:Ljava/lang/String;

    .line 1956
    iput-object p5, p0, Lcom/android/server/wifi/WifiService$ApInfo;->NetworkName:Ljava/lang/String;

    .line 1957
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "secure"    # Ljava/lang/String;
    .param p3, "priority"    # Ljava/lang/String;
    .param p4, "eap"    # Ljava/lang/String;
    .param p5, "identity"    # Ljava/lang/String;
    .param p6, "password"    # Ljava/lang/String;

    .prologue
    .line 1958
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1959
    iput-object p1, p0, Lcom/android/server/wifi/WifiService$ApInfo;->SSID:Ljava/lang/String;

    .line 1960
    iput-object p2, p0, Lcom/android/server/wifi/WifiService$ApInfo;->securityType:Ljava/lang/String;

    .line 1961
    iput-object p3, p0, Lcom/android/server/wifi/WifiService$ApInfo;->Priority:Ljava/lang/String;

    .line 1962
    iput-object p4, p0, Lcom/android/server/wifi/WifiService$ApInfo;->Eap:Ljava/lang/String;

    .line 1963
    iput-object p5, p0, Lcom/android/server/wifi/WifiService$ApInfo;->Identity:Ljava/lang/String;

    .line 1964
    iput-object p6, p0, Lcom/android/server/wifi/WifiService$ApInfo;->Password:Ljava/lang/String;

    .line 1965
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "secure"    # Ljava/lang/String;
    .param p3, "priority"    # Ljava/lang/String;
    .param p4, "eap"    # Ljava/lang/String;
    .param p5, "identity"    # Ljava/lang/String;
    .param p6, "password"    # Ljava/lang/String;
    .param p7, "phase2"    # Ljava/lang/String;

    .prologue
    .line 1966
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1967
    iput-object p1, p0, Lcom/android/server/wifi/WifiService$ApInfo;->SSID:Ljava/lang/String;

    .line 1968
    iput-object p2, p0, Lcom/android/server/wifi/WifiService$ApInfo;->securityType:Ljava/lang/String;

    .line 1969
    iput-object p3, p0, Lcom/android/server/wifi/WifiService$ApInfo;->Priority:Ljava/lang/String;

    .line 1970
    iput-object p4, p0, Lcom/android/server/wifi/WifiService$ApInfo;->Eap:Ljava/lang/String;

    .line 1971
    iput-object p5, p0, Lcom/android/server/wifi/WifiService$ApInfo;->Identity:Ljava/lang/String;

    .line 1972
    iput-object p6, p0, Lcom/android/server/wifi/WifiService$ApInfo;->Password:Ljava/lang/String;

    .line 1973
    iput-object p7, p0, Lcom/android/server/wifi/WifiService$ApInfo;->Phase2:Ljava/lang/String;

    .line 1974
    return-void
.end method


# virtual methods
.method public getEap()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1989
    iget-object v0, p0, Lcom/android/server/wifi/WifiService$ApInfo;->Eap:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1999
    iget-object v0, p0, Lcom/android/server/wifi/WifiService$ApInfo;->Identity:Ljava/lang/String;

    return-object v0
.end method

.method public getMCCMNC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1993
    iget-object v0, p0, Lcom/android/server/wifi/WifiService$ApInfo;->MCCMNC:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1996
    iget-object v0, p0, Lcom/android/server/wifi/WifiService$ApInfo;->NetworkName:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2002
    iget-object v0, p0, Lcom/android/server/wifi/WifiService$ApInfo;->Password:Ljava/lang/String;

    return-object v0
.end method

.method public getPhase2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2005
    iget-object v0, p0, Lcom/android/server/wifi/WifiService$ApInfo;->Phase2:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1985
    iget-object v0, p0, Lcom/android/server/wifi/WifiService$ApInfo;->Priority:Ljava/lang/String;

    return-object v0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1977
    iget-object v0, p0, Lcom/android/server/wifi/WifiService$ApInfo;->SSID:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurityType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1981
    iget-object v0, p0, Lcom/android/server/wifi/WifiService$ApInfo;->securityType:Ljava/lang/String;

    return-object v0
.end method
