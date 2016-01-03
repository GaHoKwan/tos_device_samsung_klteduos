.class public Landroid/content/pm/PersonaInfo;
.super Landroid/content/pm/UserInfo;
.source "PersonaInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/PersonaInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_ENCRYPT:I = 0x20

.field public static final FLAG_MIGRATION:I = 0x100

.field public static final FLAG_SECURE_STORAGE:I = 0x40

.field public static final KLMS_LOCKED:I = 0x9

.field public static final KNOX_STATE_ADMIN_LOCKED:I = 0x8

.field public static final KNOX_STATE_TIMA_COMPROMISED:I = 0x7

.field public static final KNOX_STATE_UPGRADING:I = 0x6

.field private static final LOG_TAG:Ljava/lang/String; = "PersonaInfo"

.field public static final PERSONA_TYPE_DEFAULT:Ljava/lang/String; = "default"

.field public static final STATE_ACTIVE:I = 0x0

.field public static final STATE_CREATE:I = 0x4

.field public static final STATE_DELETING:I = 0x3

.field public static final STATE_INITIALIZE:I = 0x1

.field public static final STATE_INVALID:I = -0x1

.field public static final STATE_LOCKED:I = 0x2

.field public static final STATE_RESET:I = 0x63

.field public static final STATE_RESET_PASSWORD:I = 0x5


# instance fields
.field private adminPackageName:Ljava/lang/String;

.field private adminUid:I

.field private creatorUid:I

.field public encryptedId:Ljava/lang/String;

.field public fwversion:Ljava/lang/String;

.field private handlerApkLocation:Ljava/lang/String;

.field private handlerPackageName:Ljava/lang/String;

.field private handlerServiceName:Ljava/lang/String;

.field private installedPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public isFsMounted:Z

.field public isKioskModeEnabled:Z

.field public isLightWeightContainer:Z

.field public isPureContainer:Z

.field public isSuperLocked:Z

.field public isUserManaged:Z

.field public lastLoggedOutTime:J

.field public lockInProgress:Z

.field public oldState:I

.field parentId:I

.field public removePersona:Z

.field public resetPassword:Z

.field public resetPersonaOnReboot:Z

.field public samsungAccount:Ljava/lang/String;

.field private setupWizardApkLocation:Ljava/lang/String;

.field public state:I

.field public timaEcrytfsIndex:I

.field public timaPasswordIndex:I

.field public type:Ljava/lang/String;

