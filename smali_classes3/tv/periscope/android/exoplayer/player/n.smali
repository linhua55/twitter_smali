.class public Ltv/periscope/android/exoplayer/player/n;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ltv/periscope/android/exoplayer/player/k;
.implements Ltv/periscope/android/video/rtmp/e;


# instance fields
.field private A:J

.field private B:Ltv/periscope/android/video/rtmp/o;

.field private C:Ltv/periscope/android/video/rtmp/o;

.field private D:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Ltv/periscope/android/exoplayer/player/e;

.field private d:Ltv/periscope/android/video/rtmp/Connection;

.field private e:Ltv/periscope/android/exoplayer/player/r;

.field private f:Ltv/periscope/android/exoplayer/player/r;

.field private g:Ltv/periscope/android/exoplayer/player/p;

.field private h:Ljava/util/Timer;

.field private i:J

.field private j:Z

.field private k:J

.field private l:Ltv/periscope/android/video/rtmp/o;

.field private m:Ltv/periscope/android/video/rtmp/o;

.field private n:J

.field private o:J

.field private p:Ltv/periscope/android/video/rtmp/o;

.field private q:J

.field private r:J

.field private s:J

.field private t:J

.field private u:J

.field private v:J

.field private w:J

.field private x:J

.field private y:J

.field private z:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ltv/periscope/android/exoplayer/player/p;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v0, p0, Ltv/periscope/android/exoplayer/player/n;->e:Ltv/periscope/android/exoplayer/player/r;

    .line 46
    iput-object v0, p0, Ltv/periscope/android/exoplayer/player/n;->f:Ltv/periscope/android/exoplayer/player/r;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/periscope/android/exoplayer/player/n;->j:Z

    .line 58
    iput-wide v2, p0, Ltv/periscope/android/exoplayer/player/n;->k:J

    .line 60
    new-instance v0, Ltv/periscope/android/video/rtmp/o;

    invoke-direct {v0}, Ltv/periscope/android/video/rtmp/o;-><init>()V

    iput-object v0, p0, Ltv/periscope/android/exoplayer/player/n;->l:Ltv/periscope/android/video/rtmp/o;

    .line 61
    new-instance v0, Ltv/periscope/android/video/rtmp/o;

    invoke-direct {v0}, Ltv/periscope/android/video/rtmp/o;-><init>()V

    iput-object v0, p0, Ltv/periscope/android/exoplayer/player/n;->m:Ltv/periscope/android/video/rtmp/o;

    .line 62
    iput-wide v2, p0, Ltv/periscope/android/exoplayer/player/n;->n:J

    .line 63
    iput-wide v2, p0, Ltv/periscope/android/exoplayer/player/n;->o:J

    .line 65
    new-instance v0, Ltv/periscope/android/video/rtmp/o;

    invoke-direct {v0}, Ltv/periscope/android/video/rtmp/o;-><init>()V

    iput-object v0, p0, Ltv/periscope/android/exoplayer/player/n;->p:Ltv/periscope/android/video/rtmp/o;

    .line 66
    iput-wide v2, p0, Ltv/periscope/android/exoplayer/player/n;->q:J

    .line 67
    iput-wide v2, p0, Ltv/periscope/android/exoplayer/player/n;->r:J

    .line 68
    iput-wide v2, p0, Ltv/periscope/android/exoplayer/player/n;->s:J

    .line 69
    iput-wide v2, p0, Ltv/periscope/android/exoplayer/player/n;->t:J

    .line 70
    iput-wide v2, p0, Ltv/periscope/android/exoplayer/player/n;->u:J

    .line 71
    iput-wide v2, p0, Ltv/periscope/android/exoplayer/player/n;->v:J

    .line 72
    iput-wide v2, p0, Ltv/periscope/android/exoplayer/player/n;->w:J

    .line 74
    iput-wide v2, p0, Ltv/periscope/android/exoplayer/player/n;->x:J

    .line 75
    iput-wide v2, p0, Ltv/periscope/android/exoplayer/player/n;->y:J

    .line 76
    iput-wide v2, p0, Ltv/periscope/android/exoplayer/player/n;->z:J

    .line 77
    iput-wide v2, p0, Ltv/periscope/android/exoplayer/player/n;->A:J

    .line 78
    new-instance v0, Ltv/periscope/android/video/rtmp/o;

    invoke-direct {v0}, Ltv/periscope/android/video/rtmp/o;-><init>()V

    iput-object v0, p0, Ltv/periscope/android/exoplayer/player/n;->B:Ltv/periscope/android/video/rtmp/o;

    .line 79
    new-instance v0, Ltv/periscope/android/video/rtmp/o;

    invoke-direct {v0}, Ltv/periscope/android/video/rtmp/o;-><init>()V

    iput-object v0, p0, Ltv/periscope/android/exoplayer/player/n;->C:Ltv/periscope/android/video/rtmp/o;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltv/periscope/android/exoplayer/player/n;->D:Ljava/util/HashMap;

    .line 131
    iput-object p1, p0, Ltv/periscope/android/exoplayer/player/n;->b:Landroid/content/Context;

    .line 132
    iput-object p2, p0, Ltv/periscope/android/exoplayer/player/n;->a:Ljava/lang/String;

    .line 133
    iput-object p3, p0, Ltv/periscope/android/exoplayer/player/n;->g:Ltv/periscope/android/exoplayer/player/p;

    .line 134
    return-void
