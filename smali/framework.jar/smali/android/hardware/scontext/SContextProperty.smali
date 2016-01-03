.class public Landroid/hardware/scontext/SContextProperty;
.super Ljava/lang/Object;
.source "SContextProperty.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ACTIVITY_LOCATION_LOGGING_AREA_RADIUS:Ljava/lang/String; = "activity_location_logging_area_radius"

.field public static final ACTIVITY_LOCATION_LOGGING_LPP_RESOLUTION:Ljava/lang/String; = "activity_location_logging_lpp_resolution"

.field public static final ACTIVITY_LOCATION_LOGGING_STAYING_RADIUS:Ljava/lang/String; = "activity_location_logging_statying radius"

.field public static final ACTIVITY_LOCATION_LOGGING_STOP_PERIOD:Ljava/lang/String; = "activity_location_logging_stop_period"

.field public static final ACTIVITY_LOCATION_LOGGING_WAIT_PERIOD:Ljava/lang/String; = "activity_location_logging_wait_period"

.field public static final ACTIVITY_NOTIFICATION_ACTIVITY_FILTER:Ljava/lang/String; = "activity_notification_activity_filter"

.field public static final ACTIVITY_NOTIFICATION_EX_ACTIVITY_FILTER:Ljava/lang/String; = "activity_notification_ex_activity_filter"

.field public static final ACTIVITY_NOTIFICATION_EX_TIME_DURATION:Ljava/lang/String; = "activity_notification_ex_time_duration"

.field public static final AUTO_ROTATION_DEVICE_TYPE:Ljava/lang/String; = "auto_rotation_device_type"

.field public static final CAPTURE_MOTION_IN_SAMPLING_NUM:Ljava/lang/String; = "capture_motion_in_sampling_num"

.field public static final CAPTURE_MOTION_ORIENTATION_MAXIMUM_ANGLE:Ljava/lang/String; = "capture_motion_orientation_maximum_angle"

.field public static final CAPTURE_MOTION_ORIENTATION_MINIMUM_ANGLE:Ljava/lang/String; = "capture_motion_orientation_minimum_angle"

.field public static final CAPTURE_MOTION_OUT_SAMPLING_NUM:Ljava/lang/String; = "capture_motion_out_sampling_num"

.field public static final CAPTURE_MOTION_TILT_MAXIMUM_ANGLE:Ljava/lang/String; = "capture_motion_tilt_maximum_angle"

.field public static final CAPTURE_MOTION_TILT_MINIMUM_ANGLE:Ljava/lang/String; = "capture_motion_tilt_minimum_angle"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/scontext/SContextProperty;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_ACTIVITY_LOCATION_LOGGING_AREA_RADIUS:I = 0x96

.field private static final DEFAULT_ACTIVITY_LOCATION_LOGGING_LPP_RESOLUTION:I = 0x1

.field private static final DEFAULT_ACTIVITY_LOCATION_LOGGING_STAYING_RADIUS:I = 0x32

.field private static final DEFAULT_ACTIVITY_LOCATION_LOGGING_STOP_PERIOD:I = 0x3c

.field private static final DEFAULT_ACTIVITY_LOCATION_LOGGING_WAIT_PERIOD:I = 0x78