.field public upgradeInProgress:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 366
    new-instance v0, Landroid/content/pm/PersonaInfo$1;

    invoke-direct {v0}, Landroid/content/pm/PersonaInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/PersonaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 158
    invoke-direct {p0}, Landroid/content/pm/UserInfo;-><init>()V

    .line 62
    iput v3, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    .line 63
    iput v3, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    .line 64
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    .line 65
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerServiceName:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerPackageName:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerApkLocation:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    .line 70
    iput v3, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    .line 71
    const-string v0, "default"

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    .line 73
    const/4 v0, 0x4

    iput v0, p0, Landroid/content/pm/PersonaInfo;->state:I

    .line 74
    iput v3, p0, Landroid/content/pm/PersonaInfo;->timaEcrytfsIndex:I

    .line 75
    iput v3, p0, Landroid/content/pm/PersonaInfo;->timaPasswordIndex:I

    .line 76
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z

    .line 77
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    .line 78
    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    .line 81
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isLightWeightContainer:Z

    .line 82
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    .line 83
    iput v3, p0, Landroid/content/pm/PersonaInfo;->oldState:I

    .line 84
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    .line 86
    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    .line 87
    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    .line 88
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->lockInProgress:Z

    .line 89
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    .line 90
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isPureContainer:Z

    .line 91
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    .line 92
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->upgradeInProgress:Z

    .line 159
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;III)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "parentId"    # I
    .param p5, "creatorUid"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 95
    invoke-direct {p0, p1, p2, v4, p3}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 62
    iput v3, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    .line 63
    iput v3, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    .line 64
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    .line 65
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerServiceName:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerPackageName:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerApkLocation:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    .line 70
    iput v3, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    .line 71
    const-string v0, "default"

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    .line 73
    const/4 v0, 0x4

    iput v0, p0, Landroid/content/pm/PersonaInfo;->state:I

    .line 74
    iput v3, p0, Landroid/content/pm/PersonaInfo;->timaEcrytfsIndex:I

    .line 75
    iput v3, p0, Landroid/content/pm/PersonaInfo;->timaPasswordIndex:I

    .line 76
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z

    .line 77
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    .line 78
    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    .line 81
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isLightWeightContainer:Z

    .line 82
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    .line 83
    iput v3, p0, Landroid/content/pm/PersonaInfo;->oldState:I

    .line 84
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    .line 86
    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    .line 87
    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    .line 88
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->lockInProgress:Z

    .line 89
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    .line 90
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isPureContainer:Z

    .line 91
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    .line 92
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->upgradeInProgress:Z

    .line 96
    iput p4, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    .line 97
    iput p5, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    .line 98
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;III)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "iconPath"    # Ljava/lang/String;
    .param p4, "flags"    # I
    .param p5, "parentId"    # I
    .param p6, "creatorUid"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 100
    invoke-direct {p0}, Landroid/content/pm/UserInfo;-><init>()V

    .line 62
    iput v3, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    .line 63
    iput v3, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    .line 64
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    .line 65
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerServiceName:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerPackageName:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerApkLocation:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    .line 70
    iput v3, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    .line 71
    const-string v0, "default"

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    .line 73
    const/4 v0, 0x4

    iput v0, p0, Landroid/content/pm/PersonaInfo;->state:I

    .line 74
    iput v3, p0, Landroid/content/pm/PersonaInfo;->timaEcrytfsIndex:I

    .line 75
    iput v3, p0, Landroid/content/pm/PersonaInfo;->timaPasswordIndex:I

    .line 76
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z

    .line 77
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    .line 78
    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    .line 81
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isLightWeightContainer:Z

    .line 82
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    .line 83
    iput v3, p0, Landroid/content/pm/PersonaInfo;->oldState:I

    .line 84
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    .line 86
    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    .line 87
    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    .line 88
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->lockInProgress:Z

    .line 89
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    .line 90
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isPureContainer:Z

    .line 91
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    .line 92
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->upgradeInProgress:Z

    .line 101
    iput p1, p0, Landroid/content/pm/UserInfo;->id:I

    .line 102
    iput-object p2, p0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 103
    iput p4, p0, Landroid/content/pm/UserInfo;->flags:I

    .line 104
    iput-object p3, p0, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    .line 105
    iput p5, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    .line 106
    iput p6, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PersonaInfo;)V
    .locals 5
    .param p1, "orig"    # Landroid/content/pm/PersonaInfo;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 161
    invoke-direct {p0}, Landroid/content/pm/UserInfo;-><init>()V

    .line 62
    iput v3, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    .line 63
    iput v3, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    .line 64
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    .line 65
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerServiceName:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerPackageName:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerApkLocation:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    .line 70
    iput v3, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    .line 71
    const-string v0, "default"

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    .line 73
    const/4 v0, 0x4

    iput v0, p0, Landroid/content/pm/PersonaInfo;->state:I

    .line 74
    iput v3, p0, Landroid/content/pm/PersonaInfo;->timaEcrytfsIndex:I

    .line 75
    iput v3, p0, Landroid/content/pm/PersonaInfo;->timaPasswordIndex:I

    .line 76
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z

    .line 77
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    .line 78
    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    .line 81
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isLightWeightContainer:Z

    .line 82
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    .line 83
    iput v3, p0, Landroid/content/pm/PersonaInfo;->oldState:I

    .line 84
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    .line 86
    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    .line 87
    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    .line 88
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->lockInProgress:Z

    .line 89
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    .line 90
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isPureContainer:Z

    .line 91
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    .line 92
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->upgradeInProgress:Z

    .line 162
    iget-object v0, p1, Landroid/content/pm/PersonaInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->name:Ljava/lang/String;

    .line 163
    iget-object v0, p1, Landroid/content/pm/PersonaInfo;->iconPath:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->iconPath:Ljava/lang/String;

    .line 164
    iget v0, p1, Landroid/content/pm/PersonaInfo;->id:I

    iput v0, p0, Landroid/content/pm/PersonaInfo;->id:I

    .line 165
    iget v0, p1, Landroid/content/pm/PersonaInfo;->flags:I

    iput v0, p0, Landroid/content/pm/PersonaInfo;->flags:I

    .line 166
    iget v0, p1, Landroid/content/pm/PersonaInfo;->serialNumber:I

    iput v0, p0, Landroid/content/pm/PersonaInfo;->serialNumber:I

    .line 167
    iget-wide v0, p1, Landroid/content/pm/PersonaInfo;->creationTime:J

    iput-wide v0, p0, Landroid/content/pm/PersonaInfo;->creationTime:J

    .line 168
    iget-wide v0, p1, Landroid/content/pm/PersonaInfo;->lastLoggedInTime:J

    iput-wide v0, p0, Landroid/content/pm/PersonaInfo;->lastLoggedInTime:J

    .line 169
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->partial:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->partial:Z

    .line 170
    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getParentId()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    .line 171
    iget-object v0, p1, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    .line 172
    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getHandlerServiceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerServiceName:Ljava/lang/String;

    .line 173
    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getHandlerPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerPackageName:Ljava/lang/String;

    .line 174
    iget-wide v0, p1, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    iput-wide v0, p0, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    .line 175
    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getCreatorUid()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    .line 176
    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getSetupWizardApkLocation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    .line 177
    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getHandlerApkLocation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerApkLocation:Ljava/lang/String;

    .line 178
    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getAdminPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    .line 179
    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getAdminUid()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    .line 180
    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getTimaEcrytfsIndex()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->timaEcrytfsIndex:I

    .line 181
    invoke-virtual {p1}, Landroid/content/pm/PersonaInfo;->getTimaPasswordIndex()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->timaPasswordIndex:I

    .line 182
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->removePersona:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    .line 183
    iget-object v0, p1, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    .line 184
    iget-object v0, p1, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    .line 185
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    .line 186
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    .line 187
    iget v0, p1, Landroid/content/pm/PersonaInfo;->oldState:I

    iput v0, p0, Landroid/content/pm/PersonaInfo;->oldState:I

    .line 188
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    .line 189
    iget-object v0, p1, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    .line 190
    iget-object v0, p1, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    .line 191
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->isLightWeightContainer:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isLightWeightContainer:Z

    .line 192
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    .line 193
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->isPureContainer:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isPureContainer:Z

    .line 194
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    .line 195
    iget-boolean v0, p1, Landroid/content/pm/PersonaInfo;->upgradeInProgress:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->upgradeInProgress:Z

    .line 196
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/UserInfo;)V
    .locals 5
    .param p1, "orig"    # Landroid/content/pm/UserInfo;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 199
    invoke-direct {p0}, Landroid/content/pm/UserInfo;-><init>()V

    .line 62
    iput v3, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    .line 63
    iput v3, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    .line 64
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    .line 65
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerServiceName:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerPackageName:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerApkLocation:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    .line 70
    iput v3, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    .line 71
    const-string v0, "default"

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    .line 73
    const/4 v0, 0x4

    iput v0, p0, Landroid/content/pm/PersonaInfo;->state:I

    .line 74
    iput v3, p0, Landroid/content/pm/PersonaInfo;->timaEcrytfsIndex:I

    .line 75
    iput v3, p0, Landroid/content/pm/PersonaInfo;->timaPasswordIndex:I

    .line 76
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z

    .line 77
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    .line 78
    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    .line 81
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isLightWeightContainer:Z

    .line 82
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    .line 83
    iput v3, p0, Landroid/content/pm/PersonaInfo;->oldState:I

    .line 84
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    .line 86
    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    .line 87
    iput-object v4, p0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    .line 88
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->lockInProgress:Z

    .line 89
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    .line 90
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isPureContainer:Z

    .line 91
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    .line 92
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->upgradeInProgress:Z

    .line 200
    iget-object v0, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->name:Ljava/lang/String;

    .line 201
    iget-object v0, p1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->iconPath:Ljava/lang/String;

    .line 202
    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    iput v0, p0, Landroid/content/pm/PersonaInfo;->id:I

    .line 203
    iget v0, p1, Landroid/content/pm/UserInfo;->flags:I

    iput v0, p0, Landroid/content/pm/PersonaInfo;->flags:I

    .line 204
    iget v0, p1, Landroid/content/pm/UserInfo;->serialNumber:I

    iput v0, p0, Landroid/content/pm/PersonaInfo;->serialNumber:I

    .line 205
    iget-wide v0, p1, Landroid/content/pm/UserInfo;->creationTime:J

    iput-wide v0, p0, Landroid/content/pm/PersonaInfo;->creationTime:J

    .line 206
    iget-wide v0, p1, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    iput-wide v0, p0, Landroid/content/pm/PersonaInfo;->lastLoggedInTime:J

    .line 207
    iget-boolean v0, p1, Landroid/content/pm/UserInfo;->partial:Z

    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->partial:Z

    .line 208
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 376
    invoke-direct {p0}, Landroid/content/pm/UserInfo;-><init>()V

    .line 62
    iput v5, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    .line 63
    iput v5, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    .line 64
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    .line 65
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerServiceName:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerPackageName:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerApkLocation:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    .line 70
    iput v5, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    .line 71
    const-string v0, "default"

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    .line 73
    const/4 v0, 0x4

    iput v0, p0, Landroid/content/pm/PersonaInfo;->state:I

    .line 74
    iput v5, p0, Landroid/content/pm/PersonaInfo;->timaEcrytfsIndex:I

    .line 75
    iput v5, p0, Landroid/content/pm/PersonaInfo;->timaPasswordIndex:I

    .line 76
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z

    .line 77
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    .line 78
    iput-object v6, p0, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    .line 80
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    .line 81
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isLightWeightContainer:Z

    .line 82
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    .line 83
    iput v5, p0, Landroid/content/pm/PersonaInfo;->oldState:I

    .line 84
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    .line 86
    iput-object v6, p0, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    .line 87
    iput-object v6, p0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    .line 88
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->lockInProgress:Z

    .line 89
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    .line 90
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->isPureContainer:Z

    .line 91
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    .line 92
    iput-boolean v2, p0, Landroid/content/pm/PersonaInfo;->upgradeInProgress:Z

    .line 377
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->id:I

    .line 378
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->name:Ljava/lang/String;

    .line 379
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->iconPath:Ljava/lang/String;

    .line 380
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->flags:I

    .line 381
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->serialNumber:I

    .line 382
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/content/pm/PersonaInfo;->creationTime:J

    .line 383
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/content/pm/PersonaInfo;->lastLoggedInTime:J

    .line 384
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->partial:Z

    .line 385
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    .line 386
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    .line 387
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->state:I

    .line 388
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerServiceName:Ljava/lang/String;

    .line 389
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerPackageName:Ljava/lang/String;

    .line 390
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    .line 391
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    .line 392
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    .line 393
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerApkLocation:Ljava/lang/String;

    .line 394
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z

    .line 395
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    .line 396
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    .line 397
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->timaEcrytfsIndex:I

    .line 398
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->timaPasswordIndex:I

    .line 399
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    .line 400
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    .line 401
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    .line 402
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    .line 403
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    .line 404
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PersonaInfo;->oldState:I

    .line 405
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    .line 406
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    .line 407
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isLightWeightContainer:Z

    .line 408
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    .line 409
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_8
    iput-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isPureContainer:Z

    .line 410
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    :goto_9
    iput-boolean v1, p0, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    .line 411
    return-void

    :cond_0
    move v0, v2

    .line 384
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 394
    goto :goto_1

    :cond_2
    move v0, v2

    .line 399
    goto :goto_2

    :cond_3
    move v0, v2

    .line 402
    goto :goto_3

    :cond_4
    move v0, v2

    .line 403
    goto :goto_4

    :cond_5
    move v0, v2

    .line 405
    goto :goto_5

    :cond_6
    move v0, v2

    .line 407
    goto :goto_6

    :cond_7
    move v0, v2

    .line 408
    goto :goto_7

    :cond_8
    move v0, v2

    .line 409
    goto :goto_8

    :cond_9
    move v1, v2

    .line 410
    goto :goto_9
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/PersonaInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/content/pm/PersonaInfo$1;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/content/pm/PersonaInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 326
    const/4 v0, 0x0

    return v0
