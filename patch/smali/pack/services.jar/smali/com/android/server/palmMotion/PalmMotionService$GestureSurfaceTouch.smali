.class final Lcom/android/server/palmMotion/PalmMotionService$GestureSurfaceTouch;
.super Ljava/lang/Object;
.source "PalmMotionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/palmMotion/PalmMotionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GestureSurfaceTouch"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "baseContext"    # Landroid/content/Context;

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lcom/android/server/palmMotion/PalmMotionService$GestureSurfaceTouch;->mContext:Landroid/content/Context;

    .line 123
    return-void
.end method

.method public static insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "feature"    # Ljava/lang/String;

    .prologue
    .line 173
    const-string v2, "TRUE"

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 175
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "app_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v2, "feature"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 179
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 181
    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 184
    .end local v0    # "broadcastIntent":Landroid/content/Intent;
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method


# virtual methods
.method public onInitSweep(I)Z
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public onPalm(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 158
    sget-boolean v1, Lcom/android/server/palmMotion/PalmMotionService;->g_IsBootCompleted:Z

    if-nez v1, :cond_0

    .line 159
    const-string/jumbo v1, "sys.boot_completed"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/palmMotion/PalmMotionService;->g_IsBootCompleted:Z

    .line 160
    :cond_0
    sget-boolean v1, Lcom/android/server/palmMotion/PalmMotionService;->g_IsBootCompleted:Z

    if-eqz v1, :cond_1

    .line 161
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 162
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PALM_UP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 163
    .local v0, "statusIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/palmMotion/PalmMotionService$GestureSurfaceTouch;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 169
    .end local v0    # "statusIntent":Landroid/content/Intent;
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 165
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PALM_DOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 166
    .restart local v0    # "statusIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/palmMotion/PalmMotionService$GestureSurfaceTouch;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method public onSweepDown(I)Z
    .locals 5
    .param p1, "direction"    # I

    .prologue
    .line 126
    const/4 v0, 0x0

    .line 128
    .local v0, "callTouchLock":I
    sget-boolean v2, Lcom/android/server/palmMotion/PalmMotionService;->g_IsBootCompleted:Z

    if-nez v2, :cond_0

    .line 129
    const-string/jumbo v2, "sys.boot_completed"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/palmMotion/PalmMotionService;->g_IsBootCompleted:Z

    .line 132
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/palmMotion/PalmMotionService$GestureSurfaceTouch;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "call_touch_lock"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 136
    :goto_0
    if-nez v0, :cond_1

    .line 137
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    sget-boolean v2, Lcom/android/server/palmMotion/PalmMotionService;->g_IsBootCompleted:Z

    if-eqz v2, :cond_2

    .line 138
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SWEEP_RIGHT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    .local v1, "statusIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/palmMotion/PalmMotionService$GestureSurfaceTouch;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 140
    iget-object v2, p0, Lcom/android/server/palmMotion/PalmMotionService$GestureSurfaceTouch;->mContext:Landroid/content/Context;

    const-string v3, "com.android.server.palmMotion"

    const-string v4, "PALM"

    invoke-static {v2, v3, v4}, Lcom/android/server/palmMotion/PalmMotionService$GestureSurfaceTouch;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .end local v1    # "statusIntent":Landroid/content/Intent;
    :cond_1
    :goto_1
    const/4 v2, 0x0

    return v2

    .line 141
    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    sget-boolean v2, Lcom/android/server/palmMotion/PalmMotionService;->g_IsBootCompleted:Z

    if-eqz v2, :cond_3

    .line 142
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SWEEP_LEFT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    .restart local v1    # "statusIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/palmMotion/PalmMotionService$GestureSurfaceTouch;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 144
    iget-object v2, p0, Lcom/android/server/palmMotion/PalmMotionService$GestureSurfaceTouch;->mContext:Landroid/content/Context;

    const-string v3, "com.android.server.palmMotion"

    const-string v4, "PALM"

    invoke-static {v2, v3, v4}, Lcom/android/server/palmMotion/PalmMotionService$GestureSurfaceTouch;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 145
    .end local v1    # "statusIntent":Landroid/content/Intent;
    :cond_3
    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    sget-boolean v2, Lcom/android/server/palmMotion/PalmMotionService;->g_IsBootCompleted:Z

    if-eqz v2, :cond_1

    .line 146
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SWEEP_DOWN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    .restart local v1    # "statusIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/palmMotion/PalmMotionService$GestureSurfaceTouch;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1

    .line 133
    .end local v1    # "statusIntent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    goto :goto_0
.end method
