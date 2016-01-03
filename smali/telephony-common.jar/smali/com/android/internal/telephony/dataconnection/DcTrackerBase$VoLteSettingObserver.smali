.class Lcom/android/internal/telephony/dataconnection/DcTrackerBase$VoLteSettingObserver;
.super Landroid/database/ContentObserver;
.source "DcTrackerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VoLteSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 820
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$VoLteSettingObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 821
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 822
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    .line 823
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 836
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$VoLteSettingObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voicecall_type"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    .line 838
    .local v0, "isVoLteOn":Z
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$VoLteSettingObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VoLteSettingObserver: onChange :: isVoLteOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 839
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$VoLteSettingObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onVoLteOn(ZZ)V

    .line 840
    return-void

    .end local v0    # "isVoLteOn":Z
    :cond_0
    move v0, v1

    .line 836
    goto :goto_0
.end method

.method public register()V
    .locals 3

    .prologue
    .line 826
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$VoLteSettingObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "voicecall_type"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 828
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$VoLteSettingObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 832
    return-void
.end method
