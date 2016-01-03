.class public Landroid/hardware/scontext/provider/caeprovider/CaeProvider;
.super Landroid/hardware/scontext/provider/Provider;
.source "CaeProvider.java"


# instance fields
.field private final mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

.field private final mContext:Landroid/content/Context;

.field private final mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

.field private final mListener:Landroid/hardware/scontext/provider/EventListener;

.field private final mServiceNum:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/hardware/scontext/provider/EventListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # I
    .param p3, "listener"    # Landroid/hardware/scontext/provider/EventListener;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/hardware/scontext/provider/Provider;-><init>(Landroid/content/Context;)V

    .line 609
    new-instance v0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;

    invoke-direct {v0, p0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;-><init>(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)V

    iput-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    .line 47
    iput-object p1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContext:Landroid/content/Context;

    .line 48
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContext:Landroid/content/Context;

    const-string v1, "context_aware"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/contextaware/ContextAwareManager;

    iput-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    .line 50
    iput p2, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mServiceNum:I

    .line 51
    iput-object p3, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;

    .line 52
    return-void
.end method

.method static synthetic access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    .prologue
    .line 30
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;

    return-object v0
.end method


# virtual methods
.method public add()V
    .locals 3

    .prologue
    .line 62
    iget v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mServiceNum:I

    packed-switch v0, :pswitch_data_0

    .line 198
    :goto_0
    :pswitch_0
    return-void

    .line 64
    :pswitch_1
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->GESTURE_APPROACH_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    .line 68
    :pswitch_2
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->PEDOMETER_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    .line 72
    :pswitch_3
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->STEP_COUNT_ALERT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    .line 76
    :pswitch_4
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    .line 80
    :pswitch_5
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->MOVEMENT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    .line 84
    :pswitch_6
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->AUTO_ROTATION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    .line 88
    :pswitch_7
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->TEMPERATURE_HUMIDITY_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    .line 92
    :pswitch_8
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->MOVEMENT_FOR_POSITIONING_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    .line 96
    :pswitch_9
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    .line 100
    :pswitch_a
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->CALL_POSE_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    .line 104
    :pswitch_b
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->SHAKE_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    .line 108
    :pswitch_c
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->FLIP_COVER_ACTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    .line 112
    :pswitch_d
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->GYRO_TEMPERATURE_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 116
    :pswitch_e
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->PUT_DOWN_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 120
    :pswitch_f
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->WAKE_UP_VOICE_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 124
    :pswitch_10
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->BOUNCE_SHORT_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 128
    :pswitch_11
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->BOUNCE_LONG_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 132
    :pswitch_12
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->WRIST_UP_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 136
    :pswitch_13
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->FLAT_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 140
    :pswitch_14
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->MOVEMENT_ALERT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 144
    :pswitch_15
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->TEST_FLAT_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 148
    :pswitch_16
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->TEMPERATURE_ALERT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 152
    :pswitch_17
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->LIFE_LOG_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 156
    :pswitch_18
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 160
    :pswitch_19
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_BATCH_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 164
    :pswitch_1a
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_INTERRUPT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 168
    :pswitch_1b
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->SPECIFIC_POSE_ALERT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 172
    :pswitch_1c
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->SLEEP_MONITOR_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 176
    :pswitch_1d
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_EXTANDED_INTERRUPT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 180
    :pswitch_1e
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->CAPTURE_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 184
    :pswitch_1f
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->CALL_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 188
    :pswitch_20
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->DOUBLE_TAP_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 192
    :pswitch_21
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->WIFI_TRANSITION_NOTIFICATION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 62
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
    .end packed-switch
.end method

.method getListener()Landroid/hardware/contextaware/manager/ContextAwareListener;
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    return-object v0
.end method

.method getManager()Landroid/hardware/contextaware/ContextAwareManager;
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    return-object v0
.end method

.method public handleDiedBinder()V
    .locals 0

    .prologue
    .line 691
    return-void
.end method

.method public onBinderDied()V
    .locals 0

    .prologue
    .line 577
    return-void
.end method

.method public parse(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 565
    return-object p1
.end method

.method public remove()V
    .locals 3

    .prologue
    .line 208
    iget v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mServiceNum:I

    packed-switch v0, :pswitch_data_0

    .line 344
    :goto_0
    :pswitch_0
    return-void

    .line 210
    :pswitch_1
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->GESTURE_APPROACH_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    .line 214
    :pswitch_2
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->PEDOMETER_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    .line 218
    :pswitch_3
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->STEP_COUNT_ALERT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    .line 222
    :pswitch_4
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    .line 226
    :pswitch_5
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->MOVEMENT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    .line 230
    :pswitch_6
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->AUTO_ROTATION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    .line 234
    :pswitch_7
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->TEMPERATURE_HUMIDITY_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    .line 238
    :pswitch_8
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->MOVEMENT_FOR_POSITIONING_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    .line 242
    :pswitch_9
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    .line 246
    :pswitch_a
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->CALL_POSE_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    .line 250
    :pswitch_b
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->SHAKE_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    .line 254
    :pswitch_c
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->FLIP_COVER_ACTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    .line 258
    :pswitch_d
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->GYRO_TEMPERATURE_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 262
    :pswitch_e
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->PUT_DOWN_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 266
    :pswitch_f
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->WAKE_UP_VOICE_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 270
    :pswitch_10
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->BOUNCE_SHORT_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 274
    :pswitch_11
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->BOUNCE_LONG_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 278
    :pswitch_12
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->WRIST_UP_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 282
    :pswitch_13
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->FLAT_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 286
    :pswitch_14
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->MOVEMENT_ALERT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 290
    :pswitch_15
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->TEST_FLAT_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 294
    :pswitch_16
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->TEMPERATURE_ALERT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 298
    :pswitch_17
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->LIFE_LOG_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 302
    :pswitch_18
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 306
    :pswitch_19
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_BATCH_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 310
    :pswitch_1a
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_INTERRUPT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 314
    :pswitch_1b
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->SPECIFIC_POSE_ALERT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 318
    :pswitch_1c
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->SLEEP_MONITOR_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 322
    :pswitch_1d
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_EXTANDED_INTERRUPT_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 326
    :pswitch_1e
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->CAPTURE_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 330
    :pswitch_1f
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->CALL_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 334
    :pswitch_20
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->DOUBLE_TAP_MOTION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 338
    :pswitch_21
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->WIFI_TRANSITION_NOTIFICATION_SERVICE:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto/16 :goto_0

    .line 208
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
    .end packed-switch
.end method

.method public requestToUpdate()V
    .locals 3

    .prologue
    .line 545
    iget v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mServiceNum:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 546
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->REQUEST_PEDOMETER_CURRENT_INFO:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->getContextInfo(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    .line 555
    :cond_0
    :goto_0
    return-void

    .line 548
    :cond_1
    iget v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mServiceNum:I

    const/16 v1, 0x19

    if-ne v0, v1, :cond_2

    .line 549
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->REQUEST_ACTIVITY_TRACKER_CURRENT_INFO:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->getContextInfo(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    .line 551
    :cond_2
    iget v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mServiceNum:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_0

    .line 552
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mCAListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    sget v2, Landroid/hardware/contextaware/ContextAwareManager;->REQUEST_SLEEP_MONITOR_CURRENT_INFO:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/ContextAwareManager;->getContextInfo(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0
.end method

.method public setProperty(ILandroid/os/Bundle;)V
    .locals 9
    .param p1, "service"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 355
    sparse-switch p1, :sswitch_data_0

    .line 535
    :cond_0
    :goto_0
    return-void

    .line 358
    :sswitch_0
    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->STEP_COUNT_ALERT_SERVICE:I

    const/4 v6, 0x7

    const-string v7, "step_cout_alert_step"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    goto :goto_0

    .line 365
    :sswitch_1
    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->AUTO_ROTATION_SERVICE:I

    const/16 v6, 0x8

    const-string v7, "auto_rotation_device_type"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    goto :goto_0

    .line 371
    :sswitch_2
    const-string v4, "environment_sensor_type"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 372
    .local v3, "sensorType":I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 373
    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->TEMPERATURE_HUMIDITY_SERVICE:I

    const/16 v6, 0xd

    const-string v7, "environment_update_interval"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    goto :goto_0

    .line 381
    .end local v3    # "sensorType":I
    :sswitch_3
    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->WAKE_UP_VOICE_SERVICE:I

    const/16 v6, 0x35

    const-string/jumbo v7, "wake_up_voice_mode"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    goto :goto_0

    .line 388
    :sswitch_4
    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->MOVEMENT_FOR_POSITIONING_SERVICE:I

    const/16 v6, 0x9

    const-string v7, "mfp_nomove_duration_thrs"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 392
    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->MOVEMENT_FOR_POSITIONING_SERVICE:I

    const/16 v6, 0xa

    const-string v7, "mfp_move_duration_thrs"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 396
    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->MOVEMENT_FOR_POSITIONING_SERVICE:I

    const/16 v6, 0xb

    const-string v7, "mfp_move_min_duration_thrs"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 400
    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->MOVEMENT_FOR_POSITIONING_SERVICE:I

    const/16 v6, 0xc

    const-string v7, "mfp_move_distance_thrs"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(IID)Z

    goto/16 :goto_0

    .line 407
    :sswitch_5
    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->SHAKE_MOTION_SERVICE:I

    const/16 v6, 0xe

    const-string v7, "shake_motion_strength"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 410
    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->SHAKE_MOTION_SERVICE:I

    const/16 v6, 0xf

    const-string v7, "shake_motion_duration"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    goto/16 :goto_0

    .line 416
    :sswitch_6
    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->TEMPERATURE_ALERT_SERVICE:I

    const/16 v6, 0x14

    const-string v7, "temperature_alert_low_temperature"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 420
    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->TEMPERATURE_ALERT_SERVICE:I

    const/16 v6, 0x15

    const-string v7, "temperature_alert_high_temperature"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 424
    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->TEMPERATURE_ALERT_SERVICE:I

    const/16 v6, 0x16

    const-string v7, "temperature_alert_is_including"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(IIZ)Z

    goto/16 :goto_0

    .line 431
    :sswitch_7
    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->LIFE_LOG_SERVICE:I

    const/16 v6, 0x1c

    const-string v7, "activity_location_logging_stop_period"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 434
    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->LIFE_LOG_SERVICE:I

    const/16 v6, 0x1d

    const-string v7, "activity_location_logging_wait_period"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 437
    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->LIFE_LOG_SERVICE:I

    const/16 v6, 0x1e

    const-string v7, "activity_location_logging_statying radius"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 440
    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->LIFE_LOG_SERVICE:I

    const/16 v6, 0x1f

    const-string v7, "activity_location_logging_area_radius"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 443
    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->LIFE_LOG_SERVICE:I

    const/16 v6, 0x20

    const-string v7, "activity_location_logging_lpp_resolution"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    goto/16 :goto_0

    .line 449
    :sswitch_8
    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->SPECIFIC_POSE_ALERT_SERVICE:I

    const/16 v6, 0x21

    const-string v7, "specific_pose_alert_retention_time"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 453
    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->SPECIFIC_POSE_ALERT_SERVICE:I

    const/16 v6, 0x22

    const-string v7, "specific_pose_alert_minimum_angle"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 457
    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->SPECIFIC_POSE_ALERT_SERVICE:I

    const/16 v6, 0x23

    const-string v7, "specific_pose_alert_maximum_angle"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 461
    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->SPECIFIC_POSE_ALERT_SERVICE:I

    const/16 v6, 0x24

    const-string v7, "specific_pose_alert_moving_thrs"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    goto/16 :goto_0

    .line 468
    :sswitch_9
    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->SLEEP_MONITOR_SERVICE:I

    const/16 v6, 0x2a

    const-string v7, "sleep_monitor_sensibility"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 471
    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->SLEEP_MONITOR_SERVICE:I

    const/16 v6, 0x2b

    const-string v7, "sleep_monitor_sampling_interval"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    goto/16 :goto_0

    .line 477
    :sswitch_a
    const-string v4, "activity_notification_ex_activity_filter"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 479
    .local v0, "ex_actions":[I
    const-string v4, "activity_notification_ex_time_duration"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 482
    .local v1, "ex_duration":I
    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_EXTANDED_INTERRUPT_SERVICE:I

    const/16 v6, 0x27

    invoke-virtual {v4, v5, v6, v1}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 487
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, v0

    if-ge v2, v4, :cond_0

    .line 488
    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_EXTANDED_INTERRUPT_SERVICE:I

    const/16 v6, 0x26

    aget v7, v0, v2

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 487
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 497
    .end local v0    # "ex_actions":[I
    .end local v1    # "ex_duration":I
    .end local v2    # "i":I
    :sswitch_b
    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->CAPTURE_MOTION_SERVICE:I

    const/16 v6, 0x2f

    const-string v7, "capture_motion_tilt_minimum_angle"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 500
    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->CAPTURE_MOTION_SERVICE:I

    const/16 v6, 0x30

    const-string v7, "capture_motion_tilt_maximum_angle"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 503
    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->CAPTURE_MOTION_SERVICE:I

    const/16 v6, 0x31

    const-string v7, "capture_motion_orientation_minimum_angle"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 506
    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->CAPTURE_MOTION_SERVICE:I

    const/16 v6, 0x32

    const-string v7, "capture_motion_orientation_maximum_angle"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 509
    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->CAPTURE_MOTION_SERVICE:I

    const/16 v6, 0x33

    const-string v7, "capture_motion_in_sampling_num"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 512
    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->CAPTURE_MOTION_SERVICE:I

    const/16 v6, 0x34

    const-string v7, "capture_motion_out_sampling_num"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    goto/16 :goto_0

    .line 518
    :sswitch_c
    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->WIFI_TRANSITION_NOTIFICATION_SERVICE:I

    const/16 v6, 0x36

    const-string/jumbo v7, "wifi_transition_notification_id_list"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(II[I)Z

    .line 521
    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->WIFI_TRANSITION_NOTIFICATION_SERVICE:I

    const/16 v6, 0x37

    const-string/jumbo v7, "wifi_transition_notification_db_list_count"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(II[I)Z

    .line 524
    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->WIFI_TRANSITION_NOTIFICATION_SERVICE:I

    const/16 v6, 0x38

    const-string/jumbo v7, "wifi_transition_notification_db_list"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(II[I)Z

    .line 527
    iget-object v4, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mContextAwareManager:Landroid/hardware/contextaware/ContextAwareManager;

    sget v5, Landroid/hardware/contextaware/ContextAwareManager;->WIFI_TRANSITION_NOTIFICATION_SERVICE:I

    const/16 v6, 0x39

    const-string/jumbo v7, "wifi_transition_notification_period"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(III)Z

    goto/16 :goto_0

    .line 355
    nop

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x6 -> :sswitch_1
        0x8 -> :sswitch_2
        0x9 -> :sswitch_4
        0xc -> :sswitch_5
        0x10 -> :sswitch_3
        0x17 -> :sswitch_6
        0x18 -> :sswitch_7
        0x1c -> :sswitch_8
        0x1d -> :sswitch_9
        0x1e -> :sswitch_a
        0x1f -> :sswitch_b
        0x22 -> :sswitch_c
    .end sparse-switch
.end method

.method public setReferenceData(I[B)Z
    .locals 1
    .param p1, "data_type"    # I
    .param p2, "data"    # [B

    .prologue
    .line 605
    const/4 v0, 0x0

    return v0
.end method
