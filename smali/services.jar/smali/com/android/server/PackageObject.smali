.class Lcom/android/server/PackageObject;
.super Ljava/lang/Object;
.source "ServiceKeeper.java"


# instance fields
.field packageName:Ljava/lang/String;

.field seinfo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "seinfo"    # Ljava/lang/String;

    .prologue
    .line 708
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 705
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/PackageObject;->packageName:Ljava/lang/String;

    .line 706
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/PackageObject;->seinfo:Ljava/lang/String;

    .line 709
    iput-object p1, p0, Lcom/android/server/PackageObject;->packageName:Ljava/lang/String;

    .line 710
    iput-object p2, p0, Lcom/android/server/PackageObject;->seinfo:Ljava/lang/String;

    .line 711
    return-void
.end method
