.class Landroid/media/TextTrackCueSpan;
.super Ljava/lang/Object;
.source "WebVttRenderer.java"


# instance fields
.field mEnabled:Z

.field mText:Ljava/lang/String;

.field mTimestampMs:J


# direct methods
.method constructor <init>(Ljava/lang/String;J)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "timestamp"    # J

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-wide p2, p0, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    .line 79
    iput-object p1, p0, Landroid/media/TextTrackCueSpan;->mText:Ljava/lang/String;

    .line 81
    iget-wide v0, p0, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/media/TextTrackCueSpan;->mEnabled:Z

    .line 82
    return-void

    .line 81
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 86
    instance-of v2, p1, Landroid/media/TextTrackCueSpan;

    if-nez v2, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 89
    check-cast v0, Landroid/media/TextTrackCueSpan;

    .line 90
    .local v0, "span":Landroid/media/TextTrackCueSpan;
    iget-wide v2, p0, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    iget-wide v4, v0, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/media/TextTrackCueSpan;->mText:Ljava/lang/String;

    iget-object v3, v0, Landroid/media/TextTrackCueSpan;->mText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method
