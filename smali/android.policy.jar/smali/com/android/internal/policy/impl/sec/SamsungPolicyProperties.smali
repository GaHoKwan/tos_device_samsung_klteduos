.class public Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;
.super Ljava/lang/Object;
.source "SamsungPolicyProperties.java"


# static fields
.field private static mEasyOneHandEnabled:Z

.field private static mEasyOneHandRunning:Z

.field private static mHasNumericKeyboard:Z

.field private static mHasNumericKeyboardChecked:Z

.field private static mHasQwertyKeyboard:Z

.field private static mHasQwertyKeyboardChecked:Z

.field private static mHasSPenFeature:Z

.field private static mHasSPenFeatureChecked:Z

.field private static mHasSideKeyPanelFeature:Z

.field private static mHasSideKeyPanelFeatureChecked:Z

.field private static mIsChinaFeature:Z

.field private static mIsChinaFeatureChecked:Z

.field private static mPendingThresholdTime:I

.field private static mPendingThresholdTimeChecked:Z

.field private static mScreenShotChordEnableChecked:Z

.field private static mScreenShotChordEnabled:Z

.field private static mVoiceTalkDefaultLaunch:Z

.field private static mVoiceTalkDefaultLaunchChecked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mVoiceTalkDefaultLaunch:Z

    .line 42
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mVoiceTalkDefaultLaunchChecked:Z

    .line 44
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasSPenFeature:Z

    .line 45
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasSPenFeatureChecked:Z

    .line 47
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasQwertyKeyboard:Z

    .line 48
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasQwertyKeyboardChecked:Z

    .line 50
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasNumericKeyboard:Z

    .line 51
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasNumericKeyboardChecked:Z

    .line 56
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mScreenShotChordEnabled:Z

    .line 57
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mScreenShotChordEnableChecked:Z

    .line 59
    sput v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mPendingThresholdTime:I

    .line 60
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mPendingThresholdTimeChecked:Z

    .line 62
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mEasyOneHandEnabled:Z

    .line 63
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mEasyOneHandRunning:Z

    .line 65
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasSideKeyPanelFeature:Z

    .line 66
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasSideKeyPanelFeatureChecked:Z

    .line 68
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mIsChinaFeature:Z

    .line 69
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mIsChinaFeatureChecked:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 280
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "isVoiceTalkDefaultLaunch="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isVoiceTalkDefaultLaunch(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 281
    const-string v0, " isCameraSpecialized="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isCameraSpecialized()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 282
    const-string v0, " isUseVibetonz="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isUseVibetonz()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 283
    const-string v0, " hasSPenFeature="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 284
    const-string v0, " hasQwertyKeyboard="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasQwertyKeyboard(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 285
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "hasNumericKeyboard="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasNumericKeyboard(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 286
    const-string v0, " isScreenShotChordEnabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isScreenShotChordEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 287
    const-string v0, " isScreenRecordChordEnabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isScreenRecordChordEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 288
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "isOneTouchReportChordEnabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isOneTouchReportChordEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 289
    const-string v0, " isSupportSPC="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportSPC()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 290
    const-string v0, " isSupportDMBAntennaDetach="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportDMBAntennaDetach()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 291
    const-string v0, " isSupportDTVAntennaDetach="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportDTVAntennaDetach()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 292
    const-string v0, " isBlockKey="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isBlockKey(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 293
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "needInitializationWhenSystemReady="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->needInitializationWhenSystemReady()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 294
    const-string v0, " getKeyPendingThresholdTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->getKeyPendingThresholdTime()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 295
    const-string v0, " isMultiSIMDevice="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isMultiSIMDevice()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 296
    const-string v0, " isStatusBarHoverOpenEnabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isStatusBarHoverOpenEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 297
    const-string v0, " hasHardMenuBackKey="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasHardMenuBackKey()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 298
    return-void
.end method

.method public static getKeyPendingThresholdTime()I
    .locals 2

    .prologue
    .line 189
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mPendingThresholdTimeChecked:Z

    if-nez v1, :cond_0

    .line 191
    :try_start_0
    const-string v1, "0"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mPendingThresholdTime:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mPendingThresholdTimeChecked:Z

    .line 198
    :cond_0
    sget v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mPendingThresholdTime:I

    return v1

    .line 193
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 194
    .restart local v0    # "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    sput v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mPendingThresholdTime:I

    goto :goto_0
.end method

.method public static hasHardMenuBackKey()Z
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x0

    return v0
.end method

.method public static hasNumericKeyboard(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 123
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasNumericKeyboardChecked:Z

    if-nez v0, :cond_0

    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasNumericKeyboard:Z

    .line 126
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasNumericKeyboardChecked:Z

    .line 128
    :cond_0
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasNumericKeyboard:Z

    return v0

    .line 124
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasQwertyKeyboard(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 114
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasQwertyKeyboardChecked:Z

    if-nez v0, :cond_0

    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasQwertyKeyboard:Z

    .line 117
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasQwertyKeyboardChecked:Z

    .line 119
    :cond_0
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasQwertyKeyboard:Z

    return v0

    .line 115
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasSPenFeature(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasSPenFeatureChecked:Z

    if-nez v0, :cond_0

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.spen_usp"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasSPenFeature:Z

    .line 104
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasSPenFeatureChecked:Z

    .line 106
    :cond_0
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasSPenFeature:Z

    return v0
.end method

.method public static hasSideKeyPanelFeature(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 226
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasSideKeyPanelFeatureChecked:Z

    if-nez v0, :cond_0

    .line 227
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.floating_side_softkey"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasSideKeyPanelFeature:Z

    .line 228
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasSideKeyPanelFeatureChecked:Z

    .line 230
    :cond_0
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasSideKeyPanelFeature:Z

    return v0
.end method

.method public static isBlockKey(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 169
    const-string v1, "LGT"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 170
    const-string v1, "true"

    const-string v2, "ril.domesticOtaStart"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "18"

    const-string v2, "ril.simtype"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    :cond_0
    :goto_0
    return v0

    .line 175
    :cond_1
    const-string v1, "lock"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "missing_phone_lock"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 181
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCameraKeyWakeKey(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 257
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isMirrorLessCameraSpecialized()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasNumericKeyboard(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    :cond_0
    const/4 v0, 0x1

    .line 260
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCameraSpecialized()Z
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public static isChinaFeature()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 305
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mIsChinaFeatureChecked:Z

    if-nez v1, :cond_2

    .line 306
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "SalesCode":Ljava/lang/String;
    const-string v1, "CTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "BRI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 310
    :cond_0
    sput-boolean v2, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mIsChinaFeature:Z

    .line 313
    :cond_1
    sput-boolean v2, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mIsChinaFeatureChecked:Z

    .line 316
    :cond_2
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mIsChinaFeature:Z

    return v1
.end method

.method public static isDisablePopupUI()Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public static isEasyOneHandEnabled()Z
    .locals 1

    .prologue
    .line 240
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mEasyOneHandEnabled:Z

    return v0
.end method

.method public static isEasyOneHandRunning()Z
    .locals 1

    .prologue
    .line 252
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mEasyOneHandRunning:Z

    return v0
.end method

.method public static isMirrorLessCameraSpecialized()Z
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public static isMultiSIMDevice()Z
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x1

    return v0
.end method

.method public static isOneTouchReportChordEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 151
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_EnableOneTouchReport"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isScreenRecordChordEnabled()Z
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public static isScreenShotChordEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 132
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mScreenShotChordEnableChecked:Z

    if-nez v1, :cond_0

    .line 134
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mScreenShotChordEnabled:Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mScreenShotChordEnableChecked:Z

    .line 142
    :cond_0
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mScreenShotChordEnabled:Z

    return v1

    .line 136
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mScreenShotChordEnabled:Z

    goto :goto_0
.end method

.method public static isStarKeyToVibrationMode()Z
    .locals 2

    .prologue
    .line 268
    const-string v0, "KOR"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isStatusBarHoverOpenEnabled()Z
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportCameraQuickShot()Z
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportDMBAntennaDetach()Z
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportDTVAntennaDetach()Z
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportEasyOneHand()Z
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportFingerPrint()Z
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportGestureWithIRSensor()Z
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportSPC()Z
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public static isUseVibetonz()Z
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method public static isVoiceTalkDefaultLaunch(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 72
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mVoiceTalkDefaultLaunchChecked:Z

    if-nez v1, :cond_0

    .line 74
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110055

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mVoiceTalkDefaultLaunch:Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    sput-boolean v3, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mVoiceTalkDefaultLaunchChecked:Z

    .line 82
    :cond_0
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mVoiceTalkDefaultLaunch:Z

    return v1

    .line 76
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    sput-boolean v3, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mVoiceTalkDefaultLaunch:Z

    goto :goto_0
.end method

.method public static isWatchSpecialized()Z
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public static isWearableHMTSupported()Z
    .locals 1

    .prologue
    .line 301
    const/4 v0, 0x0

    return v0
.end method

.method public static needInitializationWhenSystemReady()Z
    .locals 2

    .prologue
    .line 185
    const-string v0, "LGT"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static setEasyOneHandEnabled(Z)V
    .locals 0
    .param p0, "enabled"    # Z

    .prologue
    .line 244
    sput-boolean p0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mEasyOneHandEnabled:Z

    .line 245
    return-void
.end method

.method public static setEasyOneHandRunning(Z)V
    .locals 0
    .param p0, "running"    # Z

    .prologue
    .line 248
    sput-boolean p0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mEasyOneHandRunning:Z

    .line 249
    return-void
.end method
