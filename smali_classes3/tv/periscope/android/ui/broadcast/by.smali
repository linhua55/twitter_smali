.class public Ltv/periscope/android/ui/broadcast/by;
.super Ltv/periscope/android/ui/broadcast/cd;
.source "Twttr"


# static fields
.field private static final j:J


# instance fields
.field private final k:Ltv/periscope/android/player/d;

.field private l:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 27
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Ltv/periscope/android/ui/broadcast/by;->j:J

    return-void
.end method

.method protected constructor <init>(Landroid/app/Activity;Ltv/periscope/android/ui/broadcast/cg;Ltv/periscope/android/api/ApiManager;Lde/greenrobot/event/c;Ljava/lang/String;Ltv/periscope/android/data/b;ZLtv/periscope/android/ui/broadcast/bm;Ljava/lang/String;Ltv/periscope/android/ui/broadcast/moderator/a;Ltv/periscope/android/ui/broadcast/moderator/b;ZLjava/lang/String;Lretrofit/RestAdapter$LogLevel;Ltv/periscope/android/player/d;)V
    .locals 18

    .prologue
    .line 37
    sget-object v9, Ltv/periscope/android/player/PlayMode;->c:Ltv/periscope/android/player/PlayMode;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move/from16 v15, p12

    move-object/from16 v16, p13

    move-object/from16 v17, p14

    invoke-direct/range {v2 .. v17}, Ltv/periscope/android/ui/broadcast/cd;-><init>(Landroid/app/Activity;Ltv/periscope/android/ui/broadcast/cg;Ltv/periscope/android/api/ApiManager;Lde/greenrobot/event/c;Ljava/lang/String;Ltv/periscope/android/data/b;Ltv/periscope/android/player/PlayMode;ZLtv/periscope/android/ui/broadcast/bm;Ljava/lang/String;Ltv/periscope/android/ui/broadcast/moderator/a;Ltv/periscope/android/ui/broadcast/moderator/b;ZLjava/lang/String;Lretrofit/RestAdapter$LogLevel;)V

    .line 39
    move-object/from16 v0, p15

    move-object/from16 v1, p0

    iput-object v0, v1, Ltv/periscope/android/ui/broadcast/by;->k:Ltv/periscope/android/player/d;

    .line 40
    return-void
.end method

.method private D()V
    .locals 2

    .prologue
    .line 91
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltv/periscope/android/ui/broadcast/by;->l:J

    .line 92
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 125
    return-void
.end method

.method a(Ltv/periscope/model/ac;Ltv/periscope/model/u;)V
    .locals 4

    .prologue
    .line 55
    invoke-virtual {p1}, Ltv/periscope/model/ac;->f()Ltv/periscope/model/o;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Ltv/periscope/model/o;->G()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ltv/periscope/model/o;->H()Z

    move-result v1

    if-nez v1, :cond_0

    .line 57
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/by;->a:Ltv/periscope/android/ui/broadcast/cg;

    invoke-interface {v0}, Ltv/periscope/android/ui/broadcast/cg;->Q()V

    .line 62
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-virtual {p1}, Ltv/periscope/model/ac;->j()Ltv/periscope/model/StreamType;

    move-result-object v1

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/by;->h:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v0}, Ltv/periscope/model/o;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Ltv/periscope/android/ui/broadcast/by;->a(Ltv/periscope/model/StreamType;Lretrofit/RestAdapter$LogLevel;Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/by;->d:Ltv/periscope/android/api/ApiManager;

    invoke-virtual {v0}, Ltv/periscope/model/o;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ltv/periscope/android/api/ApiManager;->replayThumbnailPlaylist(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method public b(J)V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public b(Z)V
    .locals 4

    .prologue
    .line 106
    if-eqz p1, :cond_1

    .line 108
    iget-wide v0, p0, Ltv/periscope/android/ui/broadcast/by;->l:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ltv/periscope/android/ui/broadcast/by;->l:J

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/by;->D()V

    goto :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 81
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/by;->D()V

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ltv/periscope/android/ui/broadcast/by;->l:J

    .line 83
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/by;->D()V

    .line 88
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public g()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public h()V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method public i()V
    .locals 0

    .prologue
    .line 140
    return-void
.end method

.method public j()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public k()V
    .locals 4

    .prologue
    .line 68
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/by;->k:Ltv/periscope/android/player/d;

    invoke-interface {v0}, Ltv/periscope/android/player/d;->e()J

    move-result-wide v0

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/by;->k:Ltv/periscope/android/player/d;

    invoke-interface {v2}, Ltv/periscope/android/player/d;->d()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget-wide v2, Ltv/periscope/android/ui/broadcast/by;->j:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 69
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/by;->a:Ltv/periscope/android/ui/broadcast/cg;

    invoke-interface {v0}, Ltv/periscope/android/ui/broadcast/cg;->Q()V

    .line 71
    :cond_0
    return-void
.end method

.method public o()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/by;->c:Ltv/periscope/android/data/b;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/by;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ltv/periscope/android/data/b;->a(Ljava/lang/String;)Ltv/periscope/model/o;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/by;->a(Ltv/periscope/model/o;)V

    .line 47
    invoke-virtual {v0}, Ltv/periscope/model/o;->H()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    invoke-virtual {v0}, Ltv/periscope/model/o;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/by;->a(Ljava/lang/String;)V

    .line 51
    :cond_0
    return-void
.end method