.end method

.method public getAdminPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getAdminUid()I
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    return v0
.end method

.method public getCreatorUid()I
    .locals 3

    .prologue
    .line 256
    const-string v0, "PersonaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getCreatorUid: for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget v0, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    return v0
.end method

.method public getHandlerApkLocation()Ljava/lang/String;
    .locals 3

    .prologue
    .line 292
    const-string v0, "PersonaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHandlerApkLocation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/PersonaInfo;->handlerApkLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerApkLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getHandlerPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getHandlerServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public getIconPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Landroid/content/pm/UserInfo;->id:I

    return v0
.end method

.method public getInstalledPkgList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 310
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParentId()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    return v0
.end method

.method public getPersonaHandle()Landroid/os/PersonaHandle;
    .locals 2

    .prologue
    .line 212
    new-instance v0, Landroid/os/PersonaHandle;

    iget v1, p0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-direct {v0, v1}, Landroid/os/PersonaHandle;-><init>(I)V

    return-object v0
.end method

.method public getSetupWizardApkLocation()Ljava/lang/String;
    .locals 3

    .prologue
    .line 282
    const-string v0, "PersonaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSetupWizardApkLocation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getTimaEcrytfsIndex()I
    .locals 1

    .prologue
    .line 266
    iget v0, p0, Landroid/content/pm/PersonaInfo;->timaEcrytfsIndex:I

    return v0
