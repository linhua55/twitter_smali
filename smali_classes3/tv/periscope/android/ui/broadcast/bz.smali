.class public Ltv/periscope/android/ui/broadcast/bz;
.super Ltv/periscope/android/ui/broadcast/cd;
.source "Twttr"


# instance fields
.field private j:J

.field private k:J


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Ltv/periscope/android/ui/broadcast/cg;Ltv/periscope/android/api/ApiManager;Lde/greenrobot/event/c;Ljava/lang/String;Ltv/periscope/android/data/b;ZLtv/periscope/android/ui/broadcast/bm;Ljava/lang/String;Ltv/periscope/android/ui/broadcast/moderator/a;Ltv/periscope/android/ui/broadcast/moderator/b;ZLjava/lang/String;Lretrofit/RestAdapter$LogLevel;)V
    .locals 16

    .prologue
    .line 33
    sget-object v7, Ltv/periscope/android/player/PlayMode;->b:Ltv/periscope/android/player/PlayMode;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    invoke-direct/range {v0 .. v15}, Ltv/periscope/android/ui/broadcast/cd;-><init>(Landroid/app/Activity;Ltv/periscope/android/ui/broadcast/cg;Ltv/periscope/android/api/ApiManager;Lde/greenrobot/event/c;Ljava/lang/String;Ltv/periscope/android/data/b;Ltv/periscope/android/player/PlayMode;ZLtv/periscope/android/ui/broadcast/bm;Ljava/lang/String;Ltv/periscope/android/ui/broadcast/moderator/a;Ltv/periscope/android/ui/broadcast/moderator/b;ZLjava/lang/String;Lretrofit/RestAdapter$LogLevel;)V

    .line 35
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public a(Ltv/periscope/model/ac;Ltv/periscope/model/u;)V
    .locals 3

    .prologue
    .line 48
    invoke-virtual {p1}, Ltv/periscope/model/ac;->f()Ltv/periscope/model/o;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Ltv/periscope/model/o;->F()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ltv/periscope/model/o;->H()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bz;->a:Ltv/periscope/android/ui/broadcast/cg;

    sget-object v1, Ltv/periscope/android/player/PlayMode;->c:Ltv/periscope/android/player/PlayMode;

    invoke-interface {v0, v1}, Ltv/periscope/android/ui/broadcast/cg;->b(Ltv/periscope/android/player/PlayMode;)V

    .line 54
    :cond_0
    :goto_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bz;->i:Ltv/periscope/model/ac;

    invoke-virtual {v0}, Ltv/periscope/model/ac;->j()Ltv/periscope/model/StreamType;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/bz;->h:Lretrofit/RestAdapter$LogLevel;

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/bz;->i:Ltv/periscope/model/ac;

    invoke-virtual {v2}, Ltv/periscope/model/ac;->f()Ltv/periscope/model/o;

    move-result-object v2

    invoke-virtual {v2}, Ltv/periscope/model/o;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Ltv/periscope/android/ui/broadcast/bz;->a(Ltv/periscope/model/StreamType;Lretrofit/RestAdapter$LogLevel;Ljava/lang/String;)V

    .line 55
    return-void

    .line 51
    :cond_1
    invoke-virtual {v0}, Ltv/periscope/model/o;->G()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ltv/periscope/model/o;->H()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bz;->a:Ltv/periscope/android/ui/broadcast/cg;

    invoke-interface {v0}, Ltv/periscope/android/ui/broadcast/cg;->Q()V

    goto :goto_0
.end method

.method public b(J)V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ltv/periscope/android/ui/broadcast/bz;->j:J

    .line 73
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltv/periscope/android/ui/broadcast/bz;->k:J

    .line 74
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Ltv/periscope/android/ui/broadcast/bz;->j:J

    invoke-virtual {p0, v0, v1}, Ltv/periscope/android/ui/broadcast/bz;->d(J)J

    move-result-wide v0

    iput-wide v0, p0, Ltv/periscope/android/ui/broadcast/bz;->k:J

    .line 79
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method public g()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public h()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public i()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method public j()V
    .locals 0

    .prologue
    .line 114
    return-void
.end method

.method public k()V
    .locals 2

    .prologue
    .line 59
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 60
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/bz;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/bz;->d:Ltv/periscope/android/api/ApiManager;

    invoke-interface {v1, v0}, Ltv/periscope/android/api/ApiManager;->getBroadcasts(Ljava/util/ArrayList;)Ljava/lang/String;

    .line 62
    return-void
.end method

.method public o()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bz;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/bz;->a(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/bz;->c:Ltv/periscope/android/data/b;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/bz;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ltv/periscope/android/data/b;->a(Ljava/lang/String;)Ltv/periscope/model/o;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/bz;->a(Ltv/periscope/model/o;)V

    .line 44
    :cond_0
    return-void
.end method