.field private static final DEFAULT_ACTIVITY_NOTIFICATION_ACTIVITY_FILTER:[I

.field private static final DEFAULT_ACTIVITY_NOTIFICATION_EX_ACTIVITY_FILTER:[I

.field private static final DEFAULT_ACTIVITY_NOTIFICATION_EX_TIME_DURATION:I = 0x1e

.field private static final DEFAULT_AUTO_ROTATION_DEVICE_TYPE:I = 0x0

.field private static final DEFAULT_CAPTURE_MOTION_IN_SAMPLING_NUM:I = 0x1

.field private static final DEFAULT_CAPTURE_MOTION_ORIENTATION_MAXIMUM_ANGLE:I = 0x64

.field private static final DEFAULT_CAPTURE_MOTION_ORIENTATION_MINIMUM_ANGLE:I = 0x50

.field private static final DEFAULT_CAPTURE_MOTION_OUT_SAMPLING_NUM:I = 0x5

.field private static final DEFAULT_CAPTURE_MOTION_TILT_MAXIMUM_ANGLE:I = 0x1e

.field private static final DEFAULT_CAPTURE_MOTION_TILT_MINIMUM_ANGLE:I = -0xa

.field private static final DEFAULT_ENVIRONMENT_SENSOR_TYPE:I = 0x1

.field private static final DEFAULT_ENVIRONMENT_UPDATE_INTERVAL:I = 0x3c

.field private static final DEFAULT_MFP_MOVE_DISTANCE_THRS:D = 100.0

.field private static final DEFAULT_MFP_MOVE_DURATION_THRS:I = 0x3c

.field private static final DEFAULT_MFP_MOVE_MIN_DURATION_THRS:I = 0x5

.field private static final DEFAULT_MFP_NOMOVE_DURATION_THRS:I = 0x3c

.field private static final DEFAULT_SHAKE_MOTION_DURATION:I = 0x320

.field private static final DEFAULT_SHAKE_MOTION_STRENGTH:I = 0x2

.field private static final DEFAULT_SLEEP_MONITOR_SAMPLING_INTERVAL:I = 0x64

.field private static final DEFAULT_SLEEP_MONITOR_SENSIBILITY:I = 0x50

.field private static final DEFAULT_SPECIFIC_POSE_ALERT_MAXIMUM_ANGLE:I = 0x5a

.field private static final DEFAULT_SPECIFIC_POSE_ALERT_MINIMUM_ANGLE:I = -0x5a

.field private static final DEFAULT_SPECIFIC_POSE_ALERT_MOVING_THRS:I = 0x1

.field private static final DEFAULT_SPECIFIC_POSE_ALERT_RETENTION_TIME:I = 0x1

.field private static final DEFAULT_STEP_COUNT_ALERT_STEP_COUNT:I = 0xa

.field private static final DEFAULT_TEMPERATURE_ALERT_HIGH_TEMPERATURE:I = 0x7f

.field private static final DEFAULT_TEMPERATURE_ALERT_IS_INCLUDING:Z = true

.field private static final DEFAULT_TEMPERATURE_ALERT_LOW_TEMPERATURE:I = 0x46

.field private static final DEFAULT_WAKE_UP_VOICE_MODE:I = 0x1

.field public static final ENVIRONMENT_SENSOR_TYPE:Ljava/lang/String; = "environment_sensor_type"

.field public static final ENVIRONMENT_UPDATE_INTERVAL:Ljava/lang/String; = "environment_update_interval"

.field public static final MFP_MOVE_DISTANCE_THRS:Ljava/lang/String; = "mfp_move_distance_thrs"

.field public static final MFP_MOVE_DURATION_THRS:Ljava/lang/String; = "mfp_move_duration_thrs"

.field public static final MFP_MOVE_MIN_DURATION_THRS:Ljava/lang/String; = "mfp_move_min_duration_thrs"

.field public static final MFP_NOMOVE_DURATION_THRS:Ljava/lang/String; = "mfp_nomove_duration_thrs"

.field public static final PEDOMETER_GENDER:Ljava/lang/String; = "pedometer_gender"

.field public static final PEDOMETER_HEIGHT:Ljava/lang/String; = "pedometer_height"

.field public static final PEDOMETER_WEIGHT:Ljava/lang/String; = "pedometer_weight"

.field public static final SHAKE_MOTION_DURATION:Ljava/lang/String; = "shake_motion_duration"

.field public static final SHAKE_MOTION_STRENGTH:Ljava/lang/String; = "shake_motion_strength"

.field public static final SLEEP_MONITOR_SAMPLING_INTERVAL:Ljava/lang/String; = "sleep_monitor_sampling_interval"

.field public static final SLEEP_MONITOR_SENSIBILITY:Ljava/lang/String; = "sleep_monitor_sensibility"

.field public static final SPECIFIC_POSE_ALERT_MAXIMUM_ANGLE:Ljava/lang/String; = "specific_pose_alert_maximum_angle"

.field public static final SPECIFIC_POSE_ALERT_MINIMUM_ANGLE:Ljava/lang/String; = "specific_pose_alert_minimum_angle"

.field public static final SPECIFIC_POSE_ALERT_MOVING_THRS:Ljava/lang/String; = "specific_pose_alert_moving_thrs"

.field public static final SPECIFIC_POSE_ALERT_RETENTION_TIME:Ljava/lang/String; = "specific_pose_alert_retention_time"

.field public static final STEP_COUT_ALERT_STEP:Ljava/lang/String; = "step_cout_alert_step"

.field public static final TEMPERATURE_ALERT_HIGH_TEMPERATURE:Ljava/lang/String; = "temperature_alert_high_temperature"

.field public static final TEMPERATURE_ALERT_IS_INCLUDING:Ljava/lang/String; = "temperature_alert_is_including"

.field public static final TEMPERATURE_ALERT_LOW_TEMPERATURE:Ljava/lang/String; = "temperature_alert_low_temperature"

.field public static final WAKE_UP_VOICE_MODE:Ljava/lang/String; = "wake_up_voice_mode"

.field public static final WIFI_TRANSITION_NOTIFICATION_DB_LIST:Ljava/lang/String; = "wifi_transition_notification_db_list"

.field public static final WIFI_TRANSITION_NOTIFICATION_DB_LIST_COUNT:Ljava/lang/String; = "wifi_transition_notification_db_list_count"

.field public static final WIFI_TRANSITION_NOTIFICATION_ID_LIST:Ljava/lang/String; = "wifi_transition_notification_id_list"

.field public static final WIFI_TRANSITION_NOTIFICATION_PERIOD:Ljava/lang/String; = "wifi_transition_notification_period"


# instance fields
.field private mProperty:Landroid/os/Bundle;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 370
    new-array v0, v2, [I

    aput v3, v0, v1

    sput-object v0, Landroid/hardware/scontext/SContextProperty;->DEFAULT_ACTIVITY_NOTIFICATION_ACTIVITY_FILTER:[I

    .line 411
    new-array v0, v2, [I

    aput v3, v0, v1

    sput-object v0, Landroid/hardware/scontext/SContextProperty;->DEFAULT_ACTIVITY_NOTIFICATION_EX_ACTIVITY_FILTER:[I

    .line 657
    new-instance v0, Landroid/hardware/scontext/SContextProperty$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextProperty$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextProperty;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .param p1, "service"    # I

    .prologue
    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/scontext/SContextProperty;->mProperty:Landroid/os/Bundle;

    .line 428
    iput p1, p0, Landroid/hardware/scontext/SContextProperty;->mType:I

    .line 429
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextProperty;->initialize(I)V

    .line 430
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/scontext/SContextProperty;->mProperty:Landroid/os/Bundle;

    .line 436
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextProperty;->readFromParcel(Landroid/os/Parcel;)V

    .line 437
    return-void
.end method

.method private initialize(I)V
    .locals 7
    .param p1, "service"    # I

    .prologue
    const/16 v6, 0x50

    const/16 v5, 0x1e

    const/4 v4, 0x5

    const/16 v2, 0x3c

    const/4 v3, 0x1

    .line 445
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextProperty;->mProperty:Landroid/os/Bundle;

    .line 446
    packed-switch p1, :pswitch_data_0

    .line 545
    :goto_0
    :pswitch_0
    return-void

    .line 448
    :pswitch_1
    iget-object v0, p0, Landroid/hardware/scontext/SContextProperty;->mProperty:Landroid/os/Bundle;

    const-string v1, "step_cout_alert_step"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 452
    :pswitch_2
    iget-object v0, p0, Landroid/hardware/scontext/SContextProperty;->mProperty:Landroid/os/Bundle;

    const-string v1, "auto_rotation_device_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 456
    :pswitch_3
    iget-object v0, p0, Landroid/hardware/scontext/SContextProperty;->mProperty:Landroid/os/Bundle;

    const-string v1, "environment_sensor_type"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 457
    iget-object v0, p0, Landroid/hardware/scontext/SContextProperty;->mProperty:Landroid/os/Bundle;

    const-string v1, "environment_update_interval"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 461
    :pswitch_4
    iget-object v0, p0, Landroid/hardware/scontext/SContextProperty;->mProperty:Landroid/os/Bundle;

    const-string v1, "mfp_nomove_duration_thrs"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 462
    iget-object v0, p0, Landroid/hardware/scontext/SContextProperty;->mProperty:Landroid/os/Bundle;

    const-string v1, "mfp_move_duration_thrs"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 463
    iget-object v0, p0, Landroid/hardware/scontext/SContextProperty;->mProperty:Landroid/os/Bundle;

    const-string v1, "mfp_move_min_duration_thrs"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 464
    iget-object v0, p0, Landroid/hardware/scontext/SContextProperty;->mProperty:Landroid/os/Bundle;

    const-string v1, "mfp_move_distance_thrs"

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 468
    :pswitch_5
    iget-object v0, p0, Landroid/hardware/scontext/SContextProperty;->mProperty:Landroid/os/Bundle;

    const-string v1, "shake_motion_strength"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 469
    iget-object v0, p0, Landroid/hardware/scontext/SContextProperty;->mProperty:Landroid/os/Bundle;

    const-string v1, "shake_motion_duration"

    const/16 v2, 0x320

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 473
    :pswitch_6
    iget-object v0, p0, Landroid/hardware/scontext/SContextProperty;->mProperty:Landroid/os/Bundle;

    const-string v1, "temperature_alert_low_temperature"

    const/16 v2, 0x46

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 475
    iget-object v0, p0, Landroid/hardware/scontext/SContextProperty;->mProperty:Landroid/os/Bundle;

    const-string v1, "temperature_alert_high_temperature"

    const/16 v2, 0x7f

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 477
    iget-object v0, p0, Landroid/hardware/scontext/SContextProperty;->mProperty:Landroid/os/Bundle;

    const-string v1, "temperature_alert_is_including"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 482
    :pswitch_7
    iget-object v0, p0, Landroid/hardware/scontext/SContextProperty;->mProperty:Landroid/os/Bundle;

    const-string v1, "activity_location_logging_stop_period"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 484
    iget-object v0, p0, Landroid/hardware/scontext/SContextProperty;->mProperty:Landroid/os/Bundle;

    const-string v1, "activity_location_logging_wait_period"

    const/16 v2, 0x78

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 486
    iget-object v0, p0, Landroid/hardware/scontext/SContextProperty;->mProperty:Landroid/os/Bundle;

    const-string v1, "activity_location_logging_statying radius"

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 488
    iget-object v0, p0, Landroid/hardware/scontext/SContextProperty;->mProperty:Landroid/os/Bundle;

    const-string v1, "activity_location_logging_area_radius"

    const/16 v2, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 490
    iget-object v0, p0, Landroid/hardware/scontext/SContextProperty;->mProperty:Landroid/os/Bundle;

    const-string v1, "activity_location_logging_lpp_resolution"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 495
    :pswitch_8
    iget-object v0, p0, Landroid/hardware/scontext/SContextProperty;->mProperty:Landroid/os/Bundle;

    const-string v1, "activity_notification_activity_filter"

    sget-object v2, Landroid/hardware/scontext/SContextProperty;->DEFAULT_ACTIVITY_NOTIFICATION_ACTIVITY_FILTER:[I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 500
    :pswitch_9
    iget-object v0, p0, Landroid/hardware/scontext/SContextProperty;->mProperty:Landroid/os/Bundle;

    const-string v1, "specific_pose_alert_retention_time"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 502
    iget-object v0, p0, Landroid/hardware/scontext/SContextProperty;->mProperty:Landroid/os/Bundle;

    const-string v1, "specific_pose_alert_minimum_angle"

    const/16 v2, -0x5a

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 504
    iget-object v0, p0, Landroid/hardware/scontext/SContextProperty;->mProperty:Landroid/os/Bundle;

    const-string v1, "specific_pose_alert_maximum_angle"

    const/16 v2, 0x5a

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 506
    iget-object v0, p0, Landroid/hardware/scontext/SContextProperty;->mProperty:Landroid/os/Bundle;

    const-string v1, "specific_pose_alert_moving_thrs"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 511
    :pswitch_a
    iget-object v0, p0, Landroid/hardware/scontext/SContextProperty;->mProperty:Landroid/os/Bundle;

    const-string v1, "sleep_monitor_sensibility"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 512
    iget-object v0, p0, Landroid/hardware/scontext/SContextProperty;->mProperty:Landroid/os/Bundle;

    const-string v1, "sleep_monitor_sampling_interval"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 517
    :pswitch_b
    iget-object v0, p0, Landroid/hardware/scontext/SContextProperty;->mProperty:Landroid/os/Bundle;

    const-string v1, "activity_notification_ex_activity_filter"

    sget-object v2, Landroid/hardware/scontext/SContextProperty;->DEFAULT_ACTIVITY_NOTIFICATION_EX_ACTIVITY_FILTER:[I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 519
    iget-object v0, p0, Landroid/hardware/scontext/SContextProperty;->mProperty:Landroid/os/Bundle;

    const-string v1, "activity_notification_ex_time_duration"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 524
    :pswitch_c
    iget-object v0, p0, Landroid/hardware/scontext/SContextProperty;->mProperty:Landroid/os/Bundle;

    const-string v1, "capture_motion_tilt_minimum_angle"

    const/16 v2, -0xa

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 526
    iget-object v0, p0, Landroid/hardware/scontext/SContextProperty;->mProperty:Landroid/os/Bundle;

    const-string v1, "capture_motion_tilt_maximum_angle"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 528
    iget-object v0, p0, Landroid/hardware/scontext/SContextProperty;->mProperty:Landroid/os/Bundle;

    const-string v1, "capture_motion_orientation_minimum_angle"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 530
    iget-object v0, p0, Landroid/hardware/scontext/SContextProperty;->mProperty:Landroid/os/Bundle;

    const-string v1, "capture_motion_orientation_maximum_angle"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 532
    iget-object v0, p0, Landroid/hardware/scontext/SContextProperty;->mProperty:Landroid/os/Bundle;

    const-string v1, "capture_motion_in_sampling_num"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 534
    iget-object v0, p0, Landroid/hardware/scontext/SContextProperty;->mProperty:Landroid/os/Bundle;

    const-string v1, "capture_motion_out_sampling_num"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 539
    :pswitch_d
    iget-object v0, p0, Landroid/hardware/scontext/SContextProperty;->mProperty:Landroid/os/Bundle;

    const-string/jumbo v1, "wake_up_voice_mode"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 446
    nop

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 648
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContextProperty;->mType:I

    .line 649
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextProperty;->mProperty:Landroid/os/Bundle;

    .line 650
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 628
    const/4 v0, 0x0

    return v0
.end method

.method public getProperty()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Landroid/hardware/scontext/SContextProperty;->mProperty:Landroid/os/Bundle;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 554
    iget v0, p0, Landroid/hardware/scontext/SContextProperty;->mType:I

    return v0
.end method

.method public setProperty(Ljava/lang/String;D)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 585
    iget-object v0, p0, Landroid/hardware/scontext/SContextProperty;->mProperty:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 586
    return-void
.end method

.method public setProperty(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 575
    iget-object v0, p0, Landroid/hardware/scontext/SContextProperty;->mProperty:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 576
    return-void
.end method

.method public setProperty(Ljava/lang/String;J)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 596
    iget-object v0, p0, Landroid/hardware/scontext/SContextProperty;->mProperty:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 597
    return-void
.end method

.method public setProperty(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 607
    iget-object v0, p0, Landroid/hardware/scontext/SContextProperty;->mProperty:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 608
    return-void
.end method

.method public setProperty(Ljava/lang/String;[I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [I

    .prologue
    .line 618
    iget-object v0, p0, Landroid/hardware/scontext/SContextProperty;->mProperty:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 619
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 638
    iget v0, p0, Landroid/hardware/scontext/SContextProperty;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 639
    iget-object v0, p0, Landroid/hardware/scontext/SContextProperty;->mProperty:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 640
    return-void
.end method