.end method

.method public getTimaPasswordIndex()I
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Landroid/content/pm/PersonaInfo;->timaPasswordIndex:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUserHandle()Landroid/os/UserHandle;
    .locals 2

    .prologue
    .line 216
    new-instance v0, Landroid/os/UserHandle;

    iget v1, p0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    return-object v0
.end method

.method public getsamsungAccount()Ljava/lang/String;
    .locals 3

    .prologue
    .line 301
    const-string v0, "PersonaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHandlerApkLocation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    return-object v0
.end method

.method public isAdmin()Z
    .locals 2

    .prologue
    .line 136
    iget v0, p0, Landroid/content/pm/PersonaInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGuest()Z
    .locals 2

    .prologue
    .line 140
    iget v0, p0, Landroid/content/pm/PersonaInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMigratedPersona()Z
    .locals 2

    .prologue
    .line 154
    iget v0, p0, Landroid/content/pm/PersonaInfo;->flags:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrimary()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 132
    iget v1, p0, Landroid/content/pm/PersonaInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSecureFileSystem()Z
    .locals 2

    .prologue
    .line 144
    iget v0, p0, Landroid/content/pm/PersonaInfo;->flags:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSecureStorageEnabled()Z
    .locals 2

    .prologue
    .line 148
    iget v0, p0, Landroid/content/pm/PersonaInfo;->flags:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAdminPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "adminPackageName"    # Ljava/lang/String;

    .prologue
    .line 244
    iput-object p1, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    .line 245
    return-void
