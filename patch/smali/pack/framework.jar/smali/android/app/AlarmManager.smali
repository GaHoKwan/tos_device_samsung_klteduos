.class public Landroid/app/AlarmManager;
.super Ljava/lang/Object;
.source "AlarmManager.java"


# static fields
.field public static final ELAPSED_REALTIME:I = 0x3

.field public static final ELAPSED_REALTIME_WAKEUP:I = 0x2

.field public static final INTERVAL_DAY:J = 0x5265c00L

.field public static final INTERVAL_FIFTEEN_MINUTES:J = 0xdbba0L

.field public static final INTERVAL_HALF_DAY:J = 0x2932e00L

.field public static final INTERVAL_HALF_HOUR:J = 0x1b7740L

.field public static final INTERVAL_HOUR:J = 0x36ee80L

.field public static final RTC:I = 0x1

.field public static final RTC_POWEROFF_WAKEUP:I = 0x4

.field public static final RTC_WAKEUP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AlarmManager"

.field public static final WINDOW_EXACT:J = 0x0L

.field public static final WINDOW_HEURISTIC:J = -0x1L


# instance fields
.field private final mAlwaysExact:Z

.field private final mService:Landroid/app/IAlarmManager;


# direct methods
.method constructor <init>(Landroid/app/IAlarmManager;Landroid/content/Context;)V
    .locals 2
    .param p1, "service"    # Landroid/app/IAlarmManager;
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    .line 121
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 122
    .local v0, "sdkVersion":I
    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Landroid/app/AlarmManager;->mAlwaysExact:Z

    .line 123
    return-void

    .line 122
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private legacyExactLength()J
    .locals 2

    .prologue
    .line 126
    iget-boolean v0, p0, Landroid/app/AlarmManager;->mAlwaysExact:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private setImpl(IJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;)V
    .locals 10
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "windowMillis"    # J
    .param p6, "intervalMillis"    # J
    .param p8, "operation"    # Landroid/app/PendingIntent;
    .param p9, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 372
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    .line 380
    const-wide/16 p2, 0x0

    .line 384
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Landroid/app/IAlarmManager;->set(IJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    :goto_0
    return-void

    .line 386
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public cancel(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 500
    :try_start_0
    iget-object v0, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    invoke-interface {v0, p1}, Landroid/app/IAlarmManager;->remove(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    :goto_0
    return-void

    .line 501
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public set(IJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "windowMillis"    # J
    .param p6, "intervalMillis"    # J
    .param p8, "operation"    # Landroid/app/PendingIntent;
    .param p9, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 367
    invoke-direct/range {p0 .. p9}, Landroid/app/AlarmManager;->setImpl(IJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;)V

    .line 368
    return-void
.end method

.method public set(IJLandroid/app/PendingIntent;)V
    .locals 10
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 200
    invoke-direct {p0}, Landroid/app/AlarmManager;->legacyExactLength()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v8, p4

    invoke-direct/range {v0 .. v9}, Landroid/app/AlarmManager;->setImpl(IJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;)V

    .line 201
    return-void
.end method

.method public setAutoPowerUp(Ljava/lang/String;)V
    .locals 1
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 210
    :try_start_0
    iget-object v0, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    invoke-interface {v0, p1}, Landroid/app/IAlarmManager;->setAutoPowerUp(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :goto_0
    return-void

    .line 211
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setExact(IJLandroid/app/PendingIntent;)V
    .locals 10
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "operation"    # Landroid/app/PendingIntent;

    .prologue
    const-wide/16 v4, 0x0

    .line 361
    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v6, v4

    move-object v8, p4

    invoke-direct/range {v0 .. v9}, Landroid/app/AlarmManager;->setImpl(IJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;)V

    .line 362
    return-void
.end method

.method public setInexactRepeating(IJJLandroid/app/PendingIntent;)V
    .locals 10
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "intervalMillis"    # J
    .param p6, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 485
    const-wide/16 v4, -0x1

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Landroid/app/AlarmManager;->setImpl(IJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;)V

    .line 486
    return-void
.end method

.method public setRepeating(IJJLandroid/app/PendingIntent;)V
    .locals 10
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "intervalMillis"    # J
    .param p6, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 273
    invoke-direct {p0}, Landroid/app/AlarmManager;->legacyExactLength()J

    move-result-wide v4

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Landroid/app/AlarmManager;->setImpl(IJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;)V

    .line 274
    return-void
.end method

.method public setTime(J)V
    .locals 1
    .param p1, "millis"    # J

    .prologue
    .line 513
    :try_start_0
    iget-object v0, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    invoke-interface {v0, p1, p2}, Landroid/app/IAlarmManager;->setTime(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    :goto_0
    return-void

    .line 514
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 1
    .param p1, "timeZone"    # Ljava/lang/String;

    .prologue
    .line 526
    :try_start_0
    iget-object v0, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    invoke-interface {v0, p1}, Landroid/app/IAlarmManager;->setTimeZone(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    :goto_0
    return-void

    .line 527
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setWindow(IJJLandroid/app/PendingIntent;)V
    .locals 10
    .param p1, "type"    # I
    .param p2, "windowStartMillis"    # J
    .param p4, "windowLengthMillis"    # J
    .param p6, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 323
    const-wide/16 v6, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Landroid/app/AlarmManager;->setImpl(IJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;)V

    .line 324
    return-void
.end method

.method public shutdownTimeAfterFakeOff(ZI)I
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "minute"    # I

    .prologue
    .line 536
    :try_start_0
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-nez v1, :cond_0

    .line 537
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 538
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 540
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    iget-object v1, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    invoke-interface {v1, p1, p2}, Landroid/app/IAlarmManager;->shutdownTimeAfterFakeOff(ZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 541
    :catch_0
    move-exception v0

    .line 542
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "AlarmManager"

    const-string v2, "is service dead?"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