.end method

.method static synthetic a(Ltv/periscope/android/exoplayer/player/n;)J
    .locals 4

    .prologue
    .line 36
    iget-wide v0, p0, Ltv/periscope/android/exoplayer/player/n;->q:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Ltv/periscope/android/exoplayer/player/n;->q:J

    return-wide v0
.end method

.method private declared-synchronized a(Z)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 501
    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Ltv/periscope/android/exoplayer/player/n;->i:J

    .line 502
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ltv/periscope/android/exoplayer/player/n;->k:J

    .line 503
    iget-wide v0, p0, Ltv/periscope/android/exoplayer/player/n;->y:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 505
    iget-wide v0, p0, Ltv/periscope/android/exoplayer/player/n;->k:J

    iput-wide v0, p0, Ltv/periscope/android/exoplayer/player/n;->y:J

    .line 507
    :cond_0
    if-eqz p1, :cond_2

    .line 509
    iget-wide v0, p0, Ltv/periscope/android/exoplayer/player/n;->n:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 511
    iget-wide v0, p0, Ltv/periscope/android/exoplayer/player/n;->k:J

    iget-wide v2, p0, Ltv/periscope/android/exoplayer/player/n;->n:J

    sub-long/2addr v0, v2

    long-to-double v0, v0

    .line 512
    iget-object v2, p0, Ltv/periscope/android/exoplayer/player/n;->m:Ltv/periscope/android/video/rtmp/o;

    invoke-virtual {v2, v0, v1}, Ltv/periscope/android/video/rtmp/o;->a(D)V

    .line 514
    :cond_1
    iget-wide v0, p0, Ltv/periscope/android/exoplayer/player/n;->k:J

    iput-wide v0, p0, Ltv/periscope/android/exoplayer/player/n;->n:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 525
    :goto_0
    monitor-exit p0

    return-void

    .line 518
    :cond_2
    :try_start_1
    iget-wide v0, p0, Ltv/periscope/android/exoplayer/player/n;->o:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 520
    iget-wide v0, p0, Ltv/periscope/android/exoplayer/player/n;->k:J

    iget-wide v2, p0, Ltv/periscope/android/exoplayer/player/n;->o:J

    sub-long/2addr v0, v2

    long-to-double v0, v0

    .line 521
    iget-object v2, p0, Ltv/periscope/android/exoplayer/player/n;->l:Ltv/periscope/android/video/rtmp/o;

    invoke-virtual {v2, v0, v1}, Ltv/periscope/android/video/rtmp/o;->a(D)V

    .line 523
    :cond_3
    iget-wide v0, p0, Ltv/periscope/android/exoplayer/player/n;->k:J

    iput-wide v0, p0, Ltv/periscope/android/exoplayer/player/n;->o:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 501
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Ltv/periscope/android/exoplayer/player/n;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ltv/periscope/android/exoplayer/player/n;->j()V

    return-void
.end method

.method private d()V
    .locals 4

    .prologue
    .line 137
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/n;->D:Ljava/util/HashMap;

    const-string/jumbo v1, "RtmpConnectSuccess"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/n;->D:Ljava/util/HashMap;

    const-string/jumbo v1, "RtmpConnectTime"

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    return-void
.end method