.end method

.method public setAdminUid(I)V
    .locals 0
    .param p1, "adminUid"    # I

    .prologue
    .line 252
    iput p1, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    .line 253
    return-void
.end method

.method public setCreatorUid(I)V
    .locals 3
    .param p1, "creatorUid"    # I

    .prologue
    .line 261
    const-string v0, "PersonaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setCreatorUid: for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iput p1, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    .line 263
    return-void
.end method

.method public setHandlerApkLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "handlerApkLocation"    # Ljava/lang/String;

    .prologue
    .line 297
    iput-object p1, p0, Landroid/content/pm/PersonaInfo;->handlerApkLocation:Ljava/lang/String;

    .line 298
    return-void
.end method

.method public setHandlerPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "handlerPackageName"    # Ljava/lang/String;

    .prologue
    .line 228
    iput-object p1, p0, Landroid/content/pm/PersonaInfo;->handlerPackageName:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public setHandlerServiceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "handlerServiceName"    # Ljava/lang/String;

    .prologue
    .line 236
    iput-object p1, p0, Landroid/content/pm/PersonaInfo;->handlerServiceName:Ljava/lang/String;

    .line 237
    return-void
.end method

.method public setInstalledPkgList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 314
    .local p1, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    .line 316
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->installedPkgList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 318
    :cond_0
    return-void
