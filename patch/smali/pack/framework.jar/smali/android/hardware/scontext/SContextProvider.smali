.class public Landroid/hardware/scontext/SContextProvider;
.super Ljava/lang/Object;
.source "SContextProvider.java"


# static fields
.field private static final FEATURE_SCONTEXT_LITE:I = 0x2

.field private static final FEATURE_SENSORHUB:I = 0x1

.field private static final FEATURE_UNKNOWN:I = 0x0

.field private static final PEDOMETER_VENDOR_ADSP:I = 0x3

.field private static final PEDOMETER_VENDOR_INVENSENSE:I = 0x2

.field private static final PEDOMETER_VENDOR_SENSORHUB:I = 0x1

.field private static final PEDOMETER_VENDOR_UNKNOWN:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEventListener:Landroid/hardware/scontext/provider/EventListener;

.field private mFeature:I

.field private mPedometerVendor:I

.field mProvider:Landroid/hardware/scontext/provider/Provider;

.field private final mServiceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/HashMap;Landroid/hardware/scontext/provider/EventListener;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "eventListener"    # Landroid/hardware/scontext/provider/EventListener;
    .param p4, "version"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/hardware/scontext/provider/EventListener;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p2, "availableServiceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/scontext/SContextProvider;->mProvider:Landroid/hardware/scontext/provider/Provider;

    .line 51
    iput v2, p0, Landroid/hardware/scontext/SContextProvider;->mFeature:I

    .line 53
    iput v2, p0, Landroid/hardware/scontext/SContextProvider;->mPedometerVendor:I

    .line 66
    iput-object p1, p0, Landroid/hardware/scontext/SContextProvider;->mContext:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Landroid/hardware/scontext/SContextProvider;->mServiceMap:Ljava/util/HashMap;

    .line 68
    iput-object p3, p0, Landroid/hardware/scontext/SContextProvider;->mEventListener:Landroid/hardware/scontext/provider/EventListener;

    .line 69
    iget-object v1, p0, Landroid/hardware/scontext/SContextProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 70
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "com.sec.feature.sensorhub"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    iput v3, p0, Landroid/hardware/scontext/SContextProvider;->mFeature:I

    .line 72
    iput v3, p0, Landroid/hardware/scontext/SContextProvider;->mPedometerVendor:I

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    const-string v1, "com.sec.feature.scontext_lite"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    iput v4, p0, Landroid/hardware/scontext/SContextProvider;->mFeature:I

    .line 75
    packed-switch p4, :pswitch_data_0

    .line 83
    iput v2, p0, Landroid/hardware/scontext/SContextProvider;->mPedometerVendor:I

    goto :goto_0

    .line 77
    :pswitch_0
    iput v4, p0, Landroid/hardware/scontext/SContextProvider;->mPedometerVendor:I

    goto :goto_0

    .line 80
    :pswitch_1
    const/4 v1, 0x3

    iput v1, p0, Landroid/hardware/scontext/SContextProvider;->mPedometerVendor:I

    goto :goto_0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method getProvider(I)Landroid/hardware/scontext/provider/Provider;
    .locals 5
    .param p1, "service"    # I

    .prologue
    .line 96
    iget-object v1, p0, Landroid/hardware/scontext/SContextProvider;->mServiceMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/hardware/scontext/SContextProvider;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 97
    :cond_0
    const/4 v1, 0x0

    .line 137
    :goto_0
    return-object v1

    .line 99
    :cond_1
    iget v1, p0, Landroid/hardware/scontext/SContextProvider;->mFeature:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 100
    sparse-switch p1, :sswitch_data_0

    .line 124
    new-instance v1, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    iget-object v2, p0, Landroid/hardware/scontext/SContextProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/hardware/scontext/SContextProvider;->mEventListener:Landroid/hardware/scontext/provider/EventListener;

    invoke-direct {v1, v2, p1, v3}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;-><init>(Landroid/content/Context;ILandroid/hardware/scontext/provider/EventListener;)V

    iput-object v1, p0, Landroid/hardware/scontext/SContextProvider;->mProvider:Landroid/hardware/scontext/provider/Provider;

    .line 137
    :cond_2
    :goto_1
    iget-object v1, p0, Landroid/hardware/scontext/SContextProvider;->mProvider:Landroid/hardware/scontext/provider/Provider;

    goto :goto_0

    .line 102
    :sswitch_0
    new-instance v1, Landroid/hardware/scontext/provider/caeprovider/EnvironmentImpl;

    iget-object v2, p0, Landroid/hardware/scontext/SContextProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/hardware/scontext/SContextProvider;->mEventListener:Landroid/hardware/scontext/provider/EventListener;

    invoke-direct {v1, v2, p1, v3}, Landroid/hardware/scontext/provider/caeprovider/EnvironmentImpl;-><init>(Landroid/content/Context;ILandroid/hardware/scontext/provider/EventListener;)V

    iput-object v1, p0, Landroid/hardware/scontext/SContextProvider;->mProvider:Landroid/hardware/scontext/provider/Provider;

    goto :goto_1

    .line 106
    :sswitch_1
    new-instance v1, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;

    iget-object v2, p0, Landroid/hardware/scontext/SContextProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/hardware/scontext/SContextProvider;->mEventListener:Landroid/hardware/scontext/provider/EventListener;

    invoke-direct {v1, v2, v3}, Landroid/hardware/scontext/provider/caeprovider/PedometerImpl;-><init>(Landroid/content/Context;Landroid/hardware/scontext/provider/EventListener;)V

    iput-object v1, p0, Landroid/hardware/scontext/SContextProvider;->mProvider:Landroid/hardware/scontext/provider/Provider;

    goto :goto_1

    .line 111
    :sswitch_2
    iget-object v1, p0, Landroid/hardware/scontext/SContextProvider;->mServiceMap:Ljava/util/HashMap;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 112
    .local v0, "featureLevel":I
    new-instance v1, Landroid/hardware/scontext/provider/sensorhubprovider/AirMotionImpl;

    iget-object v2, p0, Landroid/hardware/scontext/SContextProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/hardware/scontext/SContextProvider;->mEventListener:Landroid/hardware/scontext/provider/EventListener;

    invoke-direct {v1, v2, v3, v0}, Landroid/hardware/scontext/provider/sensorhubprovider/AirMotionImpl;-><init>(Landroid/content/Context;Landroid/hardware/scontext/provider/EventListener;I)V

    iput-object v1, p0, Landroid/hardware/scontext/SContextProvider;->mProvider:Landroid/hardware/scontext/provider/Provider;

    goto :goto_1

    .line 116
    .end local v0    # "featureLevel":I
    :sswitch_3
    new-instance v1, Landroid/hardware/scontext/provider/caeprovider/WakeUpVoiceImpl;

    iget-object v2, p0, Landroid/hardware/scontext/SContextProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/hardware/scontext/SContextProvider;->mEventListener:Landroid/hardware/scontext/provider/EventListener;

    invoke-direct {v1, v2, p1, v3}, Landroid/hardware/scontext/provider/caeprovider/WakeUpVoiceImpl;-><init>(Landroid/content/Context;ILandroid/hardware/scontext/provider/EventListener;)V

    iput-object v1, p0, Landroid/hardware/scontext/SContextProvider;->mProvider:Landroid/hardware/scontext/provider/Provider;

    goto :goto_1

    .line 120
    :sswitch_4
    new-instance v1, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;

    iget-object v2, p0, Landroid/hardware/scontext/SContextProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/hardware/scontext/SContextProvider;->mEventListener:Landroid/hardware/scontext/provider/EventListener;

    invoke-direct {v1, v2, v3}, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;-><init>(Landroid/content/Context;Landroid/hardware/scontext/provider/EventListener;)V

    iput-object v1, p0, Landroid/hardware/scontext/SContextProvider;->mProvider:Landroid/hardware/scontext/provider/Provider;

    goto :goto_1

    .line 127
    :cond_3
    iget v1, p0, Landroid/hardware/scontext/SContextProvider;->mFeature:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 128
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 130
    :pswitch_0
    new-instance v1, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;

    iget-object v2, p0, Landroid/hardware/scontext/SContextProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/hardware/scontext/SContextProvider;->mEventListener:Landroid/hardware/scontext/provider/EventListener;

    iget v4, p0, Landroid/hardware/scontext/SContextProvider;->mPedometerVendor:I

    invoke-direct {v1, v2, v3, v4}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;-><init>(Landroid/content/Context;Landroid/hardware/scontext/provider/EventListener;I)V

    iput-object v1, p0, Landroid/hardware/scontext/SContextProvider;->mProvider:Landroid/hardware/scontext/provider/Provider;

    goto :goto_1

    .line 100
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x7 -> :sswitch_2
        0x8 -> :sswitch_0
        0x10 -> :sswitch_3
        0x1b -> :sswitch_4
    .end sparse-switch

    .line 128
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
