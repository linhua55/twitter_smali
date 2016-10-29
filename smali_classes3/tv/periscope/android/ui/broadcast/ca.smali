.class public Ltv/periscope/android/ui/broadcast/ca;
.super Ltv/periscope/android/ui/broadcast/cd;
.source "Twttr"


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Ltv/periscope/android/ui/broadcast/cg;Ltv/periscope/android/api/ApiManager;Lde/greenrobot/event/c;Ljava/lang/String;Ltv/periscope/android/data/b;ZLtv/periscope/android/ui/broadcast/bm;Ljava/lang/String;Ltv/periscope/android/ui/broadcast/moderator/a;Ltv/periscope/android/ui/broadcast/moderator/b;ZLjava/lang/String;Lretrofit/RestAdapter$LogLevel;)V
    .locals 16

    .prologue
    .line 28
    sget-object v7, Ltv/periscope/android/player/PlayMode;->e:Ltv/periscope/android/player/PlayMode;

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

    .line 30
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method a(Ltv/periscope/model/ac;Ltv/periscope/model/u;)V
    .locals 2

    .prologue
    .line 62
    invoke-virtual {p1}, Ltv/periscope/model/ac;->f()Ltv/periscope/model/o;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ltv/periscope/model/o;->F()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ltv/periscope/model/o;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ca;->a:Ltv/periscope/android/ui/broadcast/cg;

    sget-object v1, Ltv/periscope/android/player/PlayMode;->c:Ltv/periscope/android/player/PlayMode;

    invoke-interface {v0, v1}, Ltv/periscope/android/ui/broadcast/cg;->b(Ltv/periscope/android/player/PlayMode;)V

    .line 66
    :cond_0
    return-void
.end method

.method public b(J)V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public g()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public h()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public i()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public j()V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method public k()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public o()V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ca;->d:Ltv/periscope/android/api/ApiManager;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ca;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ltv/periscope/android/api/ApiManager;->getBroadcastSummary(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public onEventMainThread(Ltv/periscope/android/event/ApiEvent;)V
    .locals 2

    .prologue
    .line 39
    sget-object v0, Ltv/periscope/android/ui/broadcast/cb;->a:[I

    iget-object v1, p1, Ltv/periscope/android/event/ApiEvent;->a:Ltv/periscope/android/event/ApiEvent$Type;

    invoke-virtual {v1}, Ltv/periscope/android/event/ApiEvent$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 54
    invoke-super {p0, p1}, Ltv/periscope/android/ui/broadcast/cd;->onEventMainThread(Ltv/periscope/android/event/ApiEvent;)V

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 41
    :pswitch_0
    invoke-virtual {p1}, Ltv/periscope/android/event/ApiEvent;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p1, Ltv/periscope/android/event/ApiEvent;->d:Ljava/lang/Object;

    check-cast v0, Ltv/periscope/model/q;

    .line 46
    invoke-virtual {v0}, Ltv/periscope/model/q;->a()Ltv/periscope/model/o;

    move-result-object v0

    .line 48
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ca;->c:Ltv/periscope/android/data/b;

    invoke-virtual {v0}, Ltv/periscope/model/o;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ltv/periscope/android/data/b;->a(Ljava/lang/String;)Ltv/periscope/model/o;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/ca;->a(Ltv/periscope/model/o;)V

    .line 50
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ca;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/ca;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 39
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected p()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method protected q()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method