.end method

.method public setSetupWizardApkLocation(Ljava/lang/String;)V
    .locals 3
    .param p1, "setupWizardApkLocation"    # Ljava/lang/String;

    .prologue
    .line 287
    const-string v0, "PersonaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSetupWizardApkLocation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iput-object p1, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    .line 289
    return-void
.end method

.method public setTimaEcrytfsIndex(I)V
    .locals 0
    .param p1, "timaEcrytfsIndex"    # I

    .prologue
    .line 270
    iput p1, p0, Landroid/content/pm/PersonaInfo;->timaEcrytfsIndex:I

    .line 271
    return-void
.end method

.method public setTimaPasswordIndex(I)V
    .locals 0
    .param p1, "timaPasswordIndex"    # I

    .prologue
    .line 278
    iput p1, p0, Landroid/content/pm/PersonaInfo;->timaPasswordIndex:I

    .line 279
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setsamsungAccount(Ljava/lang/String;)V
    .locals 0
    .param p1, "samsungAccount"    # Ljava/lang/String;

    .prologue
    .line 306
    iput-object p1, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    .line 307
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PersonaInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/PersonaInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/PersonaInfo;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 330
    iget v0, p0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 331
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->iconPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 333
    iget v0, p0, Landroid/content/pm/PersonaInfo;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    iget v0, p0, Landroid/content/pm/PersonaInfo;->serialNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    iget-wide v3, p0, Landroid/content/pm/PersonaInfo;->creationTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 336
    iget-wide v3, p0, Landroid/content/pm/PersonaInfo;->lastLoggedInTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 337
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->partial:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    iget v0, p0, Landroid/content/pm/PersonaInfo;->parentId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 340
    iget v0, p0, Landroid/content/pm/PersonaInfo;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerServiceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 343
    iget-wide v3, p0, Landroid/content/pm/PersonaInfo;->lastLoggedOutTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 344
    iget v0, p0, Landroid/content/pm/PersonaInfo;->creatorUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->handlerApkLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 347
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->adminPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 349
    iget v0, p0, Landroid/content/pm/PersonaInfo;->adminUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 350
    iget v0, p0, Landroid/content/pm/PersonaInfo;->timaEcrytfsIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    iget v0, p0, Landroid/content/pm/PersonaInfo;->timaPasswordIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 352
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 353
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->encryptedId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->samsungAccount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 355
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    iget v0, p0, Landroid/content/pm/PersonaInfo;->oldState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 358
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isFsMounted:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    iget-object v0, p0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 360
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isLightWeightContainer:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 362
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->isPureContainer:Z

    if-eqz v0, :cond_8

    move v0, v1

    :goto_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    iget-boolean v0, p0, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    if-eqz v0, :cond_9

    :goto_9
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 364
    return-void

    :cond_0
    move v0, v2

    .line 337
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 347
    goto :goto_1

    :cond_2
    move v0, v2

    .line 352
    goto :goto_2

    :cond_3
    move v0, v2

    .line 355
    goto :goto_3

    :cond_4
    move v0, v2

    .line 356
    goto :goto_4

    :cond_5
    move v0, v2

    .line 358
    goto :goto_5

    :cond_6
    move v0, v2

    .line 360
    goto :goto_6

    :cond_7
    move v0, v2

    .line 361
    goto :goto_7

    :cond_8
    move v0, v2

    .line 362
    goto :goto_8

    :cond_9
    move v1, v2

    .line 363
    goto :goto_9
.end method
