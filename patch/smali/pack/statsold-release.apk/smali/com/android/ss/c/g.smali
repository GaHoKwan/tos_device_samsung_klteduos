.class public final Lcom/android/ss/c/g;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    const-string v4, "/system/shuame.prop"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_0
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method