.method private e()V
    .locals 7

    .prologue
    const/16 v2, 0x2f

    .line 161
    :try_start_0
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/n;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 162
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 163
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_0

    .line 165
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 167
    :cond_0
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 168
    if-gtz v1, :cond_1

    .line 179
    :goto_0
    return-void

    .line 172
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 173
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 174
    const-string/jumbo v0, "t"

    invoke-virtual {v3, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 175
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Landroid/net/Uri;->getPort()I

    move-result v3

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Ltv/periscope/android/exoplayer/player/n;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private f()V
    .locals 8

    .prologue
    const/16 v7, 0x50

    const/16 v5, 0x2f

    .line 191
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/n;->d:Ltv/periscope/android/video/rtmp/Connection;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/n;->d:Ltv/periscope/android/video/rtmp/Connection;

    invoke-virtual {v0}, Ltv/periscope/android/video/rtmp/Connection;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 195
    :try_start_0
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/n;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 197
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 198
    invoke-virtual {v0}, Landroid/net/Uri;->getPort()I

    move-result v3

    .line 199
    const-string/jumbo v4, "t"

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 200
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 201
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_0

    .line 203
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 205
    :cond_0
    const/16 v4, 0x2f

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 206
    if-gtz v5, :cond_1

    .line 249
    :goto_0
    return-void

    .line 210
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 211
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 213
    if-ne v3, v7, :cond_3

    const-string/jumbo v0, "rtmp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 215
    const-string/jumbo v0, "RTMP"

    const-string/jumbo v1, "Reconnecting with RTMPS"

    invoke-static {v0, v1}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const/16 v3, 0x1bb

    .line 217
    const-string/jumbo v1, "RTMPS"

    move-object v0, p0

    .line 218
    invoke-virtual/range {v0 .. v6}, Ltv/periscope/android/exoplayer/player/n;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 230
    :catch_0
    move-exception v0

    .line 232
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 240
    :cond_2
    monitor-enter p0

    .line 242
    :try_start_1
    iget-boolean v0, p0, Ltv/periscope/android/exoplayer/player/n;->j:Z

    if-eqz v0, :cond_4

    .line 244
    monitor-exit p0

    goto :goto_0

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 221
    :cond_3
    if-ne v3, v7, :cond_2

    :try_start_2
    const-string/jumbo v0, "psp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 223
    const-string/jumbo v0, "RTMP"

    const-string/jumbo v1, "Reconnecting with PSPS"

    invoke-static {v0, v1}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const/16 v3, 0x1bb

    .line 225
    const-string/jumbo v1, "PSPS"

    move-object v0, p0

    .line 226
    invoke-virtual/range {v0 .. v6}, Ltv/periscope/android/exoplayer/player/n;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 246
    :cond_4
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Ltv/periscope/android/exoplayer/player/n;->j:Z

    .line 247
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 248
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/n;->g:Ltv/periscope/android/exoplayer/player/p;

    invoke-interface {v0}, Ltv/periscope/android/exoplayer/player/p;->b()V

    goto :goto_0
.end method

.method private g()V
    .locals 4

    .prologue
    .line 364
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/n;->D:Ljava/util/HashMap;

    const-string/jumbo v1, "RtmpConnectTime"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 365
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Ltv/periscope/android/exoplayer/player/n;->i:J

    sub-long/2addr v0, v2

    .line 366
    iget-object v2, p0, Ltv/periscope/android/exoplayer/player/n;->D:Ljava/util/HashMap;

    const-string/jumbo v3, "RtmpConnectTime"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    :cond_0
    return-void
.end method

.method private h()V
    .locals 6

    .prologue
    const-wide/16 v2, 0xbb8

    .line 529
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Ltv/periscope/android/exoplayer/player/n;->h:Ljava/util/Timer;

    .line 530
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/n;->h:Ljava/util/Timer;

    new-instance v1, Ltv/periscope/android/exoplayer/player/o;

    invoke-direct {v1, p0}, Ltv/periscope/android/exoplayer/player/o;-><init>(Ltv/periscope/android/exoplayer/player/n;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 538
    return-void
.end method

.method private i()V
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/n;->h:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/n;->h:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 545
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/n;->h:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 546
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/periscope/android/exoplayer/player/n;->h:Ljava/util/Timer;

    .line 548
    :cond_0
    return-void
.end method

.method private j()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x2328

    const/4 v0, 0x1

    const-wide/16 v6, 0x0

    .line 552
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 553
    const/4 v1, 0x0

    .line 554
    monitor-enter p0

    .line 556
    :try_start_0
    iget-wide v4, p0, Ltv/periscope/android/exoplayer/player/n;->i:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 558
    iget-wide v4, p0, Ltv/periscope/android/exoplayer/player/n;->i:J

    sub-long/2addr v2, v4

    cmp-long v2, v2, v8

    if-lez v2, :cond_0

    .line 560
    const-string/jumbo v1, "RTMP"

    const-string/jumbo v2, "Connect timeout"

    invoke-static {v1, v2}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Ltv/periscope/android/exoplayer/player/n;->i:J

    .line 562
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Ltv/periscope/android/exoplayer/player/n;->k:J

    move v1, v0

    .line 575
    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 576
    invoke-direct {p0}, Ltv/periscope/android/exoplayer/player/n;->k()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 580
    :goto_1
    if-eqz v0, :cond_1

    .line 582
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/n;->d:Ltv/periscope/android/video/rtmp/Connection;

    invoke-virtual {v0}, Ltv/periscope/android/video/rtmp/Connection;->g()V

    .line 583
    invoke-direct {p0}, Ltv/periscope/android/exoplayer/player/n;->f()V

    .line 585
    :cond_1
    return-void

    .line 566
    :cond_2
    :try_start_1
    iget-wide v4, p0, Ltv/periscope/android/exoplayer/player/n;->k:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 568
    iget-wide v4, p0, Ltv/periscope/android/exoplayer/player/n;->k:J

    sub-long/2addr v2, v4

    cmp-long v2, v2, v8

    if-lez v2, :cond_0

    .line 570
    const-string/jumbo v1, "RTMP"

    const-string/jumbo v2, "No data timeout"

    invoke-static {v1, v2}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Ltv/periscope/android/exoplayer/player/n;->k:J

    move v1, v0

    goto :goto_0

    .line 575
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private k()Z
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 589
    const/4 v0, 0x0

    .line 590
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    .line 591
    monitor-enter p0

    .line 593
    :try_start_0
    iget-wide v4, p0, Ltv/periscope/android/exoplayer/player/n;->r:J

    cmp-long v1, v4, v8

    if-lez v1, :cond_0

    iget-wide v4, p0, Ltv/periscope/android/exoplayer/player/n;->r:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_0

    .line 595
    iget-wide v4, p0, Ltv/periscope/android/exoplayer/player/n;->s:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    iget-wide v6, p0, Ltv/periscope/android/exoplayer/player/n;->r:J

    sub-long v6, v2, v6

    div-long/2addr v4, v6

    long-to-double v4, v4

    .line 596
    iget-object v1, p0, Ltv/periscope/android/exoplayer/player/n;->p:Ltv/periscope/android/video/rtmp/o;

    invoke-virtual {v1, v4, v5}, Ltv/periscope/android/video/rtmp/o;->a(D)V

    .line 597
    const-string/jumbo v1, "RTMP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "FPS: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    iget-wide v4, p0, Ltv/periscope/android/exoplayer/player/n;->s:J

    cmp-long v1, v4, v8

    if-nez v1, :cond_0

    .line 601
    iget-wide v4, p0, Ltv/periscope/android/exoplayer/player/n;->u:J

    cmp-long v1, v4, v8

    if-nez v1, :cond_1

    .line 603
    iput-wide v2, p0, Ltv/periscope/android/exoplayer/player/n;->u:J

    .line 604
    iget-wide v4, p0, Ltv/periscope/android/exoplayer/player/n;->v:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Ltv/periscope/android/exoplayer/player/n;->v:J

    .line 617
    :cond_0
    :goto_0
    iput-wide v2, p0, Ltv/periscope/android/exoplayer/player/n;->r:J

    .line 618
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Ltv/periscope/android/exoplayer/player/n;->s:J

    .line 619
    monitor-exit p0

    .line 620
    return v0

    .line 608
    :cond_1
    iget-wide v4, p0, Ltv/periscope/android/exoplayer/player/n;->u:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x2328

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    .line 610
    const-string/jumbo v0, "RTMP"

    const-string/jumbo v1, "No video timeout"

    invoke-static {v0, v1}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    const/4 v0, 0x1

    goto :goto_0

    .line 619
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public a(I)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 253
    if-lez p1, :cond_0

    .line 255
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/n;->d:Ltv/periscope/android/video/rtmp/Connection;

    invoke-virtual {v0}, Ltv/periscope/android/video/rtmp/Connection;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 258
    aput-object v1, v0, v2

    .line 259
    iget-object v1, p0, Ltv/periscope/android/exoplayer/player/n;->d:Ltv/periscope/android/video/rtmp/Connection;

    invoke-virtual {v1}, Ltv/periscope/android/video/rtmp/Connection;->c()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 260
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    .line 261
    iget-object v1, p0, Ltv/periscope/android/exoplayer/player/n;->d:Ltv/periscope/android/video/rtmp/Connection;

    invoke-virtual {v1}, Ltv/periscope/android/video/rtmp/Connection;->d()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 263
    iget-object v1, p0, Ltv/periscope/android/exoplayer/player/n;->d:Ltv/periscope/android/video/rtmp/Connection;

    const-string/jumbo v2, "fast-play"

    invoke-virtual {v1, v2, v0}, Ltv/periscope/android/video/rtmp/Connection;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    new-array v0, v5, [Ljava/lang/Object;

    .line 269
    aput-object v1, v0, v2

    .line 270
    iget-object v1, p0, Ltv/periscope/android/exoplayer/player/n;->d:Ltv/periscope/android/video/rtmp/Connection;

    invoke-virtual {v1}, Ltv/periscope/android/video/rtmp/Connection;->c()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 271
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    .line 272
    iget-object v1, p0, Ltv/periscope/android/exoplayer/player/n;->d:Ltv/periscope/android/video/rtmp/Connection;

    const-string/jumbo v2, "play"

    invoke-virtual {v1, v2, v0}, Ltv/periscope/android/video/rtmp/Connection;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(J)V
    .locals 13

    .prologue
    const-wide/16 v2, 0x0

    const-wide v10, 0x408f400000000000L    # 1000.0

    const-wide/16 v8, 0x3e8

    .line 476
    monitor-enter p0

    .line 478
    cmp-long v0, p1, v2

    if-nez v0, :cond_0

    :try_start_0
    iget-wide v0, p0, Ltv/periscope/android/exoplayer/player/n;->z:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 480
    iget-wide p1, p0, Ltv/periscope/android/exoplayer/player/n;->z:J

    .line 482
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/n;->e:Ltv/periscope/android/exoplayer/player/r;

    if-eqz v0, :cond_1

    .line 485
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/n;->e:Ltv/periscope/android/exoplayer/player/r;

    invoke-virtual {v0}, Ltv/periscope/android/exoplayer/player/r;->getBufferedPositionUs()J

    move-result-wide v0

    .line 486
    div-long v2, v0, v8

    sub-long/2addr v2, p1

    long-to-double v2, v2

    .line 487
    const-string/jumbo v4, "RTMP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Audio queue: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    double-to-long v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ms ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    div-long/2addr v0, v8

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/n;->B:Ltv/periscope/android/video/rtmp/o;

    div-double/2addr v2, v10

    invoke-virtual {v0, v2, v3}, Ltv/periscope/android/video/rtmp/o;->a(D)V

    .line 490
    :cond_1
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/n;->f:Ltv/periscope/android/exoplayer/player/r;

    if-eqz v0, :cond_2

    .line 492
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/n;->f:Ltv/periscope/android/exoplayer/player/r;

    invoke-virtual {v0}, Ltv/periscope/android/exoplayer/player/r;->getBufferedPositionUs()J

    move-result-wide v0

    .line 493
    div-long v2, v0, v8

    sub-long/2addr v2, p1

    long-to-double v2, v2

    .line 494
    const-string/jumbo v4, "RTMP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Video queue: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    double-to-long v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ms ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    div-long/2addr v0, v8

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/n;->C:Ltv/periscope/android/video/rtmp/o;

    div-double/2addr v2, v10

    invoke-virtual {v0, v2, v3}, Ltv/periscope/android/video/rtmp/o;->a(D)V

    .line 497
    :cond_2
    return-void

    .line 482
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 184
    new-instance v0, Ltv/periscope/android/video/rtmp/Connection;

    invoke-direct {v0}, Ltv/periscope/android/video/rtmp/Connection;-><init>()V

    iput-object v0, p0, Ltv/periscope/android/exoplayer/player/n;->d:Ltv/periscope/android/video/rtmp/Connection;

    .line 185
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/n;->d:Ltv/periscope/android/video/rtmp/Connection;

    const-wide/32 v2, 0x2625a0

    invoke-virtual {v0, v2, v3}, Ltv/periscope/android/video/rtmp/Connection;->a(J)V

    .line 186
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/n;->d:Ltv/periscope/android/video/rtmp/Connection;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p0

    invoke-virtual/range {v0 .. v7}, Ltv/periscope/android/video/rtmp/Connection;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltv/periscope/android/video/rtmp/e;)V

    .line 187
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 14
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v11, 0x0

    const/4 v2, -0x1

    .line 419
    const-string/jumbo v0, "trackinfo"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, [Ljava/lang/Object;

    move v1, v11

    .line 420
    :goto_0
    array-length v0, v7

    if-ge v1, v0, :cond_2

    .line 422
    aget-object v0, v7, v1

    check-cast v0, Ljava/util/Map;

    .line 423
    const-string/jumbo v3, "type"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 424
    const-string/jumbo v4, "video"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 426
    const-string/jumbo v3, "sprop-parameter-sets"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 427
    const-string/jumbo v0, "width"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/Double;

    .line 428
    const-string/jumbo v0, "height"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/Double;

    .line 430
    new-instance v0, Ltv/periscope/android/exoplayer/player/s;

    invoke-virtual {v4}, Ljava/lang/Double;->intValue()I

    move-result v4

    invoke-virtual {v5}, Ljava/lang/Double;->intValue()I

    move-result v5

    iget-object v6, p0, Ltv/periscope/android/exoplayer/player/n;->g:Ltv/periscope/android/exoplayer/player/p;

    invoke-direct/range {v0 .. v6}, Ltv/periscope/android/exoplayer/player/s;-><init>(IILjava/lang/String;IILtv/periscope/android/exoplayer/player/p;)V

    iput-object v0, p0, Ltv/periscope/android/exoplayer/player/n;->f:Ltv/periscope/android/exoplayer/player/r;

    .line 431
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/n;->f:Ltv/periscope/android/exoplayer/player/r;

    iget-object v3, p0, Ltv/periscope/android/exoplayer/player/n;->d:Ltv/periscope/android/video/rtmp/Connection;

    invoke-virtual {v0, v3}, Ltv/periscope/android/exoplayer/player/r;->a(Ltv/periscope/android/video/rtmp/Connection;)V

    .line 420
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 432
    :cond_1
    const-string/jumbo v4, "audio"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 434
    const-string/jumbo v3, "config"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 435
    const-string/jumbo v0, "audiochannels"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/Double;

    .line 436
    const-string/jumbo v0, "audiosamplerate"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/Double;

    .line 438
    new-instance v0, Ltv/periscope/android/exoplayer/player/m;

    invoke-virtual {v4}, Ljava/lang/Double;->intValue()I

    move-result v4

    invoke-virtual {v5}, Ljava/lang/Double;->intValue()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/exoplayer/player/m;-><init>(IILjava/lang/String;II)V

    iput-object v0, p0, Ltv/periscope/android/exoplayer/player/n;->e:Ltv/periscope/android/exoplayer/player/r;

    .line 439
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/n;->e:Ltv/periscope/android/exoplayer/player/r;

    iget-object v3, p0, Ltv/periscope/android/exoplayer/player/n;->d:Ltv/periscope/android/video/rtmp/Connection;

    invoke-virtual {v0, v3}, Ltv/periscope/android/exoplayer/player/r;->a(Ltv/periscope/android/video/rtmp/Connection;)V

    goto :goto_1

    .line 443
    :cond_2
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/n;->f:Ltv/periscope/android/exoplayer/player/r;

    if-nez v0, :cond_3

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Stream with no video encountered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/android/exoplayer/player/n;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lh;->a(Ljava/lang/String;)V

    move-object v1, v12

    .line 461
    :goto_2
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/n;->e:Ltv/periscope/android/exoplayer/player/r;

    if-nez v0, :cond_4

    .line 463
    new-instance v0, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Stream with no audio encountered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ltv/periscope/android/exoplayer/player/n;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lh;->a(Ljava/lang/Throwable;)V

    .line 468
    :goto_3
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/exoplayer/TrackRenderer;

    .line 469
    aput-object v1, v0, v11

    .line 470
    aput-object v12, v0, v13

    .line 471
    iget-object v1, p0, Ltv/periscope/android/exoplayer/player/n;->c:Ltv/periscope/android/exoplayer/player/e;

    new-instance v2, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;

    invoke-direct {v2}, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;-><init>()V

    invoke-virtual {v1, v0, v2}, Ltv/periscope/android/exoplayer/player/e;->a([Lcom/google/android/exoplayer/TrackRenderer;Lcom/google/android/exoplayer/upstream/BandwidthMeter;)V

    .line 472
    return-void

    .line 450
    :cond_3
    new-instance v1, Ltv/periscope/android/exoplayer/player/q;

    iget-object v3, p0, Ltv/periscope/android/exoplayer/player/n;->b:Landroid/content/Context;

    iget-object v4, p0, Ltv/periscope/android/exoplayer/player/n;->f:Ltv/periscope/android/exoplayer/player/r;

    const-wide/16 v6, 0x1388

    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/n;->c:Ltv/periscope/android/exoplayer/player/e;

    .line 455
    invoke-virtual {v0}, Ltv/periscope/android/exoplayer/player/e;->i()Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Ltv/periscope/android/exoplayer/player/n;->c:Ltv/periscope/android/exoplayer/player/e;

    const/16 v10, 0x32

    move-object v2, p0

    move v5, v13

    invoke-direct/range {v1 .. v10}, Ltv/periscope/android/exoplayer/player/q;-><init>(Ltv/periscope/android/exoplayer/player/n;Landroid/content/Context;Lcom/google/android/exoplayer/SampleSource;IJLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;I)V

    goto :goto_2

    .line 465
    :cond_4
    new-instance v12, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;

    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/n;->e:Ltv/periscope/android/exoplayer/player/r;

    sget-object v2, Lcom/google/android/exoplayer/MediaCodecSelector;->DEFAULT:Lcom/google/android/exoplayer/MediaCodecSelector;

    invoke-direct {v12, v0, v2}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;)V

    goto :goto_3
.end method

.method public a(Ltv/periscope/android/exoplayer/player/e;)V
    .locals 2

    .prologue
    .line 144
    iput-object p1, p0, Ltv/periscope/android/exoplayer/player/n;->c:Ltv/periscope/android/exoplayer/player/e;

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ltv/periscope/android/exoplayer/player/n;->i:J

    .line 146
    iget-wide v0, p0, Ltv/periscope/android/exoplayer/player/n;->i:J

    iput-wide v0, p0, Ltv/periscope/android/exoplayer/player/n;->x:J

    .line 147
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltv/periscope/android/exoplayer/player/n;->y:J

    .line 149
    invoke-direct {p0}, Ltv/periscope/android/exoplayer/player/n;->d()V

    .line 150
    invoke-direct {p0}, Ltv/periscope/android/exoplayer/player/n;->h()V

    .line 151
    invoke-direct {p0}, Ltv/periscope/android/exoplayer/player/n;->e()V

    .line 152
    return-void
.end method

.method public a(Ltv/periscope/android/video/rtmp/n;)Z
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 282
    invoke-virtual {p1}, Ltv/periscope/android/video/rtmp/n;->b()I

    move-result v0

    const/16 v3, 0x12

    if-ne v0, v3, :cond_4

    .line 284
    invoke-virtual {p1}, Ltv/periscope/android/video/rtmp/n;->h()[Ljava/lang/Object;

    move-result-object v3

    .line 285
    if-eqz v3, :cond_0

    array-length v0, v3

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 334
    :goto_0
    return v0

    .line 290
    :cond_1
    aget-object v0, v3, v1

    check-cast v0, Ljava/lang/String;

    .line 291
    const-string/jumbo v4, "onMetaData"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Ltv/periscope/android/exoplayer/player/n;->f:Ltv/periscope/android/exoplayer/player/r;

    if-nez v4, :cond_3

    .line 293
    aget-object v0, v3, v2

    check-cast v0, Ljava/util/Map;

    .line 294
    invoke-virtual {p0, v0}, Ltv/periscope/android/exoplayer/player/n;->a(Ljava/util/Map;)V

    :cond_2
    :goto_1
    move v0, v1

    .line 334
    goto :goto_0

    .line 296
    :cond_3
    const-string/jumbo v4, "Periscope"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 298
    aget-object v0, v3, v2

    check-cast v0, Ljava/util/Map;

    .line 299
    const-string/jumbo v2, "SourceChange"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 301
    const-string/jumbo v0, "RTMP"

    const-string/jumbo v2, "Source Change flagged"

    invoke-static {v0, v2}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/n;->g:Ltv/periscope/android/exoplayer/player/p;

    invoke-interface {v0}, Ltv/periscope/android/exoplayer/player/p;->a()V

    goto :goto_1

    .line 305
    :cond_4
    invoke-virtual {p1}, Ltv/periscope/android/video/rtmp/n;->b()I

    move-result v0

    const/16 v3, 0x9

    if-ne v0, v3, :cond_7

    .line 308
    invoke-virtual {p1}, Ltv/periscope/android/video/rtmp/n;->d()J

    move-result-wide v4

    cmp-long v0, v4, v6

    if-eqz v0, :cond_6

    .line 310
    monitor-enter p0

    .line 312
    :try_start_0
    iget-wide v4, p0, Ltv/periscope/android/exoplayer/player/n;->z:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_5

    .line 314
    invoke-virtual {p1}, Ltv/periscope/android/video/rtmp/n;->d()J

    move-result-wide v4

    iput-wide v4, p0, Ltv/periscope/android/exoplayer/player/n;->z:J

    .line 316
    :cond_5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    :cond_6
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/n;->f:Ltv/periscope/android/exoplayer/player/r;

    if-eqz v0, :cond_2

    .line 321
    invoke-direct {p0, v2}, Ltv/periscope/android/exoplayer/player/n;->a(Z)V

    .line 322
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/n;->f:Ltv/periscope/android/exoplayer/player/r;

    invoke-virtual {v0, p1}, Ltv/periscope/android/exoplayer/player/r;->a(Ltv/periscope/android/video/rtmp/n;)V

    move v0, v2

    .line 323
    goto :goto_0

    .line 316
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 325
    :cond_7
    invoke-virtual {p1}, Ltv/periscope/android/video/rtmp/n;->b()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_2

    .line 327
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/n;->e:Ltv/periscope/android/exoplayer/player/r;

    if-eqz v0, :cond_2

    .line 329
    invoke-direct {p0, v1}, Ltv/periscope/android/exoplayer/player/n;->a(Z)V

    .line 330
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/n;->e:Ltv/periscope/android/exoplayer/player/r;

    invoke-virtual {v0, p1}, Ltv/periscope/android/exoplayer/player/r;->a(Ltv/periscope/android/video/rtmp/n;)V

    move v0, v2

    .line 331
    goto/16 :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 339
    invoke-direct {p0}, Ltv/periscope/android/exoplayer/player/n;->g()V

    .line 341
    const-string/jumbo v0, "RTMP"

    const-string/jumbo v1, "Unexpected close: reconnect"

    invoke-static {v0, v1}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-direct {p0}, Ltv/periscope/android/exoplayer/player/n;->f()V

    .line 343
    return-void
.end method

.method b(J)V
    .locals 8
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    const-wide/16 v2, 0x1

    const-wide/16 v6, 0x0

    .line 626
    monitor-enter p0

    .line 628
    :try_start_0
    iget-wide v0, p0, Ltv/periscope/android/exoplayer/player/n;->s:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ltv/periscope/android/exoplayer/player/n;->s:J

    .line 629
    iget-wide v0, p0, Ltv/periscope/android/exoplayer/player/n;->t:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ltv/periscope/android/exoplayer/player/n;->t:J

    .line 630
    iget-wide v0, p0, Ltv/periscope/android/exoplayer/player/n;->A:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_0

    .line 632
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ltv/periscope/android/exoplayer/player/n;->A:J

    .line 634
    const-string/jumbo v0, "RTMP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Start to first packet: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Ltv/periscope/android/exoplayer/player/n;->y:J

    iget-wide v4, p0, Ltv/periscope/android/exoplayer/player/n;->x:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    const-string/jumbo v0, "RTMP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Start to first frame: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Ltv/periscope/android/exoplayer/player/n;->A:J

    iget-wide v4, p0, Ltv/periscope/android/exoplayer/player/n;->x:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/n;->D:Ljava/util/HashMap;

    const-string/jumbo v1, "RtmpConnectSuccess"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    invoke-direct {p0}, Ltv/periscope/android/exoplayer/player/n;->g()V

    .line 641
    :cond_0
    iget-wide v0, p0, Ltv/periscope/android/exoplayer/player/n;->u:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_1

    .line 643
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    .line 644
    iget-wide v2, p0, Ltv/periscope/android/exoplayer/player/n;->w:J

    iget-wide v4, p0, Ltv/periscope/android/exoplayer/player/n;->u:J

    sub-long/2addr v0, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Ltv/periscope/android/exoplayer/player/n;->w:J

    .line 645
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltv/periscope/android/exoplayer/player/n;->u:J

    .line 647
    :cond_1
    monitor-exit p0

    .line 648
    return-void

    .line 647
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()V
    .locals 6

    .prologue
    .line 347
    invoke-direct {p0}, Ltv/periscope/android/exoplayer/player/n;->i()V

    .line 348
    const-string/jumbo v0, "RTMP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Frame rate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltv/periscope/android/exoplayer/player/n;->p:Ltv/periscope/android/video/rtmp/o;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-wide v0, p0, Ltv/periscope/android/exoplayer/player/n;->q:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    iget-wide v2, p0, Ltv/periscope/android/exoplayer/player/n;->q:J

    iget-wide v4, p0, Ltv/periscope/android/exoplayer/player/n;->t:J

    add-long/2addr v2, v4

    long-to-double v2, v2

    div-double/2addr v0, v2

    .line 351
    new-instance v2, Ljava/text/DecimalFormat;

    const-string/jumbo v3, "0.#"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 352
    const-string/jumbo v3, "RTMP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Skipped %: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-wide v0, p0, Ltv/periscope/android/exoplayer/player/n;->u:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 356
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    .line 357
    iget-wide v2, p0, Ltv/periscope/android/exoplayer/player/n;->w:J

    iget-wide v4, p0, Ltv/periscope/android/exoplayer/player/n;->u:J

    sub-long/2addr v0, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Ltv/periscope/android/exoplayer/player/n;->w:J

    .line 359
    :cond_0
    return-void
.end method
