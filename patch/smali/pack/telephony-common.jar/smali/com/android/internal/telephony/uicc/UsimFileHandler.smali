.class public final Lcom/android/internal/telephony/uicc/UsimFileHandler;
.super Lcom/android/internal/telephony/uicc/IccFileHandler;
.source "UsimFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "UsimFH"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0
    .param p1, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 39
    return-void
.end method


# virtual methods
.method protected getEFPath(I)Ljava/lang/String;
    .locals 1
    .param p1, "efid"    # I

    .prologue
    .line 68
    sparse-switch p1, :sswitch_data_0

    .line 122
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "path":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 127
    const-string v0, "3F007F105F3A"

    .line 129
    .end local v0    # "path":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 96
    :sswitch_0
    const-string v0, "3F007FFF"

    goto :goto_0

    .line 101
    :sswitch_1
    const-string v0, "3F007FFF5F3D"

    goto :goto_0

    .line 106
    :sswitch_2
    const-string v0, "3F007F105F3A"

    goto :goto_0

    .line 110
    :sswitch_3
    const-string v0, "3F007F43"

    goto :goto_0

    .line 116
    :sswitch_4
    const-string v0, "3F00"

    goto :goto_0

    .line 119
    :sswitch_5
    const-string v0, "3F007FFF5F50"

    goto :goto_0

    .line 68
    :sswitch_data_0
    .sparse-switch
        0x2ff0 -> :sswitch_4
        0x4f22 -> :sswitch_1
        0x4f30 -> :sswitch_2
        0x4f55 -> :sswitch_1
        0x4f84 -> :sswitch_5
        0x6f02 -> :sswitch_3
        0x6f11 -> :sswitch_0
        0x6f13 -> :sswitch_0
        0x6f14 -> :sswitch_0
        0x6f15 -> :sswitch_0
        0x6f16 -> :sswitch_0
        0x6f17 -> :sswitch_0
        0x6f18 -> :sswitch_0
        0x6f38 -> :sswitch_0
        0x6f3b -> :sswitch_0
        0x6f3c -> :sswitch_0
        0x6f3e -> :sswitch_0
        0x6f40 -> :sswitch_0
        0x6f46 -> :sswitch_0
        0x6f4b -> :sswitch_0
        0x6f4e -> :sswitch_0
        0x6f62 -> :sswitch_0
        0x6fad -> :sswitch_0
        0x6fc5 -> :sswitch_0
        0x6fc6 -> :sswitch_0
        0x6fc7 -> :sswitch_0
        0x6fc8 -> :sswitch_0
        0x6fc9 -> :sswitch_0
        0x6fca -> :sswitch_0
        0x6fcb -> :sswitch_0
        0x6fcd -> :sswitch_0
    .end sparse-switch
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 134
    const-string v0, "UsimFH"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 139
    const-string v0, "UsimFH"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-void
.end method
