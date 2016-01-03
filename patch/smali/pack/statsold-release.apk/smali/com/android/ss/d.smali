.class public Lcom/android/ss/d;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/ss/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/ss/d;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    const-string v0, "ro.serialno"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v1}, Lcom/android/ss/c/b;->a(Ljava/io/InputStream;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/ss/c/h;->a([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    move-object v1, v2

    :goto_1
    :try_start_3
    sget-object v2, Lcom/android/ss/d;->a:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    move-object v1, v2

    :goto_2
    :try_start_5
    sget-object v2, Lcom/android/ss/d;->a:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_0

    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_1

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_1
    :goto_4
    throw v0

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_6
    move-exception v2

    goto :goto_2

    :catch_7
    move-exception v2

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    new-instance v1, Ljava/io/File;

    const-string v2, "/system/shuame.prop"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {p0}, Lcom/android/ss/c/g;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/ss/c/h;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-static {p0}, Lcom/android/ss/d;->j(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    aget-object v1, v1, v0

    const-string v2, "offline"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "ro.modversion"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/16 v7, 0x24

    const-string v3, "0.0"

    const-string v2, "0"

    invoke-static {p1}, Lcom/android/ss/c/h;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v7, :cond_a

    const-string v0, "romzj.rom.version="

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_2

    add-int/lit8 v0, v1, 0x12

    :goto_0
    const-string v4, "romzj.rom.version.code="

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_3

    add-int/lit8 v4, v5, 0x17

    :goto_1
    if-ltz v1, :cond_0

    if-ltz v5, :cond_0

    if-ltz v0, :cond_0

    if-gez v4, :cond_4

    :cond_0
    const-string v0, ""

    :cond_1
    :goto_2
    return-object v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_1

    :cond_4
    if-gt v0, v5, :cond_5

    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    if-ge v4, v6, :cond_9

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    move-object v8, v0

    move-object v0, v2

    move-object v2, v8

    :goto_4
    const-string v1, "romzj.rom.id"

    invoke-static {v1, p0}, Lcom/android/ss/c/h;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "romzj.rom.version"

    invoke-static {v0, p0}, Lcom/android/ss/c/h;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, v3

    goto :goto_2

    :cond_5
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    if-ge v4, v6, :cond_8

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_3

    :cond_6
    const-string v0, "romzj.rom.version.code"

    invoke-static {v0, p0}, Lcom/android/ss/c/h;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object v0, v2

    goto :goto_2

    :cond_7
    move-object v0, p1

    goto :goto_2

    :cond_8
    move-object v0, v1

    move-object v1, v3

    goto :goto_3

    :cond_9
    move-object v0, v2

    goto :goto_3

    :cond_a
    move-object v0, p1

    goto :goto_4
.end method

.method public static c()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "ro.build.description"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static d()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "ro.product.version"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 3

    const-string v0, "romzj.rom.id"

    const-string v1, "romzj.rom.id"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/android/ss/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ss/d;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "0"

    :cond_0
    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .locals 2

    const-string v0, "romzj.rom.version"

    const-string v1, "0.0"

    invoke-static {v0, v1}, Lcom/android/ss/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0.0"

    invoke-static {v1, v0}, Lcom/android/ss/c/h;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/android/ss/c/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v0, "romzj.rom.version"

    const-string v1, "romzj.rom.id"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ss/d;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "0"

    :cond_0
    return-object v0
.end method

.method public static g()Ljava/lang/String;
    .locals 2

    const-string v0, "romzj.rom.version.code"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/android/ss/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-static {v1, v0}, Lcom/android/ss/c/h;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/android/ss/c/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v0, "romzj.rom.version.code"

    const-string v1, "romzj.rom.id"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ss/d;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v1, v1

    if-lez v1, :cond_0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {v0}, Lcom/android/ss/c/b;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/ss/c/h;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/android/ss/d;->a:Ljava/lang/String;

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static i(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-string v1, "/system/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static j(Landroid/content/Context;)[Ljava/lang/String;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v2

    const-string v1, ""

    aput-object v1, v0, v3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "general"

    aput-object v2, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
