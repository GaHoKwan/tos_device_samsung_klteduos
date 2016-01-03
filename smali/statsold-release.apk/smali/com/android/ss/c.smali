.class public final Lcom/android/ss/c;
.super Ljava/lang/Object;


# static fields
.field private static volatile transient a:Z

.field private static b:Lcom/android/ss/a/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/ss/c;->a:Z

    return-void
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Lcom/android/ss/c;->a:Z

    return v0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "imei"

    invoke-static {p0}, Lcom/android/ss/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "mac_address"

    invoke-static {p0}, Lcom/android/ss/d;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "country_code"

    invoke-static {p0}, Lcom/android/ss/d;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "s2"

    invoke-static {p0}, Lcom/android/ss/d;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "imsi"

    invoke-static {p0}, Lcom/android/ss/d;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "carrier_id"

    invoke-static {p0}, Lcom/android/ss/d;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "device_key"

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "device_sn"

    invoke-static {}, Lcom/android/ss/d;->a()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "mod_version"

    invoke-static {}, Lcom/android/ss/d;->b()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "product_version"

    invoke-static {}, Lcom/android/ss/d;->d()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "build_display_id"

    sget-object v5, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "build_description"

    invoke-static {}, Lcom/android/ss/d;->c()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "signature"

    invoke-static {p0}, Lcom/android/ss/d;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "system_app"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/android/ss/d;->i(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "romzj_rom_id"

    invoke-static {}, Lcom/android/ss/d;->e()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "romzj_rom_version"

    invoke-static {}, Lcom/android/ss/d;->f()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "romzj_rom_version_code"

    invoke-static {}, Lcom/android/ss/d;->g()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Lcom/android/ss/d;->j(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "https://api.shuame.com/v2/stat/alive?versionName="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&versionCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v3, v3, v1

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/ss/c/d;->a(Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    div-int/lit8 v2, v2, 0x64

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    :goto_0
    if-eqz v0, :cond_0

    const-string v1, "lastcir"

    invoke-static {p0, v1}, Lcom/android/ss/c/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Z)Z
    .locals 9

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    sput-boolean v3, Lcom/android/ss/c;->a:Z

    invoke-static {p0}, Lcom/android/ss/d;->j(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "https://api1.shuame.com/v2/app/cfg?versionName="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v2, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&versionCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v2, v2, v1

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-static {v2, v4}, Lcom/android/ss/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    div-int/lit8 v4, v4, 0x64

    const/4 v5, 0x2

    if-ne v4, v5, :cond_10

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    if-eqz v2, :cond_10

    :try_start_0
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_f

    :try_start_1
    const-string v4, "cache"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    :try_start_2
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v5, 0x400

    new-array v5, v5, [B

    :goto_0
    invoke-virtual {v2, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_3

    if-eqz p1, :cond_6

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/android/ss/c/c;->a([B)V

    invoke-virtual {v0, v5}, Ljava/io/FileOutputStream;->write([B)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u52a0\u5bc6\u524d\uff08"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\uff09\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_1
    move-object v8, v0

    move v0, v3

    move-object v3, v8

    :goto_2
    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    :cond_1
    :goto_3
    if-eqz v0, :cond_2

    const-string v2, "lastcoa"

    invoke-static {p0, v2}, Lcom/android/ss/c/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/ss/b/a;->a()Z

    :cond_2
    sput-boolean v1, Lcom/android/ss/c;->a:Z

    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u66f4\u65b0\u63a8\u5e7f\u5e94\u7528\u914d\u7f6e\u7ed3\u675f\uff01success="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return v0

    :cond_3
    const/4 v7, 0x0

    :try_start_4
    invoke-virtual {v4, v5, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v3

    :goto_5
    if-eqz v2, :cond_4

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_c

    :cond_5
    :goto_6
    sput-boolean v1, Lcom/android/ss/c;->a:Z

    move v0, v1

    goto :goto_4

    :cond_6
    :try_start_6
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u672a\u542f\u7528\u52a0\u5bc6\uff1a"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "UTF-8"

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    :catch_1
    move-exception v3

    :goto_7
    if-eqz v2, :cond_7

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a

    :cond_8
    :goto_8
    sput-boolean v1, Lcom/android/ss/c;->a:Z

    move v0, v1

    goto :goto_4

    :catch_2
    move-exception v2

    move-object v2, v0

    :goto_9
    if-eqz v2, :cond_9

    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_9
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    :cond_a
    :goto_a
    sput-boolean v1, Lcom/android/ss/c;->a:Z

    move v0, v1

    goto :goto_4

    :catch_3
    move-exception v2

    move-object v2, v0

    :goto_b
    if-eqz v2, :cond_b

    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_b
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_c
    :goto_c
    sput-boolean v1, Lcom/android/ss/c;->a:Z

    move v0, v1

    goto :goto_4

    :catchall_0
    move-exception v2

    move-object v3, v0

    move-object v8, v0

    move-object v0, v2

    move-object v2, v8

    :goto_d
    if-eqz v3, :cond_d

    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_d
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    :cond_e
    :goto_e
    sput-boolean v1, Lcom/android/ss/c;->a:Z

    throw v0

    :catch_4
    move-exception v2

    goto/16 :goto_3

    :catch_5
    move-exception v2

    goto :goto_e

    :catchall_1
    move-exception v3

    move-object v8, v3

    move-object v3, v2

    move-object v2, v0

    move-object v0, v8

    goto :goto_d

    :catchall_2
    move-exception v3

    move-object v8, v3

    move-object v3, v2

    move-object v2, v0

    move-object v0, v8

    goto :goto_d

    :catch_6
    move-exception v0

    goto :goto_c

    :catch_7
    move-exception v3

    goto :goto_b

    :catch_8
    move-exception v0

    goto :goto_a

    :catch_9
    move-exception v3

    goto :goto_9

    :catch_a
    move-exception v0

    goto :goto_8

    :catch_b
    move-exception v2

    move-object v2, v0

    goto :goto_7

    :catch_c
    move-exception v0

    goto :goto_6

    :catch_d
    move-exception v2

    move-object v2, v0

    goto/16 :goto_5

    :cond_f
    move-object v3, v0

    move v0, v1

    goto/16 :goto_2

    :cond_10
    move v0, v1

    goto/16 :goto_4
.end method

.method public static b()J
    .locals 2

    const-wide/32 v0, 0x2932e00

    return-wide v0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 15

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v5, Lcom/android/ss/a/c;

    invoke-direct {v5}, Lcom/android/ss/a/c;-><init>()V

    invoke-static {p0}, Lcom/android/ss/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/android/ss/a/c;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/ss/d;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/android/ss/a/c;->b(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/ss/d;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/android/ss/a/c;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/ss/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/android/ss/a/c;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/ss/d;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/android/ss/a/c;->d(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/ss/a/c;->a()Ljava/util/List;

    move-result-object v6

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v9

    invoke-static {p0}, Lcom/android/ss/c;->c(Landroid/content/Context;)Lcom/android/ss/a/e;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/android/ss/c;->c(Landroid/content/Context;)Lcom/android/ss/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ss/a/e;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v10

    invoke-static {p0}, Lcom/android/ss/c;->c(Landroid/content/Context;)Lcom/android/ss/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ss/a/e;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p0}, Lcom/android/ss/c;->c(Landroid/content/Context;)Lcom/android/ss/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ss/a/e;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v2, v3

    :cond_0
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5df2\u5b89\u88c5\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_1
    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u8981\u4e0a\u62a5\u7684\u63a8\u5e7f\u5e94\u7528\u4e2a\u6570: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/ss/a/c;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/ss/a/c;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    move v3, v4

    :cond_2
    :goto_3
    if-eqz v3, :cond_3

    const-string v0, "lastcia"

    invoke-static {p0, v0}, Lcom/android/ss/c/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    return v3

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ss/a/d;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v11, "getApps->getCfgs:"

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/ss/a/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v11, "getApps->packageInfo:"

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_1

    :cond_6
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/ss/a/d;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    invoke-virtual {v1}, Lcom/android/ss/a/d;->b()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v13, v14}, Lcom/android/ss/c/h;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_7

    new-instance v12, Lcom/android/ss/a/b;

    invoke-direct {v12, v1}, Lcom/android/ss/a/b;-><init>(Lcom/android/ss/a/d;)V

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v1}, Lcom/android/ss/a/b;->a(Ljava/lang/String;)V

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v12, v1}, Lcom/android/ss/a/b;->c(Ljava/lang/String;)V

    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v12, v1}, Lcom/android/ss/a/b;->a(I)V

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/android/ss/a/b;->b(Ljava/lang/String;)V

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/ss/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/android/ss/a/b;->d(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/android/ss/a/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_2

    :cond_8
    invoke-static {p0}, Lcom/android/ss/d;->j(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://api.shuame.com/v2/stat/appinfo?versionName="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&versionCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v0, v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5}, Lorg/xml/bind/a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ss/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    div-int/lit8 v0, v0, 0x64

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    move v3, v4

    goto/16 :goto_3
.end method

.method private static c(Landroid/content/Context;)Lcom/android/ss/a/e;
    .locals 1

    sget-object v0, Lcom/android/ss/c;->b:Lcom/android/ss/a/e;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/ss/c;->b:Lcom/android/ss/a/e;

    invoke-virtual {v0}, Lcom/android/ss/a/e;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/android/ss/b/a;->a(Landroid/content/Context;)Lcom/android/ss/a/e;

    move-result-object v0

    sput-object v0, Lcom/android/ss/c;->b:Lcom/android/ss/a/e;

    :cond_1
    sget-object v0, Lcom/android/ss/c;->b:Lcom/android/ss/a/e;

    return-object v0
.end method

.method public static c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    const-string v0, "cache"

    return-object v0
.end method
