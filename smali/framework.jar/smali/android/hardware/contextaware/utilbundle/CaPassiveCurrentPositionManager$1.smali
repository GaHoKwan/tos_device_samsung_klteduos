.class Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$1;
.super Ljava/lang/Object;
.source "CaPassiveCurrentPositionManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;


# direct methods
.method constructor <init>(Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$1;->this$0:Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 18
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 136
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CaCurrentUtcTimeManager;->getInstance()Landroid/hardware/contextaware/utilbundle/CaCurrentUtcTimeManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/contextaware/utilbundle/CaCurrentUtcTimeManager;->getUtcTime()[I

    move-result-object v17

    .line 142
    .local v17, "utcTime":[I
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    .line 143
    .local v5, "latitude":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    .line 144
    .local v7, "longitude":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v9

    .line 145
    .local v9, "altitude":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeed()F

    move-result v13

    .line 146
    .local v13, "speed":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v14

    .line 147
    .local v14, "accuracy":F
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$1;->this$0:Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    # getter for: Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mPrePosition:Landroid/hardware/contextaware/utilbundle/PositionContextBean;
    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->access$000(Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;)Landroid/hardware/contextaware/utilbundle/PositionContextBean;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->getLatitude()D

    move-result-wide v1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$1;->this$0:Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    # getter for: Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mPrePosition:Landroid/hardware/contextaware/utilbundle/PositionContextBean;
    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->access$000(Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;)Landroid/hardware/contextaware/utilbundle/PositionContextBean;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->getLongitude()D

    move-result-wide v3

    invoke-static/range {v1 .. v8}, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->calculationDistance(DDDD)D

    move-result-wide v11

    .line 150
    .local v11, "distance":D
    const/16 v16, 0x1

    .line 152
    .local v16, "type":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Lat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v5, v6}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Lon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v7, v8}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Acc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v14}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 157
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$1;->this$0:Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    # getter for: Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsInfo:Landroid/hardware/contextaware/utilbundle/PositionContextBean;
    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->access$200(Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;)Landroid/hardware/contextaware/utilbundle/PositionContextBean;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$1;->this$0:Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    # getter for: Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mSatelliteCount:I
    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->access$100(Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;)I

    move-result v15

    move-object/from16 v4, v17

    invoke-virtual/range {v2 .. v15}, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->setPosition(I[IDDDDFFI)V

    .line 159
    const/high16 v1, 0x42400000    # 48.0f

    cmpg-float v1, v14, v1

    if-gtz v1, :cond_0

    .line 160
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$1;->this$0:Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$1;->this$0:Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    # getter for: Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsInfo:Landroid/hardware/contextaware/utilbundle/PositionContextBean;
    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->access$200(Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;)Landroid/hardware/contextaware/utilbundle/PositionContextBean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->notifyPassiveCurrentPositionObserver(Landroid/hardware/contextaware/utilbundle/PositionContextBean;)V

    goto/16 :goto_0
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 166
    const-string v0, "Location service is disabled"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 130
    const-string v0, "Location service is enabled"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 172
    return-void
.end method
