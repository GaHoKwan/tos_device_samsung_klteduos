.class Lcom/android/server/ServerThread;
.super Ljava/lang/Object;
.source "SystemServer.java"


# static fields
.field private static final DIR_ENCRYPTION:Z

.field public static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field public static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final is3LMAllowed:Z

.field private static final is3LMPowerSavingEnabled:Z


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 217
    const-string v0, "ro.sec.fle.encryption"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ServerThread;->DIR_ENCRYPTION:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createServiceWithConstructor(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1, "serviceClassName"    # Ljava/lang/String;
    .param p2, "ptype"    # [Ljava/lang/Class;
    .param p3, "objArray"    # [Ljava/lang/Object;

    .prologue
    .line 2171
    const/4 v5, 0x0

    .line 2172
    .local v5, "object":Ljava/lang/Object;
    const-string v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "registerService service: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2174
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2175
    .local v0, "c":Ljava/lang/Class;
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 2176
    .local v1, "cons":Ljava/lang/reflect/Constructor;
    invoke-virtual {v1, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v5

    .line 2184
    .end local v0    # "c":Ljava/lang/Class;
    .end local v1    # "cons":Ljava/lang/reflect/Constructor;
    .end local v5    # "object":Ljava/lang/Object;
    :goto_0
    return-object v5

    .line 2177
    .restart local v5    # "object":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 2178
    .local v3, "iae":Ljava/lang/IllegalAccessException;
    const-string v6, "SystemServer"

    const-string v7, "Got expected PackageAccess complaint"

    invoke-static {v6, v7, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2179
    .end local v3    # "iae":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v4

    .line 2180
    .local v4, "ie":Ljava/lang/InstantiationError;
    const-string v6, "SystemServer"

    const-string v7, "Got expected InstantationError"

    invoke-static {v6, v7, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2181
    .end local v4    # "ie":Ljava/lang/InstantiationError;
    :catch_2
    move-exception v2

    .line 2182
    .local v2, "ex":Ljava/lang/Exception;
    const-string v6, "SystemServer"

    const-string v7, "Got unexpected MaybeAbstract failure"

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static final startEmergencyModeService(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2162
    :try_start_0
    invoke-static {p0}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v1

    .line 2163
    .local v1, "emMgr":Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-virtual {v1}, Lcom/sec/android/emergencymode/EmergencyManager;->readyEmergencyMode()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2168
    .end local v1    # "emMgr":Lcom/sec/android/emergencymode/EmergencyManager;
    :goto_0
    return-void

    .line 2164
    :catch_0
    move-exception v0

    .line 2165
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SystemServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting emergency service failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static final startFingerprintService(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2145
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.feature.fingerprint_manager_service"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2147
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2148
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.fingerprint.service"

    const-string v4, "com.samsung.android.fingerprint.service.FingerprintServiceStarter"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2151
    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2157
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 2153
    :catch_0
    move-exception v0

    .line 2154
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SystemServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting fingerprint service failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2137
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2138
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2141
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 2142
    return-void
.end method


# virtual methods
.method public initAndLoop()V
    .locals 236

    .prologue
    .line 225
    const-string v7, "SystemServer"

    const-string v9, "!@Boot: Start initAndLoop"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const/16 v7, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-static {v7, v9, v10}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 229
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 232
    const/16 v7, -0x13

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 238
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 239
    const/4 v7, 0x0

    invoke-static {v7}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 243
    const-string/jumbo v7, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v197

    .line 245
    .local v197, "shutdownAction":Ljava/lang/String;
    if-eqz v197, :cond_0

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 246
    const/4 v7, 0x0

    move-object/from16 v0, v197

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x31

    if-ne v7, v9, :cond_1

    const/16 v188, 0x1

    .line 249
    .local v188, "reboot":Z
    :goto_0
    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v9, 0x1

    if-le v7, v9, :cond_2

    .line 250
    const/4 v7, 0x1

    invoke-virtual/range {v197 .. v197}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v197

    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v187

    .line 255
    .local v187, "reason":Ljava/lang/String;
    :goto_1
    move/from16 v0, v188

    move-object/from16 v1, v187

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 259
    .end local v187    # "reason":Ljava/lang/String;
    .end local v188    # "reboot":Z
    :cond_0
    const-string v7, "ro.factorytest"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v132

    .line 260
    .local v132, "factoryTestStr":Ljava/lang/String;
    const-string v7, ""

    move-object/from16 v0, v132

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v131, 0x0

    .line 262
    .local v131, "factoryTest":I
    :goto_2
    const-string v7, "1"

    const-string v9, "ro.config.headless"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    .line 264
    .local v33, "headless":Z
    const/16 v143, 0x0

    .line 265
    .local v143, "installer":Lcom/android/server/pm/Installer;
    const/16 v70, 0x0

    .line 266
    .local v70, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    const/16 v102, 0x0

    .line 267
    .local v102, "contentService":Lcom/android/server/content/ContentService;
    const/16 v148, 0x0

    .line 268
    .local v148, "lights":Lcom/android/server/LightsService;
    const/4 v4, 0x0

    .line 269
    .local v4, "power":Lcom/android/server/power/PowerManagerService;
    const/16 v120, 0x0

    .line 270
    .local v120, "display":Lcom/android/server/display/DisplayManagerService;
    const/16 v81, 0x0

    .line 271
    .local v81, "battery":Lcom/android/server/BatteryService;
    const/16 v224, 0x0

    .line 272
    .local v224, "vibrator":Lcom/android/server/VibratorService;
    const/16 v72, 0x0

    .line 273
    .local v72, "alarm":Lcom/android/server/AlarmManagerService;
    const/16 v162, 0x0

    .line 274
    .local v162, "mountService":Lcom/android/server/MountService;
    const/16 v30, 0x0

    .line 275
    .local v30, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/16 v29, 0x0

    .line 276
    .local v29, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v169, 0x0

    .line 277
    .local v169, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v94, 0x0

    .line 278
    .local v94, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v90, 0x0

    .line 279
    .local v90, "cneObj":Ljava/lang/Object;
    const/16 v232, 0x0

    .line 280
    .local v232, "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    const/16 v229, 0x0

    .line 283
    .local v229, "wifi":Lcom/android/server/wifi/WifiService;
    const/16 v121, 0x0

    .line 286
    .local v121, "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    const/16 v231, 0x0

    .line 288
    .local v231, "wifiOffloadService":Lcom/android/server/WifiOffloadService;
    const/16 v196, 0x0

    .line 289
    .local v196, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v179, 0x0

    .line 290
    .local v179, "pm":Landroid/content/pm/IPackageManager;
    const/4 v5, 0x0

    .line 291
    .local v5, "context":Landroid/content/Context;
    const/16 v234, 0x0

    .line 292
    .local v234, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v82, 0x0

    .line 293
    .local v82, "bluetooth":Lcom/android/server/BluetoothManagerService;
    const/16 v123, 0x0

    .line 294
    .local v123, "dock":Lcom/android/server/DockObserver;
    const/16 v221, 0x0

    .line 295
    .local v221, "usb":Lcom/android/server/usb/UsbService;
    const/16 v194, 0x0

    .line 296
    .local v194, "serial":Lcom/android/server/SerialService;
    const/16 v217, 0x0

    .line 297
    .local v217, "twilight":Lcom/android/server/TwilightService;
    const/16 v219, 0x0

    .line 298
    .local v219, "uiMode":Lcom/android/server/UiModeManagerService;
    const/16 v189, 0x0

    .line 299
    .local v189, "recognition":Lcom/android/server/RecognitionManagerService;
    const/16 v171, 0x0

    .line 300
    .local v171, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v91, 0x0

    .line 301
    .local v91, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/16 v142, 0x0

    .line 302
    .local v142, "inputManager":Lcom/android/server/input/InputManagerService;
    const/16 v204, 0x0

    .line 303
    .local v204, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/16 v166, 0x0

    .line 304
    .local v166, "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    const/16 v98, 0x0

    .line 306
    .local v98, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v107, 0x0

    .line 308
    .local v107, "dEncService":Lcom/android/server/DirEncryptService;
    const/16 v153, 0x0

    .line 310
    .local v153, "mHMS":Lcom/android/server/HarmonyEASService;
    const/16 v109, 0x0

    .line 311
    .local v109, "deviceManager":Lcom/android/server/DeviceManager3LMService;
    const/16 v181, 0x0

    .line 315
    .local v181, "powerSaving":Lcom/android/server/PowerSaving3LMService;
    const/16 v185, 0x0

    .line 317
    .local v185, "rcpManagerService":Lcom/android/server/RCPManagerService;
    const/16 v178, 0x0

    .line 321
    .local v178, "personaService":Lcom/android/server/pm/PersonaManagerService;
    const/16 v100, 0x0

    .line 322
    .local v100, "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    const-string v7, "1"

    const-string v9, "ro.config.knox"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v62

    .line 326
    .local v62, "knoxV1Enabled":Z
    const/16 v209, 0x0

    .line 327
    .local v209, "timaService":Lcom/android/server/TimaService;
    const/16 v207, 0x0

    .line 330
    .local v207, "timaObserver":Lcom/android/server/TimaObserver;
    const/16 v164, 0x0

    .line 334
    .local v164, "msapwifi":Lcom/android/server/MsapWifiService;
    :try_start_0
    invoke-static {}, Lcom/android/server/ServiceKeeper;->authorizeLoadProcedure()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :goto_3
    new-instance v235, Landroid/os/HandlerThread;

    const-string v7, "WindowManager"

    move-object/from16 v0, v235

    invoke-direct {v0, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 342
    .local v235, "wmHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual/range {v235 .. v235}, Landroid/os/HandlerThread;->start()V

    .line 343
    new-instance v21, Landroid/os/Handler;

    invoke-virtual/range {v235 .. v235}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-direct {v0, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 344
    .local v21, "wmHandler":Landroid/os/Handler;
    new-instance v7, Lcom/android/server/ServerThread$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 361
    const/16 v24, 0x0

    .line 362
    .local v24, "onlyCore":Z
    const/16 v134, 0x0

    .line 367
    .local v134, "firstBoot":Z
    :try_start_1
    const-string v7, "SystemServer"

    const-string v9, "Waiting for installd to be ready."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    new-instance v144, Lcom/android/server/pm/Installer;

    invoke-direct/range {v144 .. v144}, Lcom/android/server/pm/Installer;-><init>()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 369
    .end local v143    # "installer":Lcom/android/server/pm/Installer;
    .local v144, "installer":Lcom/android/server/pm/Installer;
    :try_start_2
    invoke-virtual/range {v144 .. v144}, Lcom/android/server/pm/Installer;->ping()Z

    .line 371
    const-string v7, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    new-instance v180, Lcom/android/server/power/PowerManagerService;

    invoke-direct/range {v180 .. v180}, Lcom/android/server/power/PowerManagerService;-><init>()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_8e

    .line 373
    .end local v4    # "power":Lcom/android/server/power/PowerManagerService;
    .local v180, "power":Lcom/android/server/power/PowerManagerService;
    :try_start_3
    const-string v7, "power"

    move-object/from16 v0, v180

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 395
    const-string v7, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-static/range {v131 .. v131}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_8f

    move-result-object v5

    move-object/from16 v4, v180

    .end local v180    # "power":Lcom/android/server/power/PowerManagerService;
    .restart local v4    # "power":Lcom/android/server/power/PowerManagerService;
    move-object/from16 v143, v144

    .line 402
    .end local v144    # "installer":Lcom/android/server/pm/Installer;
    .restart local v143    # "installer":Lcom/android/server/pm/Installer;
    :goto_4
    const-string v7, "config.disable_storage"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v117

    .line 403
    .local v117, "disableStorage":Z
    const-string v7, "config.disable_media"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v114

    .line 404
    .local v114, "disableMedia":Z
    const-string v7, "config.disable_bluetooth"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v112

    .line 405
    .local v112, "disableBluetooth":Z
    const-string v7, "config.disable_telephony"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v119

    .line 406
    .local v119, "disableTelephony":Z
    const-string v7, "config.disable_location"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v113

    .line 407
    .local v113, "disableLocation":Z
    const-string v7, "config.disable_systemui"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v118

    .line 408
    .local v118, "disableSystemUI":Z
    const-string v7, "config.disable_noncore"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v116

    .line 409
    .local v116, "disableNonCoreServices":Z
    const-string v7, "config.disable_network"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v115

    .line 412
    .local v115, "disableNetwork":Z
    :try_start_4
    const-string v7, "SystemServer"

    const-string v9, "Display Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    new-instance v11, Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, v21

    invoke-direct {v11, v5, v0}, Lcom/android/server/display/DisplayManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_7d

    .line 414
    .end local v120    # "display":Lcom/android/server/display/DisplayManagerService;
    .local v11, "display":Lcom/android/server/display/DisplayManagerService;
    :try_start_5
    const-string v7, "display"

    const/4 v9, 0x1

    invoke-static {v7, v11, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 416
    const-string v7, "SystemServer"

    const-string v9, "Telephony Registry"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->isMultiSimSlot()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 419
    const/16 v198, 0x0

    .local v198, "simSlotNum":I
    :goto_5
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v7

    move/from16 v0, v198

    if-ge v0, v7, :cond_5

    .line 420
    const-string/jumbo v7, "telephony.registry"

    move/from16 v0, v198

    invoke-static {v7, v0}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Lcom/android/server/TelephonyRegistry;

    move/from16 v0, v198

    invoke-direct {v9, v5, v0}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;I)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3

    .line 419
    add-int/lit8 v198, v198, 0x1

    goto :goto_5

    .line 246
    .end local v4    # "power":Lcom/android/server/power/PowerManagerService;
    .end local v5    # "context":Landroid/content/Context;
    .end local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v21    # "wmHandler":Landroid/os/Handler;
    .end local v24    # "onlyCore":Z
    .end local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .end local v30    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v33    # "headless":Z
    .end local v62    # "knoxV1Enabled":Z
    .end local v70    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v81    # "battery":Lcom/android/server/BatteryService;
    .end local v82    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .end local v90    # "cneObj":Ljava/lang/Object;
    .end local v91    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .end local v94    # "connectivity":Lcom/android/server/ConnectivityService;
    .end local v98    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v100    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    .end local v102    # "contentService":Lcom/android/server/content/ContentService;
    .end local v107    # "dEncService":Lcom/android/server/DirEncryptService;
    .end local v109    # "deviceManager":Lcom/android/server/DeviceManager3LMService;
    .end local v112    # "disableBluetooth":Z
    .end local v113    # "disableLocation":Z
    .end local v114    # "disableMedia":Z
    .end local v115    # "disableNetwork":Z
    .end local v116    # "disableNonCoreServices":Z
    .end local v117    # "disableStorage":Z
    .end local v118    # "disableSystemUI":Z
    .end local v119    # "disableTelephony":Z
    .end local v121    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .end local v123    # "dock":Lcom/android/server/DockObserver;
    .end local v131    # "factoryTest":I
    .end local v132    # "factoryTestStr":Ljava/lang/String;
    .end local v134    # "firstBoot":Z
    .end local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v143    # "installer":Lcom/android/server/pm/Installer;
    .end local v148    # "lights":Lcom/android/server/LightsService;
    .end local v153    # "mHMS":Lcom/android/server/HarmonyEASService;
    .end local v162    # "mountService":Lcom/android/server/MountService;
    .end local v164    # "msapwifi":Lcom/android/server/MsapWifiService;
    .end local v166    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .end local v169    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v171    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .end local v178    # "personaService":Lcom/android/server/pm/PersonaManagerService;
    .end local v179    # "pm":Landroid/content/pm/IPackageManager;
    .end local v181    # "powerSaving":Lcom/android/server/PowerSaving3LMService;
    .end local v185    # "rcpManagerService":Lcom/android/server/RCPManagerService;
    .end local v189    # "recognition":Lcom/android/server/RecognitionManagerService;
    .end local v194    # "serial":Lcom/android/server/SerialService;
    .end local v196    # "serviceDiscovery":Lcom/android/server/NsdService;
    .end local v198    # "simSlotNum":I
    .end local v204    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v207    # "timaObserver":Lcom/android/server/TimaObserver;
    .end local v209    # "timaService":Lcom/android/server/TimaService;
    .end local v217    # "twilight":Lcom/android/server/TwilightService;
    .end local v219    # "uiMode":Lcom/android/server/UiModeManagerService;
    .end local v221    # "usb":Lcom/android/server/usb/UsbService;
    .end local v224    # "vibrator":Lcom/android/server/VibratorService;
    .end local v229    # "wifi":Lcom/android/server/wifi/WifiService;
    .end local v231    # "wifiOffloadService":Lcom/android/server/WifiOffloadService;
    .end local v232    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .end local v234    # "wm":Lcom/android/server/wm/WindowManagerService;
    .end local v235    # "wmHandlerThread":Landroid/os/HandlerThread;
    :cond_1
    const/16 v188, 0x0

    goto/16 :goto_0

    .line 252
    .restart local v188    # "reboot":Z
    :cond_2
    const/16 v187, 0x0

    .restart local v187    # "reason":Ljava/lang/String;
    goto/16 :goto_1

    .line 260
    .end local v187    # "reason":Ljava/lang/String;
    .end local v188    # "reboot":Z
    .restart local v132    # "factoryTestStr":Ljava/lang/String;
    :cond_3
    invoke-static/range {v132 .. v132}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v131

    goto/16 :goto_2

    .line 335
    .restart local v4    # "power":Lcom/android/server/power/PowerManagerService;
    .restart local v5    # "context":Landroid/content/Context;
    .restart local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v30    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v33    # "headless":Z
    .restart local v62    # "knoxV1Enabled":Z
    .restart local v70    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v81    # "battery":Lcom/android/server/BatteryService;
    .restart local v82    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v90    # "cneObj":Ljava/lang/Object;
    .restart local v91    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v94    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v98    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v100    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    .restart local v102    # "contentService":Lcom/android/server/content/ContentService;
    .restart local v107    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v109    # "deviceManager":Lcom/android/server/DeviceManager3LMService;
    .restart local v120    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v121    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .restart local v123    # "dock":Lcom/android/server/DockObserver;
    .restart local v131    # "factoryTest":I
    .restart local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v143    # "installer":Lcom/android/server/pm/Installer;
    .restart local v148    # "lights":Lcom/android/server/LightsService;
    .restart local v153    # "mHMS":Lcom/android/server/HarmonyEASService;
    .restart local v162    # "mountService":Lcom/android/server/MountService;
    .restart local v164    # "msapwifi":Lcom/android/server/MsapWifiService;
    .restart local v166    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .restart local v169    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v171    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v178    # "personaService":Lcom/android/server/pm/PersonaManagerService;
    .restart local v179    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v181    # "powerSaving":Lcom/android/server/PowerSaving3LMService;
    .restart local v185    # "rcpManagerService":Lcom/android/server/RCPManagerService;
    .restart local v189    # "recognition":Lcom/android/server/RecognitionManagerService;
    .restart local v194    # "serial":Lcom/android/server/SerialService;
    .restart local v196    # "serviceDiscovery":Lcom/android/server/NsdService;
    .restart local v204    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v207    # "timaObserver":Lcom/android/server/TimaObserver;
    .restart local v209    # "timaService":Lcom/android/server/TimaService;
    .restart local v217    # "twilight":Lcom/android/server/TwilightService;
    .restart local v219    # "uiMode":Lcom/android/server/UiModeManagerService;
    .restart local v221    # "usb":Lcom/android/server/usb/UsbService;
    .restart local v224    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v229    # "wifi":Lcom/android/server/wifi/WifiService;
    .restart local v231    # "wifiOffloadService":Lcom/android/server/WifiOffloadService;
    .restart local v232    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v234    # "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_0
    move-exception v127

    .line 336
    .local v127, "e":Ljava/lang/Exception;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting ServiceKeeper"

    move-object/from16 v0, v127

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 397
    .end local v127    # "e":Ljava/lang/Exception;
    .restart local v21    # "wmHandler":Landroid/os/Handler;
    .restart local v24    # "onlyCore":Z
    .restart local v134    # "firstBoot":Z
    .restart local v235    # "wmHandlerThread":Landroid/os/HandlerThread;
    :catch_1
    move-exception v127

    .line 398
    .local v127, "e":Ljava/lang/RuntimeException;
    :goto_6
    const-string v7, "System"

    const-string v9, "******************************************"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const-string v7, "System"

    const-string v9, "************ Failure starting bootstrap service"

    move-object/from16 v0, v127

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 423
    .end local v120    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v127    # "e":Ljava/lang/RuntimeException;
    .restart local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v112    # "disableBluetooth":Z
    .restart local v113    # "disableLocation":Z
    .restart local v114    # "disableMedia":Z
    .restart local v115    # "disableNetwork":Z
    .restart local v116    # "disableNonCoreServices":Z
    .restart local v117    # "disableStorage":Z
    .restart local v118    # "disableSystemUI":Z
    .restart local v119    # "disableTelephony":Z
    :cond_4
    :try_start_6
    new-instance v205, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v205

    invoke-direct {v0, v5}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_3

    .line 424
    .end local v204    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v205, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_7
    const-string/jumbo v7, "telephony.registry"

    move-object/from16 v0, v205

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_7e

    move-object/from16 v204, v205

    .line 428
    .end local v205    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v204    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :cond_5
    :try_start_8
    const-string v7, "Blueberry"

    const-string v9, "Combination"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 429
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 430
    const-string v7, "SystemServer"

    const-string v9, "MSimTelephony Registry"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    new-instance v167, Lcom/android/server/MSimTelephonyRegistry;

    move-object/from16 v0, v167

    invoke-direct {v0, v5}, Lcom/android/server/MSimTelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_3

    .line 432
    .end local v166    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .local v167, "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    :try_start_9
    const-string/jumbo v7, "telephony.msim.registry"

    move-object/from16 v0, v167

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_7f

    move-object/from16 v166, v167

    .line 436
    .end local v167    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .restart local v166    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    :cond_6
    :try_start_a
    const-string v7, "SystemServer"

    const-string v9, "Scheduling Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    const-string v7, "scheduling_policy"

    new-instance v9, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v9}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 439
    invoke-static {v5}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 441
    invoke-virtual {v11}, Lcom/android/server/display/DisplayManagerService;->waitForDefaultDisplay()Z

    move-result v7

    if-nez v7, :cond_7

    .line 442
    const-string v7, "Timeout waiting for default display to be initialized."

    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 446
    :cond_7
    const-string v7, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const-string/jumbo v7, "vold.decrypt"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    .line 449
    .local v106, "cryptState":Ljava/lang/String;
    const-string/jumbo v7, "trigger_restart_min_framework"

    move-object/from16 v0, v106

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_48

    .line 450
    const-string v7, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const/16 v24, 0x1

    .line 458
    :cond_8
    :goto_7
    const-string v7, "1"

    const-string v9, "ro.config.tima"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_3

    move-result v206

    .line 459
    .local v206, "timaEnabled":Z
    if-eqz v206, :cond_9

    .line 461
    :try_start_b
    const-string v7, "SystemServer"

    const-string v9, "TIMA Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    new-instance v210, Lcom/android/server/TimaService;

    move-object/from16 v0, v210

    invoke-direct {v0, v5}, Lcom/android/server/TimaService;-><init>(Landroid/content/Context;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_3

    .line 463
    .end local v209    # "timaService":Lcom/android/server/TimaService;
    .local v210, "timaService":Lcom/android/server/TimaService;
    :try_start_c
    const-string/jumbo v7, "tima"

    move-object/from16 v0, v210

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_8d
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_80

    move-object/from16 v209, v210

    .line 469
    .end local v210    # "timaService":Lcom/android/server/TimaService;
    .restart local v209    # "timaService":Lcom/android/server/TimaService;
    :goto_8
    :try_start_d
    const-string v7, "SystemServer"

    const-string v9, "TIMA Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    new-instance v208, Lcom/android/server/TimaObserver;

    move-object/from16 v0, v208

    invoke-direct {v0, v5}, Lcom/android/server/TimaObserver;-><init>(Landroid/content/Context;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_3

    .end local v207    # "timaObserver":Lcom/android/server/TimaObserver;
    .local v208, "timaObserver":Lcom/android/server/TimaObserver;
    move-object/from16 v207, v208

    .line 478
    .end local v208    # "timaObserver":Lcom/android/server/TimaObserver;
    .restart local v207    # "timaObserver":Lcom/android/server/TimaObserver;
    :goto_9
    :try_start_e
    const-string v7, "3.0"

    const-string v9, "ro.config.timaversion"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v211

    .line 479
    .local v211, "timaversion":Z
    if-eqz v211, :cond_9

    .line 480
    const-string v7, "com.sec.tima.TimaKeyStoreProvider"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v146

    .line 482
    .local v146, "keyStoreClass":Ljava/lang/Class;
    invoke-virtual/range {v146 .. v146}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/Provider;

    invoke-static {v7}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 483
    const-string v7, "SystemServer"

    const-string v9, "Added TimaKesytore provider"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_3

    .line 492
    .end local v146    # "keyStoreClass":Ljava/lang/Class;
    .end local v211    # "timaversion":Z
    :cond_9
    :goto_a
    :try_start_f
    const-string v7, "SystemServer"

    const-string v9, "!@Boot: Start PackageManagerService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    if-eqz v131, :cond_49

    const/4 v7, 0x1

    :goto_b
    move-object/from16 v0, v143

    move/from16 v1, v24

    invoke-static {v5, v0, v7, v1}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Landroid/content/pm/IPackageManager;

    move-result-object v179

    .line 496
    const-string v7, "SystemServer"

    const-string v9, "!@Boot: End PackageManagerService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_3

    .line 498
    :try_start_10
    invoke-interface/range {v179 .. v179}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_61
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_3

    move-result v134

    .line 502
    :goto_c
    :try_start_11
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 504
    const-string v7, "SystemServer"

    const-string v9, "Entropy Mixer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    const-string v7, "entropy"

    new-instance v9, Lcom/android/server/EntropyMixer;

    invoke-direct {v9, v5}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 507
    const-string v7, "SystemServer"

    const-string v9, "User Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    const-string/jumbo v7, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 512
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v147

    .line 513
    .local v147, "knoxVerInfo":Landroid/os/Bundle;
    const-string v7, "2.0"

    const-string/jumbo v9, "version"

    move-object/from16 v0, v147

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    const-string v7, "1.0"

    const-string/jumbo v9, "version"

    move-object/from16 v0, v147

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_3

    move-result v7

    if-eqz v7, :cond_b

    .line 515
    :cond_a
    :try_start_12
    const-string v7, "SystemServer"

    const-string v9, "SEAMS"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    const-string v7, "SEAMService"

    new-instance v9, Lcom/android/server/SEAMService;

    invoke-direct {v9, v5}, Lcom/android/server/SEAMService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_3

    .line 524
    :cond_b
    :goto_d
    :try_start_13
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v223

    .line 525
    .local v223, "versionInfo":Landroid/os/Bundle;
    const-string v7, "2.0"

    const-string/jumbo v9, "version"

    move-object/from16 v0, v223

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 526
    const-string v7, "SystemServer"

    const-string v9, "Persona Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->getInstance()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v178

    .line 528
    const-string v7, "persona"

    move-object/from16 v0, v178

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 531
    :cond_c
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_3

    .line 536
    :try_start_14
    const-string v7, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    new-instance v71, Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, v71

    invoke-direct {v0, v5}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_3

    .line 538
    .end local v70    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v71, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :try_start_15
    const-string v7, "account"

    move-object/from16 v0, v71

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_8c
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_81

    move-object/from16 v70, v71

    .line 544
    .end local v71    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v70    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :goto_e
    :try_start_16
    const-string v7, "KTT"

    const-string v9, "CMCC"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_3

    move-result v7

    if-nez v7, :cond_d

    .line 547
    :try_start_17
    const-string v7, "SystemServer"

    const-string v9, "KT UCA Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    const-string v7, "ktuca"

    new-instance v9, Landroid/ktuca/KtUcaService;

    invoke-direct {v9, v5}, Landroid/ktuca/KtUcaService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_3

    .line 555
    :cond_d
    :goto_f
    :try_start_18
    const-string v7, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const/4 v7, 0x1

    move/from16 v0, v131

    if-ne v0, v7, :cond_4a

    const/4 v7, 0x1

    :goto_10
    invoke-static {v5, v7}, Lcom/android/server/content/ContentService;->main(Landroid/content/Context;Z)Lcom/android/server/content/ContentService;

    move-result-object v102

    .line 561
    new-instance v108, Lcom/android/server/DirEncryptService;

    move-object/from16 v0, v108

    invoke-direct {v0, v5}, Lcom/android/server/DirEncryptService;-><init>(Landroid/content/Context;)V
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_3

    .line 563
    .end local v107    # "dEncService":Lcom/android/server/DirEncryptService;
    .local v108, "dEncService":Lcom/android/server/DirEncryptService;
    :try_start_19
    sget-boolean v7, Lcom/android/server/ServerThread;->DIR_ENCRYPTION:Z

    if-eqz v7, :cond_e

    .line 564
    const-string v7, "DirEncryptService"

    move-object/from16 v0, v108

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_82

    :cond_e
    move-object/from16 v107, v108

    .line 573
    .end local v108    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v107    # "dEncService":Lcom/android/server/DirEncryptService;
    :goto_11
    if-eqz v62, :cond_f

    .line 575
    :try_start_1a
    const-string v7, "SystemServer"

    const-string v9, "Enterprise Container Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    new-instance v101, Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v0, v101

    invoke-direct {v0, v5}, Lcom/sec/knox/container/EnterpriseContainerService;-><init>(Landroid/content/Context;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_3

    .line 577
    .end local v100    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    .local v101, "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    :try_start_1b
    const-string v7, "container_service"

    move-object/from16 v0, v101

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 579
    const-string v7, "SystemServer"

    const-string v9, "Container Service service created..."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_8b
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1b} :catch_83

    move-object/from16 v100, v101

    .line 588
    .end local v101    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    .restart local v100    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    :cond_f
    :goto_12
    :try_start_1c
    const-string v7, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 591
    const-string v7, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    new-instance v6, Lcom/android/server/LightsService;

    invoke-direct {v6, v5}, Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1c} :catch_3

    .line 594
    .end local v148    # "lights":Lcom/android/server/LightsService;
    .local v6, "lights":Lcom/android/server/LightsService;
    :try_start_1d
    const-string v7, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    new-instance v8, Lcom/android/server/BatteryService;

    invoke-direct {v8, v5, v6}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_1d
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_1d} :catch_84

    .line 596
    .end local v81    # "battery":Lcom/android/server/BatteryService;
    .local v8, "battery":Lcom/android/server/BatteryService;
    :try_start_1e
    const-string v7, "battery"

    invoke-static {v7, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 600
    const-string v7, "SystemServer"

    const-string v9, "TactileAssist Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    new-instance v203, Lcom/android/server/TactileAssistService;

    move-object/from16 v0, v203

    invoke-direct {v0, v5}, Lcom/android/server/TactileAssistService;-><init>(Landroid/content/Context;)V

    .line 602
    .local v203, "tactileAssist":Lcom/android/server/TactileAssistService;
    const-string/jumbo v7, "tactileassist"

    move-object/from16 v0, v203

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 606
    const-string v7, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    new-instance v225, Lcom/android/server/VibratorService;

    move-object/from16 v0, v225

    invoke-direct {v0, v5}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_1e
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_1e} :catch_85

    .line 608
    .end local v224    # "vibrator":Lcom/android/server/VibratorService;
    .local v225, "vibrator":Lcom/android/server/VibratorService;
    :try_start_1f
    const-string/jumbo v7, "vibrator"

    move-object/from16 v0, v225

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 612
    const-string v7, "SystemServer"

    const-string v9, "Tw ToolBox Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    new-instance v212, Lcom/samsung/android/toolbox/TwToolBoxService;

    move-object/from16 v0, v212

    invoke-direct {v0, v5}, Lcom/samsung/android/toolbox/TwToolBoxService;-><init>(Landroid/content/Context;)V

    .line 614
    .local v212, "toolbox":Lcom/samsung/android/toolbox/TwToolBoxService;
    const-string/jumbo v7, "tw_toolbox"

    move-object/from16 v0, v212

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 619
    const-string v7, "SystemServer"

    const-string v9, "SSRM Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_1f} :catch_c

    .line 621
    :try_start_20
    new-instance v85, Ldalvik/system/PathClassLoader;

    const-string v7, "/system/framework/ssrm.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    move-object/from16 v0, v85

    invoke-direct {v0, v7, v9}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 622
    .local v85, "cfmsClassLoader":Ldalvik/system/PathClassLoader;
    const-string v7, "com.android.server.ssrm.CustomFrequencyManagerService"

    move-object/from16 v0, v85

    invoke-virtual {v0, v7}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v84

    .line 623
    .local v84, "cfmsClass":Ljava/lang/Class;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v7, v9

    const/4 v9, 0x1

    const-class v10, Landroid/app/IActivityManager;

    aput-object v10, v7, v9

    move-object/from16 v0, v84

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v86

    .line 624
    .local v86, "cfmsConstructor":Ljava/lang/reflect/Constructor;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v7, v9

    const/4 v9, 0x1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    aput-object v10, v7, v9

    move-object/from16 v0, v86

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v199

    check-cast v199, Landroid/os/IBinder;

    .line 625
    .local v199, "ssrmService":Landroid/os/IBinder;
    const-string v7, "CustomFrequencyManagerService"

    move-object/from16 v0, v199

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_20} :catch_c

    .line 635
    .end local v84    # "cfmsClass":Ljava/lang/Class;
    .end local v85    # "cfmsClassLoader":Ldalvik/system/PathClassLoader;
    .end local v86    # "cfmsConstructor":Ljava/lang/reflect/Constructor;
    .end local v199    # "ssrmService":Landroid/os/IBinder;
    :goto_13
    :try_start_21
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "screen_mode_automatic_setting"

    const/4 v10, 0x0

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    const/4 v9, 0x1

    if-ne v7, v9, :cond_4b

    const/16 v79, 0x1

    .line 636
    .local v79, "autoMode":Z
    :goto_14
    if-eqz v79, :cond_4c

    .line 637
    const/16 v193, 0x4

    .line 641
    .local v193, "screenMode":I
    :goto_15
    invoke-static/range {v193 .. v193}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    .line 642
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUIMode(I)Z

    .line 644
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1110081

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 646
    const-string v7, "SystemServer"

    const-string v9, "Adaptive Display Color Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    new-instance v122, Lcom/android/server/AdaptiveDisplayColorService;

    move-object/from16 v0, v122

    invoke-direct {v0, v5}, Lcom/android/server/AdaptiveDisplayColorService;-><init>(Landroid/content/Context;)V

    .end local v121    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .local v122, "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    move-object/from16 v121, v122

    .line 651
    .end local v122    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .restart local v121    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    :cond_10
    const-string v7, "SystemServer"

    const-string v9, "Consumer IR Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    new-instance v99, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v99

    invoke-direct {v0, v5}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_21
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_21} :catch_c

    .line 653
    .end local v98    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v99, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_22
    const-string v7, "consumer_ir"

    move-object/from16 v0, v99

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "SystemServer"

    const-string v9, "Theme Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    const-string v7, "ThemeService"

    new-instance v9, Lcom/android/server/ThemeManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/ThemeManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 657
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v10

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/power/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/BatteryService;Lcom/android/internal/app/IBatteryStats;Lcom/android/internal/app/IAppOpsService;Lcom/android/server/display/DisplayManagerService;)V

    .line 661
    const-string v7, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    new-instance v16, Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_22
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_22} :catch_86

    .line 663
    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .local v16, "alarm":Lcom/android/server/AlarmManagerService;
    :try_start_23
    const-string v7, "alarm"

    move-object/from16 v0, v16

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 665
    const-string v7, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v17

    move-object v13, v5

    move-object v14, v8

    move-object v15, v4

    invoke-virtual/range {v12 .. v17}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/power/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 668
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v7

    const-string v9, "WindowManager thread"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0, v9}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;Ljava/lang/String;)V

    .line 670
    const-string v7, "SystemServer"

    const-string v9, "Input Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    new-instance v20, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_23
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_23} :catch_87

    .line 673
    .end local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v20, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_24
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v9, "com.sec.feature.sensorhub"

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 674
    const-string v7, "SystemServer"

    const-string v9, "Context Aware Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    const-string v7, "context_aware"

    new-instance v9, Landroid/hardware/contextaware/manager/ContextAwareService;

    invoke-direct {v9, v5}, Landroid/hardware/contextaware/manager/ContextAwareService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 677
    :cond_11
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v9, "com.sec.feature.sensorhub"

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_12

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v9, "com.sec.feature.scontext_lite"

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 679
    :cond_12
    const-string v7, "SystemServer"

    const-string v9, "SContext Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    const-string v7, "scontext"

    new-instance v9, Landroid/hardware/scontext/SContextService;

    invoke-direct {v9, v5}, Landroid/hardware/scontext/SContextService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 683
    :cond_13
    const-string v7, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    const/4 v7, 0x1

    move/from16 v0, v131

    if-eq v0, v7, :cond_4d

    const/16 v22, 0x1

    :goto_16
    if-nez v134, :cond_4e

    const/16 v23, 0x1

    :goto_17
    move-object/from16 v17, v5

    move-object/from16 v18, v4

    move-object/from16 v19, v11

    invoke-static/range {v17 .. v24}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/input/InputManagerService;Landroid/os/Handler;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v234

    .line 687
    const-string/jumbo v7, "window"

    move-object/from16 v0, v234

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 688
    const-string v7, "input"

    move-object/from16 v0, v20

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 690
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    move-object/from16 v0, v234

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 692
    invoke-static {}, Lcom/android/server/am/MultiWindowFacadeService;->self()Lcom/android/server/am/MultiWindowFacadeService;

    move-result-object v7

    move-object/from16 v0, v234

    invoke-virtual {v7, v0}, Lcom/android/server/am/MultiWindowFacadeService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 695
    invoke-virtual/range {v234 .. v234}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 696
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/input/InputManagerService;->start()V

    .line 698
    move-object/from16 v0, v234

    invoke-virtual {v11, v0}, Lcom/android/server/display/DisplayManagerService;->setWindowManager(Lcom/android/server/display/DisplayManagerService$WindowManagerFuncs;)V

    .line 699
    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lcom/android/server/display/DisplayManagerService;->setInputManager(Lcom/android/server/display/DisplayManagerService$InputManagerFuncs;)V

    .line 704
    const-string v7, "ro.kernel.qemu"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "1"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4f

    .line 705
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    :goto_18
    const-string v7, "2.0"

    const-string/jumbo v9, "version"

    move-object/from16 v0, v223

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 727
    const-string v7, "SystemServer"

    const-string v9, "RCP Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_24} :catch_d

    .line 729
    :try_start_25
    new-instance v186, Lcom/android/server/RCPManagerService;

    move-object/from16 v0, v186

    invoke-direct {v0, v5}, Lcom/android/server/RCPManagerService;-><init>(Landroid/content/Context;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_25} :catch_d

    .line 730
    .end local v185    # "rcpManagerService":Lcom/android/server/RCPManagerService;
    .local v186, "rcpManagerService":Lcom/android/server/RCPManagerService;
    :try_start_26
    const-string v7, "rcp"

    move-object/from16 v0, v186

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_8a
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_26} :catch_89

    move-object/from16 v185, v186

    .end local v186    # "rcpManagerService":Lcom/android/server/RCPManagerService;
    .restart local v185    # "rcpManagerService":Lcom/android/server/RCPManagerService;
    :cond_14
    :goto_19
    move-object/from16 v98, v99

    .end local v99    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v98    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v224, v225

    .line 741
    .end local v79    # "autoMode":Z
    .end local v106    # "cryptState":Ljava/lang/String;
    .end local v147    # "knoxVerInfo":Landroid/os/Bundle;
    .end local v193    # "screenMode":I
    .end local v203    # "tactileAssist":Lcom/android/server/TactileAssistService;
    .end local v206    # "timaEnabled":Z
    .end local v212    # "toolbox":Lcom/samsung/android/toolbox/TwToolBoxService;
    .end local v223    # "versionInfo":Landroid/os/Bundle;
    .end local v225    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v224    # "vibrator":Lcom/android/server/VibratorService;
    :goto_1a
    const/16 v110, 0x0

    .line 743
    .local v110, "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    const/16 v129, 0x0

    .line 745
    .local v129, "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    const/16 v201, 0x0

    .line 746
    .local v201, "statusBar":Lcom/android/server/StatusBarManagerService;
    const/16 v140, 0x0

    .line 747
    .local v140, "imm":Lcom/android/server/InputMethodManagerService;
    const/16 v74, 0x0

    .line 748
    .local v74, "appWidget":Lcom/android/server/AppWidgetService;
    const/16 v173, 0x0

    .line 749
    .local v173, "notification":Lcom/android/server/NotificationManagerService;
    const/16 v227, 0x0

    .line 750
    .local v227, "wallpaper":Lcom/android/server/WallpaperManagerService;
    const/16 v149, 0x0

    .line 751
    .local v149, "location":Lcom/android/server/LocationManagerService;
    const/16 v191, 0x0

    .line 752
    .local v191, "sLocation":Landroid/os/IBinder;
    const/16 v103, 0x0

    .line 753
    .local v103, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v215, 0x0

    .line 754
    .local v215, "tsms":Lcom/android/server/TextServicesManagerService;
    const/16 v151, 0x0

    .line 755
    .local v151, "lockSettings":Lcom/android/server/LockSettingsService;
    const/16 v125, 0x0

    .line 757
    .local v125, "dreamy":Lcom/android/server/dreams/DreamManagerService;
    const/16 v213, 0x0

    .line 759
    .local v213, "transcloud":Lcom/android/server/TranscloudMonitorService;
    const/16 v77, 0x0

    .line 760
    .local v77, "atlas":Lcom/android/server/AssetAtlasService;
    const/16 v182, 0x0

    .line 761
    .local v182, "printManager":Lcom/android/server/print/PrintManagerService;
    const/16 v156, 0x0

    .line 764
    .local v156, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    const/4 v7, 0x1

    move/from16 v0, v131

    if-eq v0, v7, :cond_15

    .line 768
    :try_start_27
    const-string v7, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    new-instance v141, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v141

    move-object/from16 v1, v234

    invoke-direct {v0, v5, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_f

    .line 770
    .end local v140    # "imm":Lcom/android/server/InputMethodManagerService;
    .local v141, "imm":Lcom/android/server/InputMethodManagerService;
    :try_start_28
    const-string v7, "input_method"

    move-object/from16 v0, v141

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_7c

    move-object/from16 v140, v141

    .line 776
    .end local v141    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v140    # "imm":Lcom/android/server/InputMethodManagerService;
    :goto_1b
    :try_start_29
    const-string v7, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    const-string v7, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_10

    .line 786
    :cond_15
    :goto_1c
    :try_start_2a
    const-string v7, "SystemServer"

    const-string v9, "Window Manager displayReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    invoke-virtual/range {v234 .. v234}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_11

    .line 793
    :goto_1d
    :try_start_2b
    const-string v7, "SystemServer"

    const-string v9, "Package Manager performBootDexOpt"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    invoke-interface/range {v179 .. v179}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_12

    .line 800
    :goto_1e
    :try_start_2c
    const-string v7, "SystemServer"

    const-string v9, "ActivityManagerNative showBootMessage"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10406ae

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v7, v9, v10}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_2c} :catch_7b

    .line 809
    :goto_1f
    if-eqz v62, :cond_16

    .line 811
    if-eqz v100, :cond_16

    :try_start_2d
    invoke-virtual/range {v100 .. v100}, Lcom/sec/knox/container/EnterpriseContainerService;->preSystemReady()V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_13

    .line 818
    :cond_16
    :goto_20
    const/4 v7, 0x1

    move/from16 v0, v131

    if-eq v0, v7, :cond_57

    .line 820
    :try_start_2e
    const-string v7, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    new-instance v111, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v111

    invoke-direct {v0, v5}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_14

    .line 822
    .end local v110    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .local v111, "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    :try_start_2f
    const-string v7, "device_policy"

    move-object/from16 v0, v111

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_7a

    move-object/from16 v110, v111

    .line 827
    .end local v111    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v110    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    :goto_21
    if-nez v117, :cond_17

    const-string v7, "0"

    const-string/jumbo v9, "system_init.startmountservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_17

    .line 834
    :try_start_30
    const-string v7, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    new-instance v163, Lcom/android/server/MountService;

    move-object/from16 v0, v163

    invoke-direct {v0, v5}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_15

    .line 836
    .end local v162    # "mountService":Lcom/android/server/MountService;
    .local v163, "mountService":Lcom/android/server/MountService;
    :try_start_31
    const-string v7, "mount"

    move-object/from16 v0, v163

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_79

    move-object/from16 v162, v163

    .line 844
    .end local v163    # "mountService":Lcom/android/server/MountService;
    .restart local v162    # "mountService":Lcom/android/server/MountService;
    :cond_17
    :goto_22
    :try_start_32
    const-string v7, "SystemServer"

    const-string v9, "DirEncryptSerrvice"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    if-eqz v107, :cond_18

    .line 846
    const-string v7, "SystemServer"

    const-string v9, "DirEncryptService.SystemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    invoke-virtual/range {v107 .. v107}, Lcom/android/server/DirEncryptService;->systemReady()V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_16

    .line 854
    :cond_18
    :goto_23
    const-string v7, "ro.mds.enable"

    const-string v9, "false"

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v155

    .line 855
    .local v155, "mdsEnable":Ljava/lang/String;
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Intel MDS Service ro.mds.enable = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v155

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    const-string/jumbo v7, "true"

    move-object/from16 v0, v155

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 857
    const/4 v7, 0x2

    new-array v0, v7, [Ljava/lang/Class;

    move-object/from16 v184, v0

    const/4 v7, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v184, v7

    const/4 v7, 0x1

    const-class v9, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    aput-object v9, v184, v7

    .line 859
    .local v184, "ptype":[Ljava/lang/Class;
    const/4 v7, 0x2

    new-array v0, v7, [Ljava/lang/Object;

    move-object/from16 v175, v0

    const/4 v7, 0x0

    aput-object v5, v175, v7

    const/4 v7, 0x1

    aput-object v234, v175, v7

    .line 860
    .local v175, "obj":[Ljava/lang/Object;
    const-string v168, "com.intel.multidisplay.DisplayObserver"

    .line 861
    .local v168, "name":Ljava/lang/String;
    const-string v7, "SystemServer"

    const-string v9, "Intel Display Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    move-object/from16 v0, p0

    move-object/from16 v1, v168

    move-object/from16 v2, v184

    move-object/from16 v3, v175

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServerThread;->createServiceWithConstructor(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    .end local v168    # "name":Ljava/lang/String;
    .end local v175    # "obj":[Ljava/lang/Object;
    .end local v184    # "ptype":[Ljava/lang/Class;
    :cond_19
    if-nez v116, :cond_1b

    .line 867
    :try_start_33
    const-string v7, "SystemServer"

    const-string v9, "LockSettingsService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    new-instance v152, Lcom/android/server/LockSettingsService;

    move-object/from16 v0, v152

    invoke-direct {v0, v5}, Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_17

    .line 869
    .end local v151    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v152, "lockSettings":Lcom/android/server/LockSettingsService;
    :try_start_34
    const-string v7, "lock_settings"

    move-object/from16 v0, v152

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_78

    move-object/from16 v151, v152

    .line 883
    .end local v152    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v151    # "lockSettings":Lcom/android/server/LockSettingsService;
    :goto_24
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v223

    .line 884
    .restart local v223    # "versionInfo":Landroid/os/Bundle;
    const-string v7, "2.0"

    const-string/jumbo v9, "version"

    move-object/from16 v0, v223

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 886
    :try_start_35
    invoke-virtual/range {v178 .. v178}, Lcom/android/server/pm/PersonaManagerService;->preSystemReady()V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_18

    .line 895
    :cond_1a
    :goto_25
    :try_start_36
    const-string v7, "SystemServer"

    const-string v9, "Enterprise Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    new-instance v130, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-object/from16 v0, v179

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    move-object v7, v0

    move-object/from16 v0, v130

    move-object/from16 v1, v110

    invoke-direct {v0, v5, v7, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;-><init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;Landroid/app/admin/IDevicePolicyManager;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_19

    .line 897
    .end local v129    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .local v130, "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :try_start_37
    const-string v7, "enterprise_policy"

    move-object/from16 v0, v130

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 898
    const-string v7, "SystemServer"

    const-string v9, "Enterprise Policymanager service created..."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_77

    move-object/from16 v129, v130

    .line 907
    .end local v130    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v223    # "versionInfo":Landroid/os/Bundle;
    .restart local v129    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :cond_1b
    :goto_26
    :try_start_38
    const-string v7, "SystemServer"

    const-string v9, "HarmonyEAS service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    new-instance v154, Lcom/android/server/HarmonyEASService;

    move-object/from16 v0, v154

    invoke-direct {v0, v5}, Lcom/android/server/HarmonyEASService;-><init>(Landroid/content/Context;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_1a

    .line 909
    .end local v153    # "mHMS":Lcom/android/server/HarmonyEASService;
    .local v154, "mHMS":Lcom/android/server/HarmonyEASService;
    :try_start_39
    const-string v7, "harmony_eas_service"

    move-object/from16 v0, v154

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 910
    const-string v7, "SystemServer"

    const-string v9, "Harmony EAS service created..."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_76

    move-object/from16 v153, v154

    .line 916
    .end local v154    # "mHMS":Lcom/android/server/HarmonyEASService;
    .restart local v153    # "mHMS":Lcom/android/server/HarmonyEASService;
    :goto_27
    if-nez v118, :cond_1c

    .line 918
    :try_start_3a
    const-string v7, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    new-instance v202, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v202

    move-object/from16 v1, v234

    invoke-direct {v0, v5, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_1b

    .line 920
    .end local v201    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .local v202, "statusBar":Lcom/android/server/StatusBarManagerService;
    :try_start_3b
    const-string/jumbo v7, "statusbar"

    move-object/from16 v0, v202

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_75

    move-object/from16 v201, v202

    .line 926
    .end local v202    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v201    # "statusBar":Lcom/android/server/StatusBarManagerService;
    :cond_1c
    :goto_28
    if-nez v116, :cond_1d

    .line 928
    :try_start_3c
    const-string v7, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    const-string v7, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v5}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_1c

    .line 941
    :cond_1d
    :goto_29
    :try_start_3d
    const-string v7, "SystemServer"

    const-string v9, "ClipboardEx Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    const-string v7, "clipboardEx"

    new-instance v9, Lcom/android/server/sec/InternalClipboardExService;

    invoke-direct {v9, v5}, Lcom/android/server/sec/InternalClipboardExService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_1d

    .line 948
    :goto_2a
    if-nez v115, :cond_1e

    .line 950
    :try_start_3e
    const-string v7, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    invoke-static {v5}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v30

    .line 952
    const-string v7, "network_management"

    move-object/from16 v0, v30

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_1e

    .line 958
    :cond_1e
    :goto_2b
    if-nez v116, :cond_1f

    .line 960
    :try_start_3f
    const-string v7, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    new-instance v216, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v216

    invoke-direct {v0, v5}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_1f

    .line 962
    .end local v215    # "tsms":Lcom/android/server/TextServicesManagerService;
    .local v216, "tsms":Lcom/android/server/TextServicesManagerService;
    :try_start_40
    const-string/jumbo v7, "textservices"

    move-object/from16 v0, v216

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_74

    move-object/from16 v215, v216

    .line 968
    .end local v216    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v215    # "tsms":Lcom/android/server/TextServicesManagerService;
    :cond_1f
    :goto_2c
    if-nez v115, :cond_56

    .line 970
    :try_start_41
    const-string v7, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    new-instance v170, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v170

    move-object/from16 v1, v30

    move-object/from16 v2, v16

    invoke-direct {v0, v5, v1, v2}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_20

    .line 972
    .end local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v170, "networkStats":Lcom/android/server/net/NetworkStatsService;
    :try_start_42
    const-string v7, "netstats"

    move-object/from16 v0, v170

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_73

    move-object/from16 v29, v170

    .line 978
    .end local v170    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_2d
    :try_start_43
    const-string v7, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    new-instance v25, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v27

    move-object/from16 v26, v5

    move-object/from16 v28, v4

    invoke-direct/range {v25 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_21

    .line 982
    .end local v169    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v25, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_44
    const-string v7, "netpolicy"

    move-object/from16 v0, v25

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_72

    .line 988
    :goto_2e
    :try_start_45
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    new-instance v233, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v233

    invoke-direct {v0, v5}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_22

    .line 990
    .end local v232    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .local v233, "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    :try_start_46
    const-string/jumbo v7, "wifip2p"

    move-object/from16 v0, v233

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_71

    move-object/from16 v232, v233

    .line 996
    .end local v233    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v232    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    :goto_2f
    :try_start_47
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    new-instance v230, Lcom/android/server/wifi/WifiService;

    move-object/from16 v0, v230

    invoke-direct {v0, v5}, Lcom/android/server/wifi/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_23

    .line 998
    .end local v229    # "wifi":Lcom/android/server/wifi/WifiService;
    .local v230, "wifi":Lcom/android/server/wifi/WifiService;
    :try_start_48
    const-string/jumbo v7, "wifi"

    move-object/from16 v0, v230

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_70

    move-object/from16 v229, v230

    .line 1005
    .end local v230    # "wifi":Lcom/android/server/wifi/WifiService;
    .restart local v229    # "wifi":Lcom/android/server/wifi/WifiService;
    :goto_30
    :try_start_49
    const-string v7, "SystemServer"

    const-string v9, "MSAP Wi-Fi Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    new-instance v165, Lcom/android/server/MsapWifiService;

    move-object/from16 v0, v165

    invoke-direct {v0, v5}, Lcom/android/server/MsapWifiService;-><init>(Landroid/content/Context;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_24

    .line 1007
    .end local v164    # "msapwifi":Lcom/android/server/MsapWifiService;
    .local v165, "msapwifi":Lcom/android/server/MsapWifiService;
    :try_start_4a
    const-string v7, "msapwifi"

    move-object/from16 v0, v165

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_6f

    move-object/from16 v164, v165

    .line 1014
    .end local v165    # "msapwifi":Lcom/android/server/MsapWifiService;
    .restart local v164    # "msapwifi":Lcom/android/server/MsapWifiService;
    :goto_31
    :try_start_4b
    const-string v7, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    new-instance v95, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v95

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    move-object/from16 v3, v25

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_25

    .line 1017
    .end local v94    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v95, "connectivity":Lcom/android/server/ConnectivityService;
    :try_start_4c
    const-string v7, "connectivity"

    move-object/from16 v0, v95

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1018
    move-object/from16 v0, v29

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 1019
    move-object/from16 v0, v25

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 1021
    invoke-virtual/range {v232 .. v232}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V

    .line 1022
    invoke-virtual/range {v229 .. v229}, Lcom/android/server/wifi/WifiService;->checkAndStartWifi()V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_6e

    move-object/from16 v94, v95

    .line 1071
    .end local v95    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v94    # "connectivity":Lcom/android/server/ConnectivityService;
    :goto_32
    :try_start_4d
    const-string v7, "SystemServer"

    const-string v9, "Network Service Discovery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    invoke-static {v5}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v196

    .line 1073
    const-string v7, "servicediscovery"

    move-object/from16 v0, v196

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_26

    .line 1080
    :goto_33
    if-nez v116, :cond_20

    .line 1082
    :try_start_4e
    const-string v7, "SystemServer"

    const-string v9, "UpdateLock Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    const-string/jumbo v7, "updatelock"

    new-instance v9, Lcom/android/server/UpdateLockService;

    invoke-direct {v9, v5}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_27

    .line 1095
    :cond_20
    :goto_34
    if-eqz v162, :cond_21

    if-nez v24, :cond_21

    .line 1097
    const-string/jumbo v7, "vold.decrypt"

    const-string v9, "null"

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "trigger_restart_min_framework"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_21

    .line 1098
    invoke-virtual/range {v162 .. v162}, Lcom/android/server/MountService;->waitForAsecScan()V

    .line 1102
    :cond_21
    if-eqz v70, :cond_22

    .line 1103
    :try_start_4f
    const-string v7, "SystemServer"

    const-string v9, "accountManager systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    invoke-virtual/range {v70 .. v70}, Lcom/android/server/accounts/AccountManagerService;->systemReady()V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_28

    .line 1111
    :cond_22
    :goto_35
    if-eqz v102, :cond_23

    .line 1112
    :try_start_50
    const-string v7, "SystemServer"

    const-string v9, "contentService systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    invoke-virtual/range {v102 .. v102}, Lcom/android/server/content/ContentService;->systemReady()V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_29

    .line 1120
    :cond_23
    :goto_36
    :try_start_51
    const-string v7, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    new-instance v174, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v174

    move-object/from16 v1, v201

    invoke-direct {v0, v5, v1, v6}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_2a

    .line 1122
    .end local v173    # "notification":Lcom/android/server/NotificationManagerService;
    .local v174, "notification":Lcom/android/server/NotificationManagerService;
    :try_start_52
    const-string v7, "notification"

    move-object/from16 v0, v174

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1123
    move-object/from16 v0, v25

    move-object/from16 v1, v174

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_6d

    move-object/from16 v173, v174

    .line 1129
    .end local v174    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v173    # "notification":Lcom/android/server/NotificationManagerService;
    :goto_37
    :try_start_53
    const-string v7, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    const-string v7, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v5}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_53} :catch_2b

    .line 1136
    :goto_38
    if-nez v113, :cond_24

    .line 1138
    :try_start_54
    const-string v7, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    new-instance v150, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v150

    invoke-direct {v0, v5}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_54} :catch_2c

    .line 1140
    .end local v149    # "location":Lcom/android/server/LocationManagerService;
    .local v150, "location":Lcom/android/server/LocationManagerService;
    :try_start_55
    const-string v7, "location"

    move-object/from16 v0, v150

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_55} :catch_6c

    move-object/from16 v149, v150

    .line 1146
    .end local v150    # "location":Lcom/android/server/LocationManagerService;
    .restart local v149    # "location":Lcom/android/server/LocationManagerService;
    :goto_39
    :try_start_56
    const-string v7, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    new-instance v104, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v104

    invoke-direct {v0, v5}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_56} :catch_2d

    .line 1148
    .end local v103    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v104, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_57
    const-string v7, "country_detector"

    move-object/from16 v0, v104

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_57} :catch_6b

    move-object/from16 v103, v104

    .line 1186
    .end local v104    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v103    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :cond_24
    :goto_3a
    :try_start_58
    const-string v7, "SystemServer"

    const-string v9, "SLocation Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    const-string v7, "com.samsung.location.SLocationLoader"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v192

    .line 1188
    .local v192, "sLocationLoader":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v7, "getSLocationService"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v12, Landroid/content/Context;

    aput-object v12, v9, v10

    move-object/from16 v0, v192

    invoke-virtual {v0, v7, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v135

    .line 1189
    .local v135, "getSLocationService":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    move-object/from16 v0, v135

    invoke-virtual {v0, v7, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/os/IBinder;

    move-object/from16 v191, v0

    .line 1190
    const-string v7, "sec_location"

    move-object/from16 v0, v191

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1191
    const-string v7, "SystemServer"

    const-string v9, "Loading SLocationService has been completed."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_58} :catch_2e

    .line 1196
    .end local v135    # "getSLocationService":Ljava/lang/reflect/Method;
    .end local v192    # "sLocationLoader":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_3b
    if-nez v116, :cond_25

    .line 1198
    :try_start_59
    const-string v7, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    const-string v7, "search"

    new-instance v9, Lcom/android/server/search/SearchManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_59} :catch_2f

    .line 1207
    :cond_25
    :goto_3c
    :try_start_5a
    const-string v7, "com.sec.feature.spell_manager_service"

    move-object/from16 v0, v179

    invoke-interface {v0, v7}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_53

    .line 1208
    const-string v7, "SystemServer"

    const-string v9, "Spell Manager Service starting..."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    const-string/jumbo v7, "spell"

    new-instance v9, Landroid/server/spell/SpellManagerService;

    invoke-direct {v9, v5}, Landroid/server/spell/SpellManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5a} :catch_30

    .line 1219
    :goto_3d
    :try_start_5b
    const-string v7, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    const-string v7, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v10, Ljava/io/File;

    const-string v12, "/data/system/dropbox"

    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v5, v10}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_5b} :catch_31

    .line 1226
    :goto_3e
    if-nez v116, :cond_26

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1110034

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_26

    .line 1229
    :try_start_5c
    const-string v7, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    if-nez v33, :cond_26

    .line 1231
    new-instance v228, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v228

    invoke-direct {v0, v5}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5c} :catch_32

    .line 1232
    .end local v227    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .local v228, "wallpaper":Lcom/android/server/WallpaperManagerService;
    :try_start_5d
    const-string/jumbo v7, "wallpaper"

    move-object/from16 v0, v228

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_5d} :catch_6a

    move-object/from16 v227, v228

    .line 1239
    .end local v228    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v227    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :cond_26
    :goto_3f
    if-nez v114, :cond_27

    const-string v7, "0"

    const-string/jumbo v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_27

    .line 1241
    :try_start_5e
    const-string v7, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    const-string v7, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v5}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_5e} :catch_33

    .line 1247
    :cond_27
    :goto_40
    if-nez v116, :cond_28

    .line 1249
    :try_start_5f
    const-string v7, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    new-instance v124, Lcom/android/server/DockObserver;

    move-object/from16 v0, v124

    invoke-direct {v0, v5}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;)V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_5f} :catch_34

    .end local v123    # "dock":Lcom/android/server/DockObserver;
    .local v124, "dock":Lcom/android/server/DockObserver;
    move-object/from16 v123, v124

    .line 1257
    .end local v124    # "dock":Lcom/android/server/DockObserver;
    .restart local v123    # "dock":Lcom/android/server/DockObserver;
    :cond_28
    :goto_41
    if-nez v114, :cond_29

    .line 1259
    :try_start_60
    const-string v7, "SystemServer"

    const-string v9, "Wired Accessory Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    new-instance v7, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v20

    invoke-direct {v7, v5, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_60} :catch_35

    .line 1268
    :cond_29
    :goto_42
    if-nez v116, :cond_2a

    .line 1270
    :try_start_61
    const-string v7, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    new-instance v222, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v222

    invoke-direct {v0, v5}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_61} :catch_36

    .line 1273
    .end local v221    # "usb":Lcom/android/server/usb/UsbService;
    .local v222, "usb":Lcom/android/server/usb/UsbService;
    :try_start_62
    const-string/jumbo v7, "usb"

    move-object/from16 v0, v222

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_62} :catch_69

    move-object/from16 v221, v222

    .line 1279
    .end local v222    # "usb":Lcom/android/server/usb/UsbService;
    .restart local v221    # "usb":Lcom/android/server/usb/UsbService;
    :goto_43
    :try_start_63
    const-string v7, "SystemServer"

    const-string v9, "Serial Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    new-instance v195, Lcom/android/server/SerialService;

    move-object/from16 v0, v195

    invoke-direct {v0, v5}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_63} :catch_37

    .line 1282
    .end local v194    # "serial":Lcom/android/server/SerialService;
    .local v195, "serial":Lcom/android/server/SerialService;
    :try_start_64
    const-string v7, "serial"

    move-object/from16 v0, v195

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_64} :catch_68

    move-object/from16 v194, v195

    .line 1289
    .end local v195    # "serial":Lcom/android/server/SerialService;
    .restart local v194    # "serial":Lcom/android/server/SerialService;
    :cond_2a
    :goto_44
    :try_start_65
    const-string v7, "SystemServer"

    const-string v9, "Twilight Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    new-instance v218, Lcom/android/server/TwilightService;

    move-object/from16 v0, v218

    invoke-direct {v0, v5}, Lcom/android/server/TwilightService;-><init>(Landroid/content/Context;)V
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_65} :catch_38

    .end local v217    # "twilight":Lcom/android/server/TwilightService;
    .local v218, "twilight":Lcom/android/server/TwilightService;
    move-object/from16 v217, v218

    .line 1296
    .end local v218    # "twilight":Lcom/android/server/TwilightService;
    .restart local v217    # "twilight":Lcom/android/server/TwilightService;
    :goto_45
    :try_start_66
    const-string v7, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    new-instance v220, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v220

    move-object/from16 v1, v217

    invoke-direct {v0, v5, v1}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;Lcom/android/server/TwilightService;)V
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_66} :catch_39

    .end local v219    # "uiMode":Lcom/android/server/UiModeManagerService;
    .local v220, "uiMode":Lcom/android/server/UiModeManagerService;
    move-object/from16 v219, v220

    .line 1304
    .end local v220    # "uiMode":Lcom/android/server/UiModeManagerService;
    .restart local v219    # "uiMode":Lcom/android/server/UiModeManagerService;
    :goto_46
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v9, "CscFeature_Common_EnableSUA"

    invoke-virtual {v7, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2b

    .line 1307
    :try_start_67
    const-string v7, "SystemServer"

    const-string v9, "KiesUsb Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    const-string v7, "kiesusb"

    new-instance v9, Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-direct {v9, v5}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_67} :catch_3a

    .line 1315
    :cond_2b
    :goto_47
    if-nez v116, :cond_2c

    .line 1317
    :try_start_68
    const-string v7, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    const-string v7, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_68} :catch_3b

    .line 1325
    :goto_48
    :try_start_69
    const-string v7, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    new-instance v75, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v75

    invoke-direct {v0, v5}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_69} :catch_3c

    .line 1327
    .end local v74    # "appWidget":Lcom/android/server/AppWidgetService;
    .local v75, "appWidget":Lcom/android/server/AppWidgetService;
    :try_start_6a
    const-string v7, "appwidget"

    move-object/from16 v0, v75

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_6a .. :try_end_6a} :catch_67

    move-object/from16 v74, v75

    .line 1333
    .end local v75    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v74    # "appWidget":Lcom/android/server/AppWidgetService;
    :goto_49
    :try_start_6b
    const-string v7, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    new-instance v190, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v190

    invoke-direct {v0, v5}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_6b .. :try_end_6b} :catch_3d

    .end local v189    # "recognition":Lcom/android/server/RecognitionManagerService;
    .local v190, "recognition":Lcom/android/server/RecognitionManagerService;
    move-object/from16 v189, v190

    .line 1339
    .end local v190    # "recognition":Lcom/android/server/RecognitionManagerService;
    .restart local v189    # "recognition":Lcom/android/server/RecognitionManagerService;
    :cond_2c
    :goto_4a
    const-string v7, "ro.SecEDS.enable"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v69

    .line 1341
    .local v69, "SecEDSEnable":Ljava/lang/String;
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SecEDS Service ro.tvout.enable = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v69

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    const-string v7, "false"

    move-object/from16 v0, v69

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2d

    .line 1349
    :try_start_6c
    const-string v7, "SystemServer"

    const-string v9, "Starting SecEDSEnable Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    const/16 v128, 0x0

    .line 1353
    .local v128, "edsclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v7, "com.android.server.SecExternalDisplayService"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v128

    .line 1355
    if-nez v128, :cond_54

    .line 1357
    const-string v7, "SystemServer"

    const-string v9, "eds Service not exist"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_6c} :catch_3e

    .line 1384
    .end local v128    # "edsclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2d
    :goto_4b
    :try_start_6d
    const-string v7, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    const-string v7, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v5}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_6d} :catch_3f

    .line 1402
    :goto_4c
    :try_start_6e
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v176

    .line 1403
    .local v176, "pM":Landroid/content/pm/PackageManager;
    if-eqz v176, :cond_31

    .line 1404
    const-string v7, "SystemServer"

    const-string v9, "PackageManager is not null!!"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    const/16 v145, 0x0

    .line 1406
    .local v145, "isAddService":Z
    const-string v7, "com.sec.feature.multiwindow"

    move-object/from16 v0, v176

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 1407
    const/16 v145, 0x1

    .line 1409
    :cond_2e
    const-string v7, "com.sec.feature.spen_usp"

    move-object/from16 v0, v176

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v7

    const/4 v9, 0x2

    if-lt v7, v9, :cond_2f

    .line 1410
    const/16 v145, 0x1

    .line 1412
    :cond_2f
    const-string v7, "com.sec.feature.spen_usp"

    move-object/from16 v0, v176

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v7

    const/4 v9, 0x1

    if-ne v7, v9, :cond_30

    .line 1413
    const/16 v145, 0x0

    .line 1415
    :cond_30
    if-eqz v145, :cond_31

    .line 1416
    const-string v7, "SystemServer"

    const-string v9, "SpenGestureManagerService enable"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    const-string/jumbo v7, "spengestureservice"

    new-instance v9, Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v0, v234

    invoke-direct {v9, v5, v0}, Lcom/android/server/smartclip/SpenGestureManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_6e} :catch_40

    .line 1426
    .end local v145    # "isAddService":Z
    .end local v176    # "pM":Landroid/content/pm/PackageManager;
    :cond_31
    :goto_4d
    :try_start_6f
    const-string v7, "SystemServer"

    const-string v9, "Palm Motion Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    const-string v7, "palmmotionservice"

    new-instance v9, Lcom/android/server/palmMotion/PalmMotionService;

    move-object/from16 v0, v20

    invoke-direct {v9, v5, v0}, Lcom/android/server/palmMotion/PalmMotionService;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_6f} :catch_41

    .line 1444
    :goto_4e
    :try_start_70
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v176

    .line 1445
    .restart local v176    # "pM":Landroid/content/pm/PackageManager;
    if-eqz v176, :cond_32

    .line 1446
    const-string v7, "com.sec.feature.cocktailbar"

    move-object/from16 v0, v176

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_32

    .line 1447
    const-string v7, "SystemServer"

    const-string v9, "CocktailBar Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    const-string v7, "CocktailBarService"

    new-instance v9, Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/cocktailbar/CocktailBarManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_70} :catch_42

    .line 1460
    .end local v176    # "pM":Landroid/content/pm/PackageManager;
    :cond_32
    :goto_4f
    :try_start_71
    const-string v7, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    const-string v7, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v5}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_71 .. :try_end_71} :catch_43

    .line 1467
    :goto_50
    if-nez v115, :cond_33

    .line 1469
    :try_start_72
    const-string v7, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    new-instance v172, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v172

    invoke-direct {v0, v5}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_72 .. :try_end_72} :catch_44

    .end local v171    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v172, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v171, v172

    .line 1502
    .end local v172    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v171    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :cond_33
    :goto_51
    if-nez v114, :cond_34

    .line 1504
    :try_start_73
    const-string v7, "SystemServer"

    const-string v9, "CommonTimeManagementService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    new-instance v92, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v92

    invoke-direct {v0, v5}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_73 .. :try_end_73} :catch_45

    .line 1506
    .end local v91    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v92, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_74
    const-string v7, "commontime_management"

    move-object/from16 v0, v92

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_74 .. :try_end_74} :catch_66

    move-object/from16 v91, v92

    .line 1512
    .end local v92    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v91    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :cond_34
    :goto_52
    if-nez v115, :cond_35

    .line 1514
    :try_start_75
    const-string v7, "SystemServer"

    const-string v9, "CertBlacklister"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    new-instance v7, Lcom/android/server/CertBlacklister;

    invoke-direct {v7, v5}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_75 .. :try_end_75} :catch_46

    .line 1521
    :cond_35
    :goto_53
    if-nez v116, :cond_36

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x111004f

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_36

    .line 1524
    :try_start_76
    const-string v7, "SystemServer"

    const-string v9, "Dreams Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    new-instance v126, Lcom/android/server/dreams/DreamManagerService;

    move-object/from16 v0, v126

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/dreams/DreamManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_76
    .catch Ljava/lang/Throwable; {:try_start_76 .. :try_end_76} :catch_47

    .line 1527
    .end local v125    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .local v126, "dreamy":Lcom/android/server/dreams/DreamManagerService;
    :try_start_77
    const-string v7, "dreams"

    move-object/from16 v0, v126

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_77 .. :try_end_77} :catch_65

    move-object/from16 v125, v126

    .line 1535
    .end local v126    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v125    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    :cond_36
    :goto_54
    :try_start_78
    const-string v7, "SystemServer"

    const-string v9, "Transcloud Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    new-instance v214, Lcom/android/server/TranscloudMonitorService;

    move-object/from16 v0, v214

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/TranscloudMonitorService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_78
    .catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_78} :catch_48

    .end local v213    # "transcloud":Lcom/android/server/TranscloudMonitorService;
    .local v214, "transcloud":Lcom/android/server/TranscloudMonitorService;
    move-object/from16 v213, v214

    .line 1542
    .end local v214    # "transcloud":Lcom/android/server/TranscloudMonitorService;
    .restart local v213    # "transcloud":Lcom/android/server/TranscloudMonitorService;
    :goto_55
    if-nez v116, :cond_37

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v7

    if-nez v7, :cond_37

    .line 1544
    :try_start_79
    const-string v7, "SystemServer"

    const-string v9, "Assets Atlas Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    new-instance v78, Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, v78

    invoke-direct {v0, v5}, Lcom/android/server/AssetAtlasService;-><init>(Landroid/content/Context;)V
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_79 .. :try_end_79} :catch_49

    .line 1546
    .end local v77    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v78, "atlas":Lcom/android/server/AssetAtlasService;
    :try_start_7a
    const-string v7, "assetatlas"

    move-object/from16 v0, v78

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7a
    .catch Ljava/lang/Throwable; {:try_start_7a .. :try_end_7a} :catch_64

    move-object/from16 v77, v78

    .line 1553
    .end local v78    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v77    # "atlas":Lcom/android/server/AssetAtlasService;
    :cond_37
    :goto_56
    :try_start_7b
    const-string v7, "SystemServer"

    const-string v9, "IdleMaintenanceService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    new-instance v7, Lcom/android/server/IdleMaintenanceService;

    invoke-direct {v7, v5, v8}, Lcom/android/server/IdleMaintenanceService;-><init>(Landroid/content/Context;Lcom/android/server/BatteryService;)V
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_7b .. :try_end_7b} :catch_4a

    .line 1561
    :goto_57
    const-string v7, "SystemServer"

    const-string v9, "SEC_PRODUCT_FEATURE_ABSOLUTE_ENABLE=FALSE - true"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    :try_start_7c
    const-string v7, "SystemServer"

    const-string v9, "Absolute Persistence Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    const-string v7, "ABTPersistenceService"

    new-instance v9, Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-direct {v9, v5}, Lcom/absolute/android/persistservice/ABTPersistenceService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7c
    .catch Ljava/lang/Throwable; {:try_start_7c .. :try_end_7c} :catch_4b

    .line 1573
    :goto_58
    :try_start_7d
    const-string v7, "SystemServer"

    const-string v9, "Print Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    new-instance v183, Lcom/android/server/print/PrintManagerService;

    move-object/from16 v0, v183

    invoke-direct {v0, v5}, Lcom/android/server/print/PrintManagerService;-><init>(Landroid/content/Context;)V
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_7d .. :try_end_7d} :catch_4c

    .line 1575
    .end local v182    # "printManager":Lcom/android/server/print/PrintManagerService;
    .local v183, "printManager":Lcom/android/server/print/PrintManagerService;
    :try_start_7e
    const-string v7, "print"

    move-object/from16 v0, v183

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7e
    .catch Ljava/lang/Throwable; {:try_start_7e .. :try_end_7e} :catch_63

    move-object/from16 v182, v183

    .line 1580
    .end local v183    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v182    # "printManager":Lcom/android/server/print/PrintManagerService;
    :goto_59
    if-nez v116, :cond_38

    .line 1582
    :try_start_7f
    const-string v7, "SystemServer"

    const-string v9, "Media Router Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    new-instance v157, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v157

    invoke-direct {v0, v5}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_7f
    .catch Ljava/lang/Throwable; {:try_start_7f .. :try_end_7f} :catch_4d

    .line 1584
    .end local v156    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v157, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_80
    const-string v7, "media_router"

    move-object/from16 v0, v157

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_80
    .catch Ljava/lang/Throwable; {:try_start_80 .. :try_end_80} :catch_62

    move-object/from16 v156, v157

    .line 1604
    .end local v157    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v156    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :cond_38
    :goto_5a
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v177

    .line 1605
    .local v177, "packageMgr":Landroid/content/pm/PackageManager;
    const-string v7, "com.sec.feature.minimode"

    move-object/from16 v0, v177

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3a

    .line 1607
    :try_start_81
    const-string v7, "SystemServer"

    const-string v9, "MiniModeAppManager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    const-string v159, "/data/dalvik-cache/system@framework@minimode.jar@classes.dex"

    .line 1609
    .local v159, "minimodeFrameworkDexPath":Ljava/lang/String;
    const-string v161, "/data/dalvik-cache/minimode.dex"

    .line 1611
    .local v161, "minimodeGenDexPath":Ljava/lang/String;
    sget-object v7, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object/from16 v0, v159

    invoke-interface {v7, v0}, Llibcore/io/Os;->stat(Ljava/lang/String;)Llibcore/io/StructStat;

    move-result-object v200

    .line 1612
    .local v200, "stat":Llibcore/io/StructStat;
    if-eqz v200, :cond_39

    .line 1613
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, v159

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    move-object/from16 v0, v161

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v9}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_39

    .line 1614
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v161

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is copied from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v159

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    new-instance v160, Ljava/io/File;

    invoke-direct/range {v160 .. v161}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1616
    .local v160, "minimodeGenDexFile":Ljava/io/File;
    move-object/from16 v0, v200

    iget-wide v9, v0, Llibcore/io/StructStat;->st_mtime:J

    move-object/from16 v0, v160

    invoke-virtual {v0, v9, v10}, Ljava/io/File;->setLastModified(J)Z

    move-result v7

    if-eqz v7, :cond_39

    .line 1617
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "lastModfied time of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v161

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is changed to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v200

    iget-wide v12, v0, Llibcore/io/StructStat;->st_mtime:J

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    .end local v160    # "minimodeGenDexFile":Ljava/io/File;
    :cond_39
    new-instance v87, Ldalvik/system/DexClassLoader;

    const-string v7, "/system/framework/minimode.jar"

    const-string v9, "/data/dalvik-cache/"

    const/4 v10, 0x0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    move-object/from16 v0, v87

    invoke-direct {v0, v7, v9, v10, v12}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1624
    .local v87, "cl":Ljava/lang/ClassLoader;
    const-string v7, "com.sec.minimode.manager.MiniModeAppManagerService"

    move-object/from16 v0, v87

    invoke-virtual {v0, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v67

    .line 1625
    .local v67, "MiniModeAppManagerServiceClass":Ljava/lang/Class;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v7, v9

    move-object/from16 v0, v67

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v68

    .line 1626
    .local v68, "MiniModeAppManagerServiceContructor":Ljava/lang/reflect/Constructor;
    const-string v9, "mini_mode_app_manager"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v7, v10

    move-object/from16 v0, v68

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/IBinder;

    invoke-static {v9, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_81
    .catch Ljava/lang/Throwable; {:try_start_81 .. :try_end_81} :catch_4e

    .line 1635
    .end local v67    # "MiniModeAppManagerServiceClass":Ljava/lang/Class;
    .end local v68    # "MiniModeAppManagerServiceContructor":Ljava/lang/reflect/Constructor;
    .end local v87    # "cl":Ljava/lang/ClassLoader;
    .end local v159    # "minimodeFrameworkDexPath":Ljava/lang/String;
    .end local v161    # "minimodeGenDexPath":Ljava/lang/String;
    .end local v200    # "stat":Llibcore/io/StructStat;
    :cond_3a
    :goto_5b
    const-string v7, "com.sec.feature.barcode_emulator"

    move-object/from16 v0, v177

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3b

    .line 1637
    :try_start_82
    const-string v7, "SystemServer"

    const-string v9, "BarBeamService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    new-instance v80, Landroid/app/BarBeamService;

    move-object/from16 v0, v80

    invoke-direct {v0, v5}, Landroid/app/BarBeamService;-><init>(Landroid/content/Context;)V

    .line 1640
    .local v80, "barbeam":Landroid/app/BarBeamService;
    const-string v7, "barbeam"

    move-object/from16 v0, v80

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_82
    .catch Ljava/lang/Throwable; {:try_start_82 .. :try_end_82} :catch_4f

    .line 1648
    .end local v80    # "barbeam":Landroid/app/BarBeamService;
    :cond_3b
    :goto_5c
    :try_start_83
    const-string v7, "SystemServer"

    const-string v9, "Motion Recognition Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    const-string v7, "motion_recognition"

    new-instance v9, Landroid/hardware/motion/MotionRecognitionService;

    invoke-direct {v9, v5}, Landroid/hardware/motion/MotionRecognitionService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_83
    .catch Ljava/lang/Throwable; {:try_start_83 .. :try_end_83} :catch_50

    .line 1656
    :goto_5d
    :try_start_84
    const-string v7, "SystemServer"

    const-string v9, "VoIPInterfaceManager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    const-string/jumbo v7, "voip"

    new-instance v9, Lcom/android/server/VoIPInterfaceManager;

    invoke-direct {v9, v5}, Lcom/android/server/VoIPInterfaceManager;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_84
    .catch Ljava/lang/Throwable; {:try_start_84 .. :try_end_84} :catch_51

    .line 1664
    :goto_5e
    const-string v7, "com.sec.feature.cover.flip"

    move-object/from16 v0, v177

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3c

    const-string v7, "com.sec.feature.cover.sview"

    move-object/from16 v0, v177

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3d

    .line 1667
    :cond_3c
    :try_start_85
    const-string v7, "SystemServer"

    const-string v9, "CoverManager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    new-instance v105, Lcom/android/server/cover/CoverManagerService;

    move-object/from16 v0, v105

    invoke-direct {v0, v5}, Lcom/android/server/cover/CoverManagerService;-><init>(Landroid/content/Context;)V

    .line 1669
    .local v105, "cover":Lcom/android/server/cover/CoverManagerService;
    const-string v7, "cover"

    move-object/from16 v0, v105

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_85
    .catch Ljava/lang/Throwable; {:try_start_85 .. :try_end_85} :catch_52

    .line 1678
    .end local v105    # "cover":Lcom/android/server/cover/CoverManagerService;
    :cond_3d
    :goto_5f
    :try_start_86
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v176

    .line 1679
    .restart local v176    # "pM":Landroid/content/pm/PackageManager;
    if-eqz v176, :cond_3e

    .line 1681
    const-string v7, "SystemServer"

    const-string v9, "PackageManager is not null!!"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    const-string v7, "com.sec.feature.healthcover"

    move-object/from16 v0, v176

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    const/4 v9, 0x1

    if-ne v7, v9, :cond_3e

    .line 1683
    const-string v7, "SystemServer"

    const-string v9, "HealthCoverManager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    new-instance v137, Ldalvik/system/PathClassLoader;

    const-string v7, "/system/framework/healthcoverservice.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    move-object/from16 v0, v137

    invoke-direct {v0, v7, v9}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1685
    .local v137, "hcClassLoader":Ldalvik/system/PathClassLoader;
    const-string v7, "com.samsung.android.healthcover.HealthCoverService"

    move-object/from16 v0, v137

    invoke-virtual {v0, v7}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v136

    .line 1686
    .local v136, "hcClass":Ljava/lang/Class;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v7, v9

    move-object/from16 v0, v136

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v138

    .line 1687
    .local v138, "hcConstructor":Ljava/lang/reflect/Constructor;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v7, v9

    move-object/from16 v0, v138

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v139

    check-cast v139, Landroid/os/IBinder;

    .line 1688
    .local v139, "hcService":Landroid/os/IBinder;
    const-string v7, "healthcover"

    move-object/from16 v0, v139

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_86} :catch_53

    .line 1704
    .end local v69    # "SecEDSEnable":Ljava/lang/String;
    .end local v136    # "hcClass":Ljava/lang/Class;
    .end local v137    # "hcClassLoader":Ldalvik/system/PathClassLoader;
    .end local v138    # "hcConstructor":Ljava/lang/reflect/Constructor;
    .end local v139    # "hcService":Landroid/os/IBinder;
    .end local v155    # "mdsEnable":Ljava/lang/String;
    .end local v176    # "pM":Landroid/content/pm/PackageManager;
    .end local v177    # "packageMgr":Landroid/content/pm/PackageManager;
    :cond_3e
    :goto_60
    :try_start_87
    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v87

    .line 1705
    .restart local v87    # "cl":Ljava/lang/ClassLoader;
    const-string v7, "com.sec.android.smartface.SmartFaceManager"

    const/4 v9, 0x1

    move-object/from16 v0, v87

    invoke-static {v7, v9, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v88

    .line 1706
    .local v88, "class_SmartFaceManager":Ljava/lang/Class;
    const-string v7, "SMARTFACE_SERVICE"

    move-object/from16 v0, v88

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v133

    .line 1708
    .local v133, "field_SMARTFACE_SERVICE":Ljava/lang/reflect/Field;
    const-string v7, "com.sec.android.smartface.SmartFaceService"

    const/4 v9, 0x1

    move-object/from16 v0, v87

    invoke-static {v7, v9, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v89

    .line 1709
    .local v89, "class_SmartFaceService":Ljava/lang/Class;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v7, v9

    move-object/from16 v0, v89

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v97

    .line 1711
    .local v97, "constructor_SmartFaceService":Ljava/lang/reflect/Constructor;
    const/4 v7, 0x0

    move-object/from16 v0, v133

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    move-object/from16 v0, v97

    invoke-virtual {v0, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/IBinder;

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1712
    const-string v7, "SystemServer"

    const-string v9, "SmartFaceService loaded!"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_87} :catch_54

    .line 1721
    .end local v87    # "cl":Ljava/lang/ClassLoader;
    .end local v88    # "class_SmartFaceManager":Ljava/lang/Class;
    .end local v89    # "class_SmartFaceService":Ljava/lang/Class;
    .end local v97    # "constructor_SmartFaceService":Ljava/lang/reflect/Constructor;
    .end local v133    # "field_SMARTFACE_SERVICE":Ljava/lang/reflect/Field;
    :goto_61
    invoke-static {}, Lcom/samsung/appdisabler/AppDisablerService;->configurationFileExists()Z

    move-result v7

    if-eqz v7, :cond_3f

    .line 1723
    :try_start_88
    new-instance v73, Lcom/samsung/appdisabler/AppDisablerService;

    move-object/from16 v0, v73

    invoke-direct {v0, v5}, Lcom/samsung/appdisabler/AppDisablerService;-><init>(Landroid/content/Context;)V

    .line 1724
    .local v73, "appDisablerService":Lcom/samsung/appdisabler/AppDisablerService;
    const-string v7, "SamsungAppDisabler"

    move-object/from16 v0, v73

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_88
    .catch Ljava/lang/Throwable; {:try_start_88 .. :try_end_88} :catch_55

    .line 1764
    .end local v73    # "appDisablerService":Lcom/samsung/appdisabler/AppDisablerService;
    :cond_3f
    :goto_62
    const-string v7, "SystemServer"

    const-string v9, "Window Manager detectSafeMode"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    invoke-virtual/range {v234 .. v234}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v47

    .line 1766
    .local v47, "safeMode":Z
    if-eqz v47, :cond_55

    .line 1767
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 1769
    const/4 v7, 0x1

    sput-boolean v7, Ldalvik/system/Zygote;->systemInSafeMode:Z

    .line 1771
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 1780
    :goto_63
    :try_start_89
    const-string v7, "SystemServer"

    const-string/jumbo v9, "vibrator systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    invoke-virtual/range {v224 .. v224}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_89
    .catch Ljava/lang/Throwable; {:try_start_89 .. :try_end_89} :catch_56

    .line 1786
    :goto_64
    if-eqz v151, :cond_40

    .line 1788
    :try_start_8a
    const-string v7, "SystemServer"

    const-string v9, "lockSettings systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1789
    invoke-virtual/range {v151 .. v151}, Lcom/android/server/LockSettingsService;->systemReady()V
    :try_end_8a
    .catch Ljava/lang/Throwable; {:try_start_8a .. :try_end_8a} :catch_57

    .line 1795
    :cond_40
    :goto_65
    if-eqz v110, :cond_41

    .line 1797
    :try_start_8b
    const-string v7, "SystemServer"

    const-string v9, "devicePolicy systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    invoke-virtual/range {v110 .. v110}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_8b
    .catch Ljava/lang/Throwable; {:try_start_8b .. :try_end_8b} :catch_58

    .line 1806
    :cond_41
    :goto_66
    if-eqz v129, :cond_42

    .line 1807
    invoke-virtual/range {v129 .. v129}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->systemReady()V

    .line 1808
    const-string v7, "SystemServer"

    const-string v9, "enterprisePolicy systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    :cond_42
    if-eqz v173, :cond_43

    .line 1814
    :try_start_8c
    const-string v7, "SystemServer"

    const-string v9, "notification systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    invoke-virtual/range {v173 .. v173}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_8c
    .catch Ljava/lang/Throwable; {:try_start_8c .. :try_end_8c} :catch_59

    .line 1822
    :cond_43
    :goto_67
    :try_start_8d
    const-string v7, "SystemServer"

    const-string v9, "Window Manager systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1823
    invoke-virtual/range {v234 .. v234}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_8d
    .catch Ljava/lang/Throwable; {:try_start_8d .. :try_end_8d} :catch_5a

    .line 1828
    :goto_68
    if-eqz v47, :cond_44

    .line 1829
    const-string v7, "SystemServer"

    const-string v9, "ActivityManager showSafeModeOverlay"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 1836
    :cond_44
    invoke-virtual/range {v234 .. v234}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v93

    .line 1837
    .local v93, "config":Landroid/content/res/Configuration;
    new-instance v158, Landroid/util/DisplayMetrics;

    invoke-direct/range {v158 .. v158}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1838
    .local v158, "metrics":Landroid/util/DisplayMetrics;
    const-string/jumbo v7, "window"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v226

    check-cast v226, Landroid/view/WindowManager;

    .line 1839
    .local v226, "w":Landroid/view/WindowManager;
    invoke-interface/range {v226 .. v226}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    move-object/from16 v0, v158

    invoke-virtual {v7, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1840
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object/from16 v0, v93

    move-object/from16 v1, v158

    invoke-virtual {v7, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1843
    :try_start_8e
    const-string v7, "SystemServer"

    const-string v9, "PowerManagerService systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    move-object/from16 v0, v217

    move-object/from16 v1, v125

    invoke-virtual {v4, v0, v1}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/server/TwilightService;Lcom/android/server/dreams/DreamManagerService;)V
    :try_end_8e
    .catch Ljava/lang/Throwable; {:try_start_8e .. :try_end_8e} :catch_5b

    .line 1851
    :goto_69
    :try_start_8f
    const-string v7, "SystemServer"

    const-string v9, "LightsService systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    invoke-virtual {v6}, Lcom/android/server/LightsService;->systemReady()V
    :try_end_8f
    .catch Ljava/lang/Throwable; {:try_start_8f .. :try_end_8f} :catch_5c

    .line 1858
    :goto_6a
    if-eqz v121, :cond_45

    .line 1860
    :try_start_90
    const-string v7, "SystemServer"

    const-string v9, "AdaptiveDisplayColorService systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1861
    invoke-virtual/range {v121 .. v121}, Lcom/android/server/AdaptiveDisplayColorService;->systemReady()V
    :try_end_90
    .catch Ljava/lang/Throwable; {:try_start_90 .. :try_end_90} :catch_5d

    .line 1868
    :cond_45
    :goto_6b
    :try_start_91
    const-string v7, "SystemServer"

    const-string v9, "PackageManagerService systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    invoke-interface/range {v179 .. v179}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_91
    .catch Ljava/lang/Throwable; {:try_start_91 .. :try_end_91} :catch_5e

    .line 1875
    :goto_6c
    :try_start_92
    const-string v7, "SystemServer"

    const-string v9, "DisplayManagerService systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    move/from16 v0, v47

    move/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_92
    .catch Ljava/lang/Throwable; {:try_start_92 .. :try_end_92} :catch_5f

    .line 1881
    :goto_6d
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v223

    .line 1882
    .restart local v223    # "versionInfo":Landroid/os/Bundle;
    const-string v7, "2.0"

    const-string/jumbo v9, "version"

    move-object/from16 v0, v223

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_46

    .line 1884
    :try_start_93
    invoke-virtual/range {v178 .. v178}, Lcom/android/server/pm/PersonaManagerService;->systemReady()V
    :try_end_93
    .catch Ljava/lang/Throwable; {:try_start_93 .. :try_end_93} :catch_60

    .line 1891
    :cond_46
    :goto_6e
    move-object/from16 v34, v5

    .line 1892
    .local v34, "contextF":Landroid/content/Context;
    move-object/from16 v35, v162

    .line 1893
    .local v35, "mountServiceF":Lcom/android/server/MountService;
    move-object/from16 v36, v8

    .line 1894
    .local v36, "batteryF":Lcom/android/server/BatteryService;
    move-object/from16 v37, v30

    .line 1895
    .local v37, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object/from16 v38, v29

    .line 1896
    .local v38, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v39, v25

    .line 1897
    .local v39, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v40, v94

    .line 1898
    .local v40, "connectivityF":Lcom/android/server/ConnectivityService;
    move-object/from16 v41, v123

    .line 1899
    .local v41, "dockF":Lcom/android/server/DockObserver;
    move-object/from16 v42, v221

    .line 1900
    .local v42, "usbF":Lcom/android/server/usb/UsbService;
    move-object/from16 v43, v217

    .line 1901
    .local v43, "twilightF":Lcom/android/server/TwilightService;
    move-object/from16 v44, v219

    .line 1902
    .local v44, "uiModeF":Lcom/android/server/UiModeManagerService;
    move-object/from16 v46, v74

    .line 1903
    .local v46, "appWidgetF":Lcom/android/server/AppWidgetService;
    move-object/from16 v48, v227

    .line 1904
    .local v48, "wallpaperF":Lcom/android/server/WallpaperManagerService;
    move-object/from16 v49, v140

    .line 1905
    .local v49, "immF":Lcom/android/server/InputMethodManagerService;
    move-object/from16 v45, v189

    .line 1906
    .local v45, "recognitionF":Lcom/android/server/RecognitionManagerService;
    move-object/from16 v51, v149

    .line 1907
    .local v51, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v52, v191

    .line 1908
    .local v52, "sLocationF":Landroid/os/IBinder;
    move-object/from16 v53, v103

    .line 1909
    .local v53, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v54, v171

    .line 1910
    .local v54, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v55, v91

    .line 1911
    .local v55, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v56, v215

    .line 1912
    .local v56, "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    move-object/from16 v50, v201

    .line 1913
    .local v50, "statusBarF":Lcom/android/server/StatusBarManagerService;
    move-object/from16 v57, v125

    .line 1915
    .local v57, "dreamyF":Lcom/android/server/dreams/DreamManagerService;
    move-object/from16 v58, v213

    .line 1917
    .local v58, "transcloudF":Lcom/android/server/TranscloudMonitorService;
    move-object/from16 v59, v77

    .line 1918
    .local v59, "atlasF":Lcom/android/server/AssetAtlasService;
    move-object/from16 v60, v20

    .line 1919
    .local v60, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v61, v204

    .line 1920
    .local v61, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v64, v166

    .line 1921
    .local v64, "msimTelephonyRegistryF":Lcom/android/server/MSimTelephonyRegistry;
    move-object/from16 v65, v182

    .line 1922
    .local v65, "printManagerF":Lcom/android/server/print/PrintManagerService;
    move-object/from16 v66, v156

    .line 1925
    .local v66, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v63, v100

    .line 1933
    .local v63, "containerServiceF":Lcom/sec/knox/container/EnterpriseContainerService;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    new-instance v31, Lcom/android/server/ServerThread$2;

    move-object/from16 v32, p0

    invoke-direct/range {v31 .. v66}, Lcom/android/server/ServerThread$2;-><init>(Lcom/android/server/ServerThread;ZLandroid/content/Context;Lcom/android/server/MountService;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/TwilightService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Landroid/os/IBinder;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/TranscloudMonitorService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;ZLcom/sec/knox/container/EnterpriseContainerService;Lcom/android/server/MSimTelephonyRegistry;Lcom/android/server/print/PrintManagerService;Lcom/android/server/media/MediaRouterService;)V

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 2122
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v7

    if-eqz v7, :cond_47

    .line 2123
    const-string v7, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2127
    :cond_47
    const/4 v7, -0x2

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2131
    const-string v7, "SystemServer"

    const-string v9, "!@Boot: End initAndLoop"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2132
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 2133
    const-string v7, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2134
    return-void

    .line 452
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v34    # "contextF":Landroid/content/Context;
    .end local v35    # "mountServiceF":Lcom/android/server/MountService;
    .end local v36    # "batteryF":Lcom/android/server/BatteryService;
    .end local v37    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v38    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v39    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v40    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v41    # "dockF":Lcom/android/server/DockObserver;
    .end local v42    # "usbF":Lcom/android/server/usb/UsbService;
    .end local v43    # "twilightF":Lcom/android/server/TwilightService;
    .end local v44    # "uiModeF":Lcom/android/server/UiModeManagerService;
    .end local v45    # "recognitionF":Lcom/android/server/RecognitionManagerService;
    .end local v46    # "appWidgetF":Lcom/android/server/AppWidgetService;
    .end local v47    # "safeMode":Z
    .end local v48    # "wallpaperF":Lcom/android/server/WallpaperManagerService;
    .end local v49    # "immF":Lcom/android/server/InputMethodManagerService;
    .end local v50    # "statusBarF":Lcom/android/server/StatusBarManagerService;
    .end local v51    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v52    # "sLocationF":Landroid/os/IBinder;
    .end local v53    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v54    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v55    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v56    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .end local v57    # "dreamyF":Lcom/android/server/dreams/DreamManagerService;
    .end local v58    # "transcloudF":Lcom/android/server/TranscloudMonitorService;
    .end local v59    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v60    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v61    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v63    # "containerServiceF":Lcom/sec/knox/container/EnterpriseContainerService;
    .end local v64    # "msimTelephonyRegistryF":Lcom/android/server/MSimTelephonyRegistry;
    .end local v65    # "printManagerF":Lcom/android/server/print/PrintManagerService;
    .end local v66    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v74    # "appWidget":Lcom/android/server/AppWidgetService;
    .end local v77    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v93    # "config":Landroid/content/res/Configuration;
    .end local v103    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v110    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .end local v125    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .end local v129    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v140    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v149    # "location":Lcom/android/server/LocationManagerService;
    .end local v151    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v156    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v158    # "metrics":Landroid/util/DisplayMetrics;
    .end local v173    # "notification":Lcom/android/server/NotificationManagerService;
    .end local v182    # "printManager":Lcom/android/server/print/PrintManagerService;
    .end local v191    # "sLocation":Landroid/os/IBinder;
    .end local v201    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .end local v213    # "transcloud":Lcom/android/server/TranscloudMonitorService;
    .end local v215    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v223    # "versionInfo":Landroid/os/Bundle;
    .end local v226    # "w":Landroid/view/WindowManager;
    .end local v227    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v81    # "battery":Lcom/android/server/BatteryService;
    .restart local v106    # "cryptState":Ljava/lang/String;
    .restart local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v148    # "lights":Lcom/android/server/LightsService;
    .restart local v169    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :cond_48
    :try_start_94
    const-string v7, "1"

    move-object/from16 v0, v106

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 453
    const-string v7, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const/16 v24, 0x1

    goto/16 :goto_7

    .line 464
    .restart local v206    # "timaEnabled":Z
    :catch_2
    move-exception v127

    .line 465
    .local v127, "e":Ljava/lang/Throwable;
    :goto_6f
    const-string/jumbo v7, "starting TimaService"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_94
    .catch Ljava/lang/RuntimeException; {:try_start_94 .. :try_end_94} :catch_3

    goto/16 :goto_8

    .line 736
    .end local v106    # "cryptState":Ljava/lang/String;
    .end local v127    # "e":Ljava/lang/Throwable;
    .end local v206    # "timaEnabled":Z
    :catch_3
    move-exception v127

    move-object/from16 v20, v142

    .end local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v72

    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v81

    .end local v81    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v148

    .line 737
    .end local v148    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    .local v127, "e":Ljava/lang/RuntimeException;
    :goto_70
    const-string v7, "System"

    const-string v9, "******************************************"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    const-string v7, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v127

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1a

    .line 472
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v127    # "e":Ljava/lang/RuntimeException;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v81    # "battery":Lcom/android/server/BatteryService;
    .restart local v106    # "cryptState":Ljava/lang/String;
    .restart local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v148    # "lights":Lcom/android/server/LightsService;
    .restart local v206    # "timaEnabled":Z
    :catch_4
    move-exception v127

    .line 473
    .local v127, "e":Ljava/lang/Throwable;
    :try_start_95
    const-string/jumbo v7, "starting TimaObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 485
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_5
    move-exception v127

    .line 486
    .local v127, "e":Ljava/lang/Exception;
    const-string v7, "SystemServer"

    const-string v9, "Unable to add TimaKesytore provider"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    invoke-virtual/range {v127 .. v127}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_a

    .line 493
    .end local v127    # "e":Ljava/lang/Exception;
    :cond_49
    const/4 v7, 0x0

    goto/16 :goto_b

    .line 517
    .restart local v147    # "knoxVerInfo":Landroid/os/Bundle;
    :catch_6
    move-exception v127

    .line 518
    .local v127, "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting SE Android Manager Service"

    move-object/from16 v0, v127

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_d

    .line 539
    .end local v127    # "e":Ljava/lang/Throwable;
    .restart local v223    # "versionInfo":Landroid/os/Bundle;
    :catch_7
    move-exception v127

    .line 540
    .restart local v127    # "e":Ljava/lang/Throwable;
    :goto_71
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v127

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_e

    .line 549
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_8
    move-exception v127

    .line 550
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting KT UCA Service"

    move-object/from16 v0, v127

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_95
    .catch Ljava/lang/RuntimeException; {:try_start_95 .. :try_end_95} :catch_3

    goto/16 :goto_f

    .line 556
    .end local v127    # "e":Ljava/lang/Throwable;
    :cond_4a
    const/4 v7, 0x0

    goto/16 :goto_10

    .line 566
    .end local v107    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v108    # "dEncService":Lcom/android/server/DirEncryptService;
    :catch_9
    move-exception v127

    .line 567
    .restart local v127    # "e":Ljava/lang/Throwable;
    :try_start_96
    const-string v7, "SystemServer"

    const-string v9, "Failure starting DirEncryptService"

    move-object/from16 v0, v127

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_96
    .catch Ljava/lang/RuntimeException; {:try_start_96 .. :try_end_96} :catch_82

    .line 568
    const/16 v107, 0x0

    .end local v108    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v107    # "dEncService":Lcom/android/server/DirEncryptService;
    goto/16 :goto_11

    .line 580
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_a
    move-exception v127

    .line 581
    .restart local v127    # "e":Ljava/lang/Throwable;
    :goto_72
    :try_start_97
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failure starting Container Service"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static/range {v127 .. v127}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_97
    .catch Ljava/lang/RuntimeException; {:try_start_97 .. :try_end_97} :catch_3

    goto/16 :goto_12

    .line 626
    .end local v81    # "battery":Lcom/android/server/BatteryService;
    .end local v127    # "e":Ljava/lang/Throwable;
    .end local v148    # "lights":Lcom/android/server/LightsService;
    .end local v224    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    .restart local v203    # "tactileAssist":Lcom/android/server/TactileAssistService;
    .restart local v212    # "toolbox":Lcom/samsung/android/toolbox/TwToolBoxService;
    .restart local v225    # "vibrator":Lcom/android/server/VibratorService;
    :catch_b
    move-exception v127

    .line 627
    .local v127, "e":Ljava/lang/Exception;
    :try_start_98
    const-string v7, "SystemServer"

    const-string/jumbo v9, "ssrm.jar not found"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    .line 736
    .end local v127    # "e":Ljava/lang/Exception;
    .end local v212    # "toolbox":Lcom/samsung/android/toolbox/TwToolBoxService;
    :catch_c
    move-exception v127

    move-object/from16 v20, v142

    .end local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v72

    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v224, v225

    .end local v225    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v224    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_70

    .line 635
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v224    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v212    # "toolbox":Lcom/samsung/android/toolbox/TwToolBoxService;
    .restart local v225    # "vibrator":Lcom/android/server/VibratorService;
    :cond_4b
    const/16 v79, 0x0

    goto/16 :goto_14

    .line 639
    .restart local v79    # "autoMode":Z
    :cond_4c
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "screen_mode_setting"

    const/4 v10, 0x0

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_98
    .catch Ljava/lang/RuntimeException; {:try_start_98 .. :try_end_98} :catch_c

    move-result v193

    .restart local v193    # "screenMode":I
    goto/16 :goto_15

    .line 684
    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v98    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v99    # "consumerIr":Lcom/android/server/ConsumerIrService;
    :cond_4d
    const/16 v22, 0x0

    goto/16 :goto_16

    :cond_4e
    const/16 v23, 0x0

    goto/16 :goto_17

    .line 706
    :cond_4f
    const/4 v7, 0x1

    move/from16 v0, v131

    if-ne v0, v7, :cond_50

    .line 707
    :try_start_99
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18

    .line 736
    :catch_d
    move-exception v127

    move-object/from16 v98, v99

    .end local v99    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v98    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v224, v225

    .end local v225    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v224    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_70

    .line 708
    .end local v98    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v224    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v99    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v225    # "vibrator":Lcom/android/server/VibratorService;
    :cond_50
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v9, "android.hardware.bluetooth"

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_51

    .line 710
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18

    .line 711
    :cond_51
    if-eqz v112, :cond_52

    .line 712
    const-string v7, "SystemServer"

    const-string v9, "Bluetooth Service disabled by config"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18

    .line 714
    :cond_52
    const-string v7, "SystemServer"

    const-string v9, "Bluetooth Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    new-instance v83, Lcom/android/server/BluetoothManagerService;

    move-object/from16 v0, v83

    invoke-direct {v0, v5}, Lcom/android/server/BluetoothManagerService;-><init>(Landroid/content/Context;)V
    :try_end_99
    .catch Ljava/lang/RuntimeException; {:try_start_99 .. :try_end_99} :catch_d

    .line 716
    .end local v82    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .local v83, "bluetooth":Lcom/android/server/BluetoothManagerService;
    :try_start_9a
    const-string v7, "bluetooth_manager"

    move-object/from16 v0, v83

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 719
    const-string v7, "SystemServer"

    const-string v9, "Bluetooth Secure Mode Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    const-string v7, "bluetooth_secure_mode_manager"

    new-instance v9, Landroid/app/BluetoothSecureManagerService;

    invoke-direct {v9, v5}, Landroid/app/BluetoothSecureManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_9a
    .catch Ljava/lang/RuntimeException; {:try_start_9a .. :try_end_9a} :catch_88

    move-object/from16 v82, v83

    .end local v83    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v82    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    goto/16 :goto_18

    .line 731
    :catch_e
    move-exception v127

    .line 732
    .local v127, "e":Ljava/lang/Throwable;
    :goto_73
    :try_start_9b
    const-string v7, "SystemServer"

    const-string v9, "Failure starting RCP Manager Service"

    move-object/from16 v0, v127

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9b
    .catch Ljava/lang/RuntimeException; {:try_start_9b .. :try_end_9b} :catch_d

    goto/16 :goto_19

    .line 771
    .end local v79    # "autoMode":Z
    .end local v99    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v106    # "cryptState":Ljava/lang/String;
    .end local v127    # "e":Ljava/lang/Throwable;
    .end local v147    # "knoxVerInfo":Landroid/os/Bundle;
    .end local v193    # "screenMode":I
    .end local v203    # "tactileAssist":Lcom/android/server/TactileAssistService;
    .end local v206    # "timaEnabled":Z
    .end local v212    # "toolbox":Lcom/samsung/android/toolbox/TwToolBoxService;
    .end local v223    # "versionInfo":Landroid/os/Bundle;
    .end local v225    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v74    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v77    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v98    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v103    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v110    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v125    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v129    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v140    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v149    # "location":Lcom/android/server/LocationManagerService;
    .restart local v151    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v156    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v173    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v182    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v191    # "sLocation":Landroid/os/IBinder;
    .restart local v201    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v213    # "transcloud":Lcom/android/server/TranscloudMonitorService;
    .restart local v215    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v224    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v227    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :catch_f
    move-exception v127

    .line 772
    .restart local v127    # "e":Ljava/lang/Throwable;
    :goto_74
    const-string/jumbo v7, "starting Input MethodManager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 779
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_10
    move-exception v127

    .line 780
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 788
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_11
    move-exception v127

    .line 789
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string v7, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 795
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_12
    move-exception v127

    .line 796
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string v7, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 812
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_13
    move-exception v127

    .line 813
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string v7, "making Containerservice preSystemReady ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 823
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_14
    move-exception v127

    .line 824
    .restart local v127    # "e":Ljava/lang/Throwable;
    :goto_75
    const-string/jumbo v7, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 837
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_15
    move-exception v127

    .line 838
    .restart local v127    # "e":Ljava/lang/Throwable;
    :goto_76
    const-string/jumbo v7, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 849
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_16
    move-exception v127

    .line 850
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting DirEncryption service"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 870
    .end local v127    # "e":Ljava/lang/Throwable;
    .restart local v155    # "mdsEnable":Ljava/lang/String;
    :catch_17
    move-exception v127

    .line 871
    .restart local v127    # "e":Ljava/lang/Throwable;
    :goto_77
    const-string/jumbo v7, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 887
    .end local v127    # "e":Ljava/lang/Throwable;
    .restart local v223    # "versionInfo":Landroid/os/Bundle;
    :catch_18
    move-exception v127

    .line 888
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string v7, "Unable to call PMS preSystemReady method"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 899
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_19
    move-exception v127

    .line 900
    .restart local v127    # "e":Ljava/lang/Throwable;
    :goto_78
    const-string v7, "SystemServer"

    const-string v9, "Failure starting EnterpriseDeviceManagerService"

    move-object/from16 v0, v127

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_26

    .line 911
    .end local v127    # "e":Ljava/lang/Throwable;
    .end local v223    # "versionInfo":Landroid/os/Bundle;
    :catch_1a
    move-exception v127

    .line 912
    .restart local v127    # "e":Ljava/lang/Throwable;
    :goto_79
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Harmony EAS service"

    move-object/from16 v0, v127

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_27

    .line 921
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_1b
    move-exception v127

    .line 922
    .restart local v127    # "e":Ljava/lang/Throwable;
    :goto_7a
    const-string/jumbo v7, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 931
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_1c
    move-exception v127

    .line 932
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 944
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_1d
    move-exception v127

    .line 945
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string v7, "Failure starting ClipboardEx Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 953
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_1e
    move-exception v127

    .line 954
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .line 963
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_1f
    move-exception v127

    .line 964
    .restart local v127    # "e":Ljava/lang/Throwable;
    :goto_7b
    const-string/jumbo v7, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 973
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_20
    move-exception v127

    .line 974
    .restart local v127    # "e":Ljava/lang/Throwable;
    :goto_7c
    const-string/jumbo v7, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 983
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_21
    move-exception v127

    move-object/from16 v25, v169

    .line 984
    .end local v169    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v127    # "e":Ljava/lang/Throwable;
    :goto_7d
    const-string/jumbo v7, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 991
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_22
    move-exception v127

    .line 992
    .restart local v127    # "e":Ljava/lang/Throwable;
    :goto_7e
    const-string/jumbo v7, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 999
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_23
    move-exception v127

    .line 1000
    .restart local v127    # "e":Ljava/lang/Throwable;
    :goto_7f
    const-string/jumbo v7, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .line 1008
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_24
    move-exception v127

    .line 1009
    .restart local v127    # "e":Ljava/lang/Throwable;
    :goto_80
    const-string/jumbo v7, "starting MSAP Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 1023
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_25
    move-exception v127

    .line 1024
    .restart local v127    # "e":Ljava/lang/Throwable;
    :goto_81
    const-string/jumbo v7, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    .line 1075
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_26
    move-exception v127

    .line 1076
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .line 1085
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_27
    move-exception v127

    .line 1086
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_34

    .line 1106
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_28
    move-exception v127

    .line 1107
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string v7, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35

    .line 1115
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_29
    move-exception v127

    .line 1116
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string v7, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36

    .line 1124
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_2a
    move-exception v127

    .line 1125
    .restart local v127    # "e":Ljava/lang/Throwable;
    :goto_82
    const-string/jumbo v7, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_37

    .line 1132
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_2b
    move-exception v127

    .line 1133
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_38

    .line 1141
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_2c
    move-exception v127

    .line 1142
    .restart local v127    # "e":Ljava/lang/Throwable;
    :goto_83
    const-string/jumbo v7, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_39

    .line 1149
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_2d
    move-exception v127

    .line 1150
    .restart local v127    # "e":Ljava/lang/Throwable;
    :goto_84
    const-string/jumbo v7, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3a

    .line 1192
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_2e
    move-exception v127

    .line 1193
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Loading SLocation has been failed, error or not support"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v127 .. v127}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3b

    .line 1201
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_2f
    move-exception v127

    .line 1202
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3c

    .line 1212
    .end local v127    # "e":Ljava/lang/Throwable;
    :cond_53
    :try_start_9c
    const-string v7, "SystemServer"

    const-string v9, "Spell Manager Service disabled"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9c
    .catch Ljava/lang/Throwable; {:try_start_9c .. :try_end_9c} :catch_30

    goto/16 :goto_3d

    .line 1214
    :catch_30
    move-exception v127

    .line 1215
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "starting Spell Service failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v127

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3d

    .line 1222
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_31
    move-exception v127

    .line 1223
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3e

    .line 1234
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_32
    move-exception v127

    .line 1235
    .restart local v127    # "e":Ljava/lang/Throwable;
    :goto_85
    const-string/jumbo v7, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3f

    .line 1243
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_33
    move-exception v127

    .line 1244
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_40

    .line 1252
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_34
    move-exception v127

    .line 1253
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_41

    .line 1263
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_35
    move-exception v127

    .line 1264
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_42

    .line 1274
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_36
    move-exception v127

    .line 1275
    .restart local v127    # "e":Ljava/lang/Throwable;
    :goto_86
    const-string/jumbo v7, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_43

    .line 1283
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_37
    move-exception v127

    .line 1284
    .restart local v127    # "e":Ljava/lang/Throwable;
    :goto_87
    const-string v7, "SystemServer"

    const-string v9, "Failure starting SerialService"

    move-object/from16 v0, v127

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_44

    .line 1291
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_38
    move-exception v127

    .line 1292
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting TwilightService"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_45

    .line 1299
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_39
    move-exception v127

    .line 1300
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_46

    .line 1309
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_3a
    move-exception v127

    .line 1310
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string v7, "Failue staring KiesUsbObserver Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_47

    .line 1320
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_3b
    move-exception v127

    .line 1321
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v127

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_48

    .line 1328
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_3c
    move-exception v127

    .line 1329
    .restart local v127    # "e":Ljava/lang/Throwable;
    :goto_88
    const-string/jumbo v7, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_49

    .line 1335
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_3d
    move-exception v127

    .line 1336
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4a

    .line 1365
    .end local v127    # "e":Ljava/lang/Throwable;
    .restart local v69    # "SecEDSEnable":Ljava/lang/String;
    .restart local v128    # "edsclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_54
    :try_start_9d
    const-string v7, "SystemServer"

    const-string v9, "edsclass Service exist"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    const/4 v7, 0x1

    new-array v0, v7, [Ljava/lang/Class;

    move-object/from16 v76, v0

    .line 1369
    .local v76, "arg":[Ljava/lang/Class;
    const/4 v7, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v76, v7

    .line 1371
    move-object/from16 v0, v128

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v96

    .line 1373
    .local v96, "constructor":Ljava/lang/reflect/Constructor;
    const-string v9, "SecExternalDisplayService"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v7, v10

    move-object/from16 v0, v96

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/IBinder;

    invoke-static {v9, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_9d
    .catch Ljava/lang/Throwable; {:try_start_9d .. :try_end_9d} :catch_3e

    goto/16 :goto_4b

    .line 1376
    .end local v76    # "arg":[Ljava/lang/Class;
    .end local v96    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v128    # "edsclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_3e
    move-exception v127

    .line 1378
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting eds Service"

    move-object/from16 v0, v127

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4b

    .line 1386
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_3f
    move-exception v127

    .line 1387
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4c

    .line 1420
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_40
    move-exception v127

    .line 1421
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting SpenGestureManagerService Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4d

    .line 1429
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_41
    move-exception v127

    .line 1430
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting PalmMotion Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4e

    .line 1451
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_42
    move-exception v127

    .line 1452
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting CocktailBarManagerService Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4f

    .line 1463
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_43
    move-exception v127

    .line 1464
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_50

    .line 1471
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_44
    move-exception v127

    .line 1472
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_51

    .line 1507
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_45
    move-exception v127

    .line 1508
    .restart local v127    # "e":Ljava/lang/Throwable;
    :goto_89
    const-string/jumbo v7, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_52

    .line 1516
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_46
    move-exception v127

    .line 1517
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_53

    .line 1528
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_47
    move-exception v127

    .line 1529
    .restart local v127    # "e":Ljava/lang/Throwable;
    :goto_8a
    const-string/jumbo v7, "starting DreamManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_54

    .line 1537
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_48
    move-exception v127

    .line 1538
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failure starting TranscloudService "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v127 .. v127}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_55

    .line 1547
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_49
    move-exception v127

    .line 1548
    .restart local v127    # "e":Ljava/lang/Throwable;
    :goto_8b
    const-string/jumbo v7, "starting AssetAtlasService"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_56

    .line 1555
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_4a
    move-exception v127

    .line 1556
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting IdleMaintenanceService"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_57

    .line 1567
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_4b
    move-exception v127

    .line 1568
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Absolute Persistence Service"

    move-object/from16 v0, v127

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_58

    .line 1576
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_4c
    move-exception v127

    .line 1577
    .restart local v127    # "e":Ljava/lang/Throwable;
    :goto_8c
    const-string/jumbo v7, "starting Print Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_59

    .line 1585
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_4d
    move-exception v127

    .line 1586
    .restart local v127    # "e":Ljava/lang/Throwable;
    :goto_8d
    const-string/jumbo v7, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5a

    .line 1628
    .end local v127    # "e":Ljava/lang/Throwable;
    .restart local v177    # "packageMgr":Landroid/content/pm/PackageManager;
    :catch_4e
    move-exception v127

    .line 1629
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting MiniModeAppManager Service"

    move-object/from16 v0, v127

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5b

    .line 1641
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_4f
    move-exception v127

    .line 1642
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting BarBeam Service"

    move-object/from16 v0, v127

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5c

    .line 1650
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_50
    move-exception v127

    .line 1651
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Motion Recognition Service"

    move-object/from16 v0, v127

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5d

    .line 1658
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_51
    move-exception v127

    .line 1659
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting VoIPInterfaceManager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5e

    .line 1670
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_52
    move-exception v127

    .line 1671
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting CoverManager Service"

    move-object/from16 v0, v127

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5f

    .line 1691
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_53
    move-exception v127

    .line 1692
    .local v127, "e":Ljava/lang/Exception;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting HealthCoverService"

    move-object/from16 v0, v127

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_60

    .line 1713
    .end local v69    # "SecEDSEnable":Ljava/lang/String;
    .end local v127    # "e":Ljava/lang/Exception;
    .end local v155    # "mdsEnable":Ljava/lang/String;
    .end local v177    # "packageMgr":Landroid/content/pm/PackageManager;
    :catch_54
    move-exception v127

    .line 1714
    .restart local v127    # "e":Ljava/lang/Exception;
    const-string v7, "Fail to start SmartFaceService"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_61

    .line 1725
    .end local v127    # "e":Ljava/lang/Exception;
    :catch_55
    move-exception v127

    .line 1726
    .local v127, "e":Ljava/lang/Throwable;
    const-string v7, "Failure starting SamsungAppDisablerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_62

    .line 1774
    .end local v127    # "e":Ljava/lang/Throwable;
    .restart local v47    # "safeMode":Z
    :cond_55
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_63

    .line 1782
    :catch_56
    move-exception v127

    .line 1783
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string v7, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_64

    .line 1790
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_57
    move-exception v127

    .line 1791
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string v7, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_65

    .line 1799
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_58
    move-exception v127

    .line 1800
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string v7, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_66

    .line 1816
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_59
    move-exception v127

    .line 1817
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string v7, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_67

    .line 1824
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_5a
    move-exception v127

    .line 1825
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string v7, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_68

    .line 1845
    .end local v127    # "e":Ljava/lang/Throwable;
    .restart local v93    # "config":Landroid/content/res/Configuration;
    .restart local v158    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v226    # "w":Landroid/view/WindowManager;
    :catch_5b
    move-exception v127

    .line 1846
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string v7, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_69

    .line 1853
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_5c
    move-exception v127

    .line 1854
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string v7, "making Lights Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6a

    .line 1862
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_5d
    move-exception v127

    .line 1863
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string v7, "making Adaptive Display Color Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6b

    .line 1870
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_5e
    move-exception v127

    .line 1871
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string v7, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6c

    .line 1877
    .end local v127    # "e":Ljava/lang/Throwable;
    :catch_5f
    move-exception v127

    .line 1878
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string v7, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6d

    .line 1885
    .end local v127    # "e":Ljava/lang/Throwable;
    .restart local v223    # "versionInfo":Landroid/os/Bundle;
    :catch_60
    move-exception v127

    .line 1886
    .restart local v127    # "e":Ljava/lang/Throwable;
    const-string v7, "making Persona Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6e

    .line 499
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v47    # "safeMode":Z
    .end local v74    # "appWidget":Lcom/android/server/AppWidgetService;
    .end local v77    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v93    # "config":Landroid/content/res/Configuration;
    .end local v103    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v110    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .end local v125    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .end local v127    # "e":Ljava/lang/Throwable;
    .end local v129    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v140    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v149    # "location":Lcom/android/server/LocationManagerService;
    .end local v151    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v156    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v158    # "metrics":Landroid/util/DisplayMetrics;
    .end local v173    # "notification":Lcom/android/server/NotificationManagerService;
    .end local v182    # "printManager":Lcom/android/server/print/PrintManagerService;
    .end local v191    # "sLocation":Landroid/os/IBinder;
    .end local v201    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .end local v213    # "transcloud":Lcom/android/server/TranscloudMonitorService;
    .end local v215    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v223    # "versionInfo":Landroid/os/Bundle;
    .end local v226    # "w":Landroid/view/WindowManager;
    .end local v227    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v81    # "battery":Lcom/android/server/BatteryService;
    .restart local v106    # "cryptState":Ljava/lang/String;
    .restart local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v148    # "lights":Lcom/android/server/LightsService;
    .restart local v169    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v206    # "timaEnabled":Z
    :catch_61
    move-exception v7

    goto/16 :goto_c

    .line 1585
    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v81    # "battery":Lcom/android/server/BatteryService;
    .end local v106    # "cryptState":Ljava/lang/String;
    .end local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v148    # "lights":Lcom/android/server/LightsService;
    .end local v169    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v206    # "timaEnabled":Z
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v69    # "SecEDSEnable":Ljava/lang/String;
    .restart local v74    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v77    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v103    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v110    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v125    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v129    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v140    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v149    # "location":Lcom/android/server/LocationManagerService;
    .restart local v151    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v155    # "mdsEnable":Ljava/lang/String;
    .restart local v157    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v173    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v182    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v191    # "sLocation":Landroid/os/IBinder;
    .restart local v201    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v213    # "transcloud":Lcom/android/server/TranscloudMonitorService;
    .restart local v215    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v227    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :catch_62
    move-exception v127

    move-object/from16 v156, v157

    .end local v157    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v156    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    goto/16 :goto_8d

    .line 1576
    .end local v182    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v183    # "printManager":Lcom/android/server/print/PrintManagerService;
    :catch_63
    move-exception v127

    move-object/from16 v182, v183

    .end local v183    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v182    # "printManager":Lcom/android/server/print/PrintManagerService;
    goto/16 :goto_8c

    .line 1547
    .end local v77    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v78    # "atlas":Lcom/android/server/AssetAtlasService;
    :catch_64
    move-exception v127

    move-object/from16 v77, v78

    .end local v78    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v77    # "atlas":Lcom/android/server/AssetAtlasService;
    goto/16 :goto_8b

    .line 1528
    .end local v125    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v126    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    :catch_65
    move-exception v127

    move-object/from16 v125, v126

    .end local v126    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v125    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    goto/16 :goto_8a

    .line 1507
    .end local v91    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v92    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :catch_66
    move-exception v127

    move-object/from16 v91, v92

    .end local v92    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v91    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_89

    .line 1328
    .end local v69    # "SecEDSEnable":Ljava/lang/String;
    .end local v74    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v75    # "appWidget":Lcom/android/server/AppWidgetService;
    :catch_67
    move-exception v127

    move-object/from16 v74, v75

    .end local v75    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v74    # "appWidget":Lcom/android/server/AppWidgetService;
    goto/16 :goto_88

    .line 1283
    .end local v194    # "serial":Lcom/android/server/SerialService;
    .restart local v195    # "serial":Lcom/android/server/SerialService;
    :catch_68
    move-exception v127

    move-object/from16 v194, v195

    .end local v195    # "serial":Lcom/android/server/SerialService;
    .restart local v194    # "serial":Lcom/android/server/SerialService;
    goto/16 :goto_87

    .line 1274
    .end local v221    # "usb":Lcom/android/server/usb/UsbService;
    .restart local v222    # "usb":Lcom/android/server/usb/UsbService;
    :catch_69
    move-exception v127

    move-object/from16 v221, v222

    .end local v222    # "usb":Lcom/android/server/usb/UsbService;
    .restart local v221    # "usb":Lcom/android/server/usb/UsbService;
    goto/16 :goto_86

    .line 1234
    .end local v227    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v228    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :catch_6a
    move-exception v127

    move-object/from16 v227, v228

    .end local v228    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v227    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_85

    .line 1149
    .end local v103    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v104    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :catch_6b
    move-exception v127

    move-object/from16 v103, v104

    .end local v104    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v103    # "countryDetector":Lcom/android/server/CountryDetectorService;
    goto/16 :goto_84

    .line 1141
    .end local v149    # "location":Lcom/android/server/LocationManagerService;
    .restart local v150    # "location":Lcom/android/server/LocationManagerService;
    :catch_6c
    move-exception v127

    move-object/from16 v149, v150

    .end local v150    # "location":Lcom/android/server/LocationManagerService;
    .restart local v149    # "location":Lcom/android/server/LocationManagerService;
    goto/16 :goto_83

    .line 1124
    .end local v173    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v174    # "notification":Lcom/android/server/NotificationManagerService;
    :catch_6d
    move-exception v127

    move-object/from16 v173, v174

    .end local v174    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v173    # "notification":Lcom/android/server/NotificationManagerService;
    goto/16 :goto_82

    .line 1023
    .end local v94    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v95    # "connectivity":Lcom/android/server/ConnectivityService;
    :catch_6e
    move-exception v127

    move-object/from16 v94, v95

    .end local v95    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v94    # "connectivity":Lcom/android/server/ConnectivityService;
    goto/16 :goto_81

    .line 1008
    .end local v164    # "msapwifi":Lcom/android/server/MsapWifiService;
    .restart local v165    # "msapwifi":Lcom/android/server/MsapWifiService;
    :catch_6f
    move-exception v127

    move-object/from16 v164, v165

    .end local v165    # "msapwifi":Lcom/android/server/MsapWifiService;
    .restart local v164    # "msapwifi":Lcom/android/server/MsapWifiService;
    goto/16 :goto_80

    .line 999
    .end local v229    # "wifi":Lcom/android/server/wifi/WifiService;
    .restart local v230    # "wifi":Lcom/android/server/wifi/WifiService;
    :catch_70
    move-exception v127

    move-object/from16 v229, v230

    .end local v230    # "wifi":Lcom/android/server/wifi/WifiService;
    .restart local v229    # "wifi":Lcom/android/server/wifi/WifiService;
    goto/16 :goto_7f

    .line 991
    .end local v232    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v233    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    :catch_71
    move-exception v127

    move-object/from16 v232, v233

    .end local v233    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v232    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    goto/16 :goto_7e

    .line 983
    :catch_72
    move-exception v127

    goto/16 :goto_7d

    .line 973
    .end local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v169    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v170    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_73
    move-exception v127

    move-object/from16 v29, v170

    .end local v170    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_7c

    .line 963
    .end local v215    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v216    # "tsms":Lcom/android/server/TextServicesManagerService;
    :catch_74
    move-exception v127

    move-object/from16 v215, v216

    .end local v216    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v215    # "tsms":Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_7b

    .line 921
    .end local v201    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v202    # "statusBar":Lcom/android/server/StatusBarManagerService;
    :catch_75
    move-exception v127

    move-object/from16 v201, v202

    .end local v202    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v201    # "statusBar":Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_7a

    .line 911
    .end local v153    # "mHMS":Lcom/android/server/HarmonyEASService;
    .restart local v154    # "mHMS":Lcom/android/server/HarmonyEASService;
    :catch_76
    move-exception v127

    move-object/from16 v153, v154

    .end local v154    # "mHMS":Lcom/android/server/HarmonyEASService;
    .restart local v153    # "mHMS":Lcom/android/server/HarmonyEASService;
    goto/16 :goto_79

    .line 899
    .end local v129    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v130    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v223    # "versionInfo":Landroid/os/Bundle;
    :catch_77
    move-exception v127

    move-object/from16 v129, v130

    .end local v130    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v129    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    goto/16 :goto_78

    .line 870
    .end local v151    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v223    # "versionInfo":Landroid/os/Bundle;
    .restart local v152    # "lockSettings":Lcom/android/server/LockSettingsService;
    :catch_78
    move-exception v127

    move-object/from16 v151, v152

    .end local v152    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v151    # "lockSettings":Lcom/android/server/LockSettingsService;
    goto/16 :goto_77

    .line 837
    .end local v155    # "mdsEnable":Ljava/lang/String;
    .end local v162    # "mountService":Lcom/android/server/MountService;
    .restart local v163    # "mountService":Lcom/android/server/MountService;
    :catch_79
    move-exception v127

    move-object/from16 v162, v163

    .end local v163    # "mountService":Lcom/android/server/MountService;
    .restart local v162    # "mountService":Lcom/android/server/MountService;
    goto/16 :goto_76

    .line 823
    .end local v110    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v111    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    :catch_7a
    move-exception v127

    move-object/from16 v110, v111

    .end local v111    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v110    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_75

    .line 805
    :catch_7b
    move-exception v7

    goto/16 :goto_1f

    .line 771
    .end local v140    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v141    # "imm":Lcom/android/server/InputMethodManagerService;
    :catch_7c
    move-exception v127

    move-object/from16 v140, v141

    .end local v141    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v140    # "imm":Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_74

    .line 736
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v74    # "appWidget":Lcom/android/server/AppWidgetService;
    .end local v77    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v103    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v110    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .end local v125    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .end local v129    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v140    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v149    # "location":Lcom/android/server/LocationManagerService;
    .end local v151    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v156    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v173    # "notification":Lcom/android/server/NotificationManagerService;
    .end local v182    # "printManager":Lcom/android/server/print/PrintManagerService;
    .end local v191    # "sLocation":Landroid/os/IBinder;
    .end local v201    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .end local v213    # "transcloud":Lcom/android/server/TranscloudMonitorService;
    .end local v215    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v227    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v81    # "battery":Lcom/android/server/BatteryService;
    .restart local v120    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v148    # "lights":Lcom/android/server/LightsService;
    :catch_7d
    move-exception v127

    move-object/from16 v20, v142

    .end local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v72

    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v81

    .end local v81    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v11, v120

    .end local v120    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v6, v148

    .end local v148    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    goto/16 :goto_70

    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v204    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v81    # "battery":Lcom/android/server/BatteryService;
    .restart local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v148    # "lights":Lcom/android/server/LightsService;
    .restart local v205    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_7e
    move-exception v127

    move-object/from16 v204, v205

    .end local v205    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v204    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v142

    .end local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v72

    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v81

    .end local v81    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v148

    .end local v148    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    goto/16 :goto_70

    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v166    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v81    # "battery":Lcom/android/server/BatteryService;
    .restart local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v148    # "lights":Lcom/android/server/LightsService;
    .restart local v167    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    :catch_7f
    move-exception v127

    move-object/from16 v166, v167

    .end local v167    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .restart local v166    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    move-object/from16 v20, v142

    .end local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v72

    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v81

    .end local v81    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v148

    .end local v148    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    goto/16 :goto_70

    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v209    # "timaService":Lcom/android/server/TimaService;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v81    # "battery":Lcom/android/server/BatteryService;
    .restart local v106    # "cryptState":Ljava/lang/String;
    .restart local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v148    # "lights":Lcom/android/server/LightsService;
    .restart local v206    # "timaEnabled":Z
    .restart local v210    # "timaService":Lcom/android/server/TimaService;
    :catch_80
    move-exception v127

    move-object/from16 v209, v210

    .end local v210    # "timaService":Lcom/android/server/TimaService;
    .restart local v209    # "timaService":Lcom/android/server/TimaService;
    move-object/from16 v20, v142

    .end local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v72

    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v81

    .end local v81    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v148

    .end local v148    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    goto/16 :goto_70

    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v70    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v71    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v81    # "battery":Lcom/android/server/BatteryService;
    .restart local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v147    # "knoxVerInfo":Landroid/os/Bundle;
    .restart local v148    # "lights":Lcom/android/server/LightsService;
    .restart local v223    # "versionInfo":Landroid/os/Bundle;
    :catch_81
    move-exception v127

    move-object/from16 v20, v142

    .end local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v72

    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v81

    .end local v81    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v148

    .end local v148    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    move-object/from16 v70, v71

    .end local v71    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v70    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_70

    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v107    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v81    # "battery":Lcom/android/server/BatteryService;
    .restart local v108    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v148    # "lights":Lcom/android/server/LightsService;
    :catch_82
    move-exception v127

    move-object/from16 v107, v108

    .end local v108    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v107    # "dEncService":Lcom/android/server/DirEncryptService;
    move-object/from16 v20, v142

    .end local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v72

    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v81

    .end local v81    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v148

    .end local v148    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    goto/16 :goto_70

    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v100    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v81    # "battery":Lcom/android/server/BatteryService;
    .restart local v101    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    .restart local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v148    # "lights":Lcom/android/server/LightsService;
    :catch_83
    move-exception v127

    move-object/from16 v100, v101

    .end local v101    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    .restart local v100    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    move-object/from16 v20, v142

    .end local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v72

    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v81

    .end local v81    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v148

    .end local v148    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    goto/16 :goto_70

    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v81    # "battery":Lcom/android/server/BatteryService;
    .restart local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    :catch_84
    move-exception v127

    move-object/from16 v20, v142

    .end local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v72

    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v81

    .end local v81    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    goto/16 :goto_70

    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    :catch_85
    move-exception v127

    move-object/from16 v20, v142

    .end local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v72

    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    goto/16 :goto_70

    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v98    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v224    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v79    # "autoMode":Z
    .restart local v99    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v193    # "screenMode":I
    .restart local v203    # "tactileAssist":Lcom/android/server/TactileAssistService;
    .restart local v212    # "toolbox":Lcom/samsung/android/toolbox/TwToolBoxService;
    .restart local v225    # "vibrator":Lcom/android/server/VibratorService;
    :catch_86
    move-exception v127

    move-object/from16 v98, v99

    .end local v99    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v98    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v20, v142

    .end local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v72

    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v224, v225

    .end local v225    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v224    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_70

    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v98    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v224    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v99    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v225    # "vibrator":Lcom/android/server/VibratorService;
    :catch_87
    move-exception v127

    move-object/from16 v98, v99

    .end local v99    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v98    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v20, v142

    .end local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v224, v225

    .end local v225    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v224    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_70

    .end local v82    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .end local v98    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v224    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v83    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v99    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v225    # "vibrator":Lcom/android/server/VibratorService;
    :catch_88
    move-exception v127

    move-object/from16 v98, v99

    .end local v99    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v98    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v82, v83

    .end local v83    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v82    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    move-object/from16 v224, v225

    .end local v225    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v224    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_70

    .end local v98    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v185    # "rcpManagerService":Lcom/android/server/RCPManagerService;
    .end local v224    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v99    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v186    # "rcpManagerService":Lcom/android/server/RCPManagerService;
    .restart local v225    # "vibrator":Lcom/android/server/VibratorService;
    :catch_89
    move-exception v127

    move-object/from16 v185, v186

    .end local v186    # "rcpManagerService":Lcom/android/server/RCPManagerService;
    .restart local v185    # "rcpManagerService":Lcom/android/server/RCPManagerService;
    move-object/from16 v98, v99

    .end local v99    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v98    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v224, v225

    .end local v225    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v224    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_70

    .line 731
    .end local v98    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v185    # "rcpManagerService":Lcom/android/server/RCPManagerService;
    .end local v224    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v99    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v186    # "rcpManagerService":Lcom/android/server/RCPManagerService;
    .restart local v225    # "vibrator":Lcom/android/server/VibratorService;
    :catch_8a
    move-exception v127

    move-object/from16 v185, v186

    .end local v186    # "rcpManagerService":Lcom/android/server/RCPManagerService;
    .restart local v185    # "rcpManagerService":Lcom/android/server/RCPManagerService;
    goto/16 :goto_73

    .line 580
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v79    # "autoMode":Z
    .end local v99    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v100    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    .end local v193    # "screenMode":I
    .end local v203    # "tactileAssist":Lcom/android/server/TactileAssistService;
    .end local v212    # "toolbox":Lcom/samsung/android/toolbox/TwToolBoxService;
    .end local v225    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v81    # "battery":Lcom/android/server/BatteryService;
    .restart local v98    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v101    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    .restart local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v148    # "lights":Lcom/android/server/LightsService;
    .restart local v224    # "vibrator":Lcom/android/server/VibratorService;
    :catch_8b
    move-exception v127

    move-object/from16 v100, v101

    .end local v101    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    .restart local v100    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    goto/16 :goto_72

    .line 539
    .end local v70    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v71    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :catch_8c
    move-exception v127

    move-object/from16 v70, v71

    .end local v71    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v70    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_71

    .line 464
    .end local v147    # "knoxVerInfo":Landroid/os/Bundle;
    .end local v209    # "timaService":Lcom/android/server/TimaService;
    .end local v223    # "versionInfo":Landroid/os/Bundle;
    .restart local v210    # "timaService":Lcom/android/server/TimaService;
    :catch_8d
    move-exception v127

    move-object/from16 v209, v210

    .end local v210    # "timaService":Lcom/android/server/TimaService;
    .restart local v209    # "timaService":Lcom/android/server/TimaService;
    goto/16 :goto_6f

    .line 397
    .end local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v106    # "cryptState":Ljava/lang/String;
    .end local v112    # "disableBluetooth":Z
    .end local v113    # "disableLocation":Z
    .end local v114    # "disableMedia":Z
    .end local v115    # "disableNetwork":Z
    .end local v116    # "disableNonCoreServices":Z
    .end local v117    # "disableStorage":Z
    .end local v118    # "disableSystemUI":Z
    .end local v119    # "disableTelephony":Z
    .end local v143    # "installer":Lcom/android/server/pm/Installer;
    .end local v206    # "timaEnabled":Z
    .restart local v120    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v144    # "installer":Lcom/android/server/pm/Installer;
    :catch_8e
    move-exception v127

    move-object/from16 v143, v144

    .end local v144    # "installer":Lcom/android/server/pm/Installer;
    .restart local v143    # "installer":Lcom/android/server/pm/Installer;
    goto/16 :goto_6

    .end local v4    # "power":Lcom/android/server/power/PowerManagerService;
    .end local v143    # "installer":Lcom/android/server/pm/Installer;
    .restart local v144    # "installer":Lcom/android/server/pm/Installer;
    .restart local v180    # "power":Lcom/android/server/power/PowerManagerService;
    :catch_8f
    move-exception v127

    move-object/from16 v4, v180

    .end local v180    # "power":Lcom/android/server/power/PowerManagerService;
    .restart local v4    # "power":Lcom/android/server/power/PowerManagerService;
    move-object/from16 v143, v144

    .end local v144    # "installer":Lcom/android/server/pm/Installer;
    .restart local v143    # "installer":Lcom/android/server/pm/Installer;
    goto/16 :goto_6

    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v81    # "battery":Lcom/android/server/BatteryService;
    .end local v120    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v142    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v148    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    .restart local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v74    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v77    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v103    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v110    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v112    # "disableBluetooth":Z
    .restart local v113    # "disableLocation":Z
    .restart local v114    # "disableMedia":Z
    .restart local v115    # "disableNetwork":Z
    .restart local v116    # "disableNonCoreServices":Z
    .restart local v117    # "disableStorage":Z
    .restart local v118    # "disableSystemUI":Z
    .restart local v119    # "disableTelephony":Z
    .restart local v125    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v129    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v140    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v149    # "location":Lcom/android/server/LocationManagerService;
    .restart local v151    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v155    # "mdsEnable":Ljava/lang/String;
    .restart local v156    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v173    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v182    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v191    # "sLocation":Landroid/os/IBinder;
    .restart local v201    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v213    # "transcloud":Lcom/android/server/TranscloudMonitorService;
    .restart local v215    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v227    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :cond_56
    move-object/from16 v25, v169

    .end local v169    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_33

    .end local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v155    # "mdsEnable":Ljava/lang/String;
    .restart local v169    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :cond_57
    move-object/from16 v25, v169

    .end local v169    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_60
.end method

.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 220
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 222
    return-void
.end method
