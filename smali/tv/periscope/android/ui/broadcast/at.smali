.class public Ltv/periscope/android/ui/broadcast/at;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ltv/periscope/android/player/d;
.implements Ltv/periscope/android/player/e;


# instance fields
.field protected a:Ltv/periscope/android/ui/broadcast/am;

.field private final b:Ltv/periscope/android/player/b;

.field private final c:Ltv/periscope/android/data/b;

.field private final d:Ltv/periscope/android/ui/broadcast/bu;

.field private e:Ldmk;


# direct methods
.method public constructor <init>(Ltv/periscope/android/player/b;Ltv/periscope/android/exoplayer/player/e;Ltv/periscope/android/data/b;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Ltv/periscope/android/ui/broadcast/at;->b:Ltv/periscope/android/player/b;

    .line 34
    iput-object p3, p0, Ltv/periscope/android/ui/broadcast/at;->c:Ltv/periscope/android/data/b;

    .line 35
    if-eqz p2, :cond_0

    .line 36
    new-instance v0, Ltv/periscope/android/ui/broadcast/bv;

    invoke-direct {v0, p2}, Ltv/periscope/android/ui/broadcast/bv;-><init>(Ltv/periscope/android/exoplayer/player/e;)V

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/at;->d:Ltv/periscope/android/ui/broadcast/bu;

    .line 40
    :goto_0
    return-void

    .line 38
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/at;->d:Ltv/periscope/android/ui/broadcast/bu;

    goto :goto_0
.end method

.method private a()Z
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/at;->e:Ldmk;

    iget-object v0, v0, Ldmk;->d:Ltv/periscope/android/chat/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/at;->e:Ldmk;

    iget-object v0, v0, Ldmk;->b:Ltv/periscope/model/ac;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/at;->e:Ldmk;

    iget-object v0, v0, Ldmk;->d:Ltv/periscope/android/chat/f;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/at;->e:Ldmk;

    iget-object v1, v1, Ldmk;->b:Ltv/periscope/model/ac;

    .line 91
    invoke-virtual {v1}, Ltv/periscope/model/ac;->f()Ltv/periscope/model/o;

    move-result-object v1

    invoke-virtual {v1}, Ltv/periscope/model/o;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/periscope/android/chat/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(J)V
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/at;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/at;->a:Ltv/periscope/android/ui/broadcast/am;

    invoke-virtual {v0, p1, p2}, Ltv/periscope/android/ui/broadcast/am;->a(J)V

    .line 139
    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Ltv/periscope/android/player/a;)V
    .locals 7

    .prologue
    .line 121
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/at;->a:Ltv/periscope/android/ui/broadcast/am;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/at;->a:Ltv/periscope/android/ui/broadcast/am;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/am;->e()V

    .line 124
    :cond_0
    new-instance v0, Ltv/periscope/android/ui/broadcast/am;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/at;->b:Ltv/periscope/android/player/b;

    invoke-interface {v1}, Ltv/periscope/android/player/b;->a()Ltv/periscope/android/player/c;

    move-result-object v1

    invoke-interface {v1}, Ltv/periscope/android/player/c;->getPreview()Landroid/view/TextureView;

    move-result-object v2

    iget-object v4, p0, Ltv/periscope/android/ui/broadcast/at;->d:Ltv/periscope/android/ui/broadcast/bu;

    new-instance v5, Ltv/periscope/android/util/a;

    invoke-direct {v5}, Ltv/periscope/android/util/a;-><init>()V

    iget-object v6, p0, Ltv/periscope/android/ui/broadcast/at;->c:Ltv/periscope/android/data/b;

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Ltv/periscope/android/ui/broadcast/am;-><init>(Landroid/content/Context;Landroid/view/TextureView;Ltv/periscope/android/player/a;Ltv/periscope/android/ui/broadcast/bu;Ltv/periscope/android/util/a;Ltv/periscope/android/data/b;)V

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/at;->a:Ltv/periscope/android/ui/broadcast/am;

    .line 126
    return-void
.end method

.method public a(Ldmk;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Ltv/periscope/android/ui/broadcast/at;->e:Ldmk;

    .line 81
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/at;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/at;->a:Ltv/periscope/android/ui/broadcast/am;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/am;->n()V

    .line 146
    :cond_0
    return-void
.end method

.method public a(Ltv/periscope/android/chat/f;)Z
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/at;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/at;->e:Ldmk;

    iget-object v0, v0, Ldmk;->d:Ltv/periscope/android/chat/f;

    invoke-virtual {v0, p1}, Ltv/periscope/android/chat/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/at;->a:Ltv/periscope/android/ui/broadcast/am;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/at;->a:Ltv/periscope/android/ui/broadcast/am;

    .line 86
    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/am;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ltv/periscope/model/o;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltv/periscope/model/o;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ltv/periscope/model/v;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 131
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/at;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/at;->a:Ltv/periscope/android/ui/broadcast/am;

    const/4 v1, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Ltv/periscope/android/ui/broadcast/am;->a(Ltv/periscope/model/o;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(J)V
    .locals 1

    .prologue
    .line 157
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/at;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/at;->a:Ltv/periscope/android/ui/broadcast/am;

    invoke-virtual {v0, p1, p2}, Ltv/periscope/android/ui/broadcast/am;->b(J)V

    .line 160
    :cond_0
    return-void
.end method

.method public d()J
    .locals 2

    .prologue
    .line 44
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/at;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/at;->a:Ltv/periscope/android/ui/broadcast/am;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/am;->k()J

    move-result-wide v0

    .line 47
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 53
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/at;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/at;->a:Ltv/periscope/android/ui/broadcast/am;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/am;->l()J

    move-result-wide v0

    .line 56
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/at;->a:Ltv/periscope/android/ui/broadcast/am;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/at;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/at;->a:Ltv/periscope/android/ui/broadcast/am;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/am;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/at;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/at;->a:Ltv/periscope/android/ui/broadcast/am;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/am;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/at;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/at;->a:Ltv/periscope/android/ui/broadcast/am;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/am;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 116
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/at;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/at;->a:Ltv/periscope/android/ui/broadcast/am;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/am;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()V
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/at;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/at;->a:Ltv/periscope/android/ui/broadcast/am;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/am;->r()V

    .line 153
    :cond_0
    return-void
.end method

.method public l()V
    .locals 1

    .prologue
    .line 164
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/at;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/at;->a:Ltv/periscope/android/ui/broadcast/am;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/am;->m()V

    .line 167
    :cond_0
    return-void
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 171
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/at;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/at;->a:Ltv/periscope/android/ui/broadcast/am;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/am;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()I
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/at;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/at;->a:Ltv/periscope/android/ui/broadcast/am;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/am;->i()I

    move-result v0

    .line 195
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o()V
    .locals 1

    .prologue
    .line 201
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/at;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/at;->a:Ltv/periscope/android/ui/broadcast/am;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/am;->e()V

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/at;->a:Ltv/periscope/android/ui/broadcast/am;

    .line 205
    :cond_0
    return-void
.end method

.method public p()J
    .locals 2

    .prologue
    .line 62
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/at;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/at;->a:Ltv/periscope/android/ui/broadcast/am;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/am;->j()J

    move-result-wide v0

    .line 65
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public q()J
    .locals 2

    .prologue
    .line 71
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/at;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/at;->a:Ltv/periscope/android/ui/broadcast/am;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/am;->g()J

    move-result-wide v0

    .line 74
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
