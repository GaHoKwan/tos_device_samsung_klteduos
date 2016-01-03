.class public Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;
.super Ljava/lang/Object;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/fingerprint/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FingerprintClientSpecBuilder"
.end annotation


# instance fields
.field private mBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 1157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1155
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->mBundle:Landroid/os/Bundle;

    .line 1158
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1159
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->mBundle:Landroid/os/Bundle;

    const-string v1, "appName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public demandExtraEvent(Z)Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;
    .locals 2
    .param p1, "demanded"    # Z

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->mBundle:Landroid/os/Bundle;

    const-string v1, "demandExtraEvent"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1191
    return-object p0
.end method

.method public demandFingerRemovedEvent(Z)Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;
    .locals 2
    .param p1, "demanded"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->mBundle:Landroid/os/Bundle;

    const-string v1, "demandExtraEvent"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1186
    return-object p0
.end method

.method public demandGestureEvent(Z)Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;
    .locals 2
    .param p1, "demanded"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->mBundle:Landroid/os/Bundle;

    const-string v1, "demandExtraEvent"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1179
    return-object p0
.end method

.method public demandNavigationEvent(Z)Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;
    .locals 2
    .param p1, "demanded"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1171
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->mBundle:Landroid/os/Bundle;

    const-string v1, "demandExtraEvent"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1172
    return-object p0
.end method

.method public setAccuracy(F)Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;
    .locals 2
    .param p1, "accuracy"    # F

    .prologue
    .line 1229
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "request_accuracy"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1230
    return-object p0
.end method

.method public setAllowFingers([I)Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;
    .locals 2
    .param p1, "allowFingers"    # [I

    .prologue
    .line 1222
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 1223
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "request_template_index_list"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1225
    :cond_0
    return-object p0
.end method

.method public setBackground(Z)Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;
    .locals 2
    .param p1, "background"    # Z

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->mBundle:Landroid/os/Bundle;

    const-string v1, "background"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1165
    return-object p0
.end method

.method public setOwnName(Ljava/lang/String;)Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;
    .locals 2
    .param p1, "ownName"    # Ljava/lang/String;

    .prologue
    .line 1215
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1216
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "ownName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    :cond_0
    return-object p0
.end method

.method public setSecurityLevel(I)Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;
    .locals 3
    .param p1, "securityLevel"    # I

    .prologue
    .line 1200
    packed-switch p1, :pswitch_data_0

    .line 1208
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "securityLevel"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1211
    :goto_0
    return-object p0

    .line 1205
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "securityLevel"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1200
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public useManualTimeout(Z)Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;
    .locals 2
    .param p1, "use"    # Z

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "useManualTimeout"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1196
    return-object p0
.end method
