.class public Lcom/twitter/android/card/ak;
.super Lcom/twitter/android/card/ab;
.source "Twttr"

# interfaces
.implements Lcom/twitter/library/card/af;
.implements Lcom/twitter/library/card/bo;
.implements Lcom/twitter/library/widget/a;


# instance fields
.field private final a:Lcom/twitter/android/moments/viewmodels/aj;

.field private final b:Laig;

.field private c:Lcom/twitter/android/moments/viewmodels/ai;

.field private d:Lcom/twitter/model/moments/a;

.field private e:J

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;Lcom/twitter/android/moments/viewmodels/aj;Laig;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/twitter/android/card/ab;-><init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;)V

    .line 48
    iput-object p6, p0, Lcom/twitter/android/card/ak;->b:Laig;

    .line 49
    iput-object p5, p0, Lcom/twitter/android/card/ak;->a:Lcom/twitter/android/moments/viewmodels/aj;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/moments/viewmodels/aj;Laig;)V
    .locals 7

    .prologue
    .line 38
    new-instance v3, Lcom/twitter/android/card/k;

    invoke-direct {v3, p1}, Lcom/twitter/android/card/k;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/twitter/android/card/e;

    invoke-direct {v4, p1}, Lcom/twitter/android/card/e;-><init>(Landroid/app/Activity;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/card/ak;-><init>(Landroid/app/Activity;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;Lcom/twitter/android/moments/viewmodels/aj;Laig;)V

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/card/ak;)Lcom/twitter/android/moments/viewmodels/ai;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/twitter/android/card/ak;->c:Lcom/twitter/android/moments/viewmodels/ai;

    return-object v0
.end method

.method private q()V
    .locals 4

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/twitter/android/card/ak;->f:Z

    if-nez v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/twitter/android/card/ak;->j()Lcom/twitter/library/card/ae;

    move-result-object v0

    .line 164
    iget-wide v2, p0, Lcom/twitter/android/card/ak;->y:J

    invoke-virtual {v0, v2, v3, p0}, Lcom/twitter/library/card/ae;->a(JLjava/lang/Object;)V

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/card/ak;->f:Z

    .line 167
    :cond_0
    return-void
.end method

.method private s()V
    .locals 4

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/twitter/android/card/ak;->f:Z

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/twitter/android/card/ak;->j()Lcom/twitter/library/card/ae;

    move-result-object v0

    iget-wide v2, p0, Lcom/twitter/android/card/ak;->y:J

    invoke-virtual {v0, v2, v3, p0}, Lcom/twitter/library/card/ae;->b(JLjava/lang/Object;)V

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/card/ak;->f:Z

    .line 174
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 91
    invoke-super {p0}, Lcom/twitter/android/card/ab;->a()V

    .line 92
    iget-object v0, p0, Lcom/twitter/android/card/ak;->b:Laig;

    invoke-interface {v0}, Laig;->c()V

    .line 93
    invoke-direct {p0}, Lcom/twitter/android/card/ak;->s()V

    .line 94
    invoke-virtual {p0}, Lcom/twitter/android/card/ak;->k()Lcom/twitter/library/card/bn;

    move-result-object v0

    iget-wide v2, p0, Lcom/twitter/android/card/ak;->e:J

    invoke-virtual {v0, v2, v3, p0}, Lcom/twitter/library/card/bn;->b(JLjava/lang/Object;)V

    .line 95
    return-void
.end method

.method public a(JLclm;)V
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/twitter/android/card/ak;->a:Lcom/twitter/android/moments/viewmodels/aj;

    invoke-virtual {v0, p3}, Lcom/twitter/android/moments/viewmodels/aj;->a(Lclm;)Lcom/twitter/android/moments/viewmodels/ai;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/card/ak;->c:Lcom/twitter/android/moments/viewmodels/ai;

    .line 72
    iget-object v0, p0, Lcom/twitter/android/card/ak;->b:Laig;

    iget-object v1, p0, Lcom/twitter/android/card/ak;->c:Lcom/twitter/android/moments/viewmodels/ai;

    iget-object v2, p0, Lcom/twitter/android/card/ak;->t:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-interface {v0, v1, v2}, Laig;->a(Lcom/twitter/android/moments/viewmodels/u;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 73
    iget-object v0, p0, Lcom/twitter/android/card/ak;->b:Laig;

    invoke-virtual {p0}, Lcom/twitter/android/card/ak;->p()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-interface {v0, v1}, Laig;->a(Landroid/view/View$OnClickListener;)V

    .line 74
    return-void
.end method

.method public a(JLcom/twitter/model/core/TwitterUser;)V
    .locals 2

    .prologue
    .line 78
    invoke-static {p3}, Lcom/twitter/android/moments/viewmodels/ai;->a(Lcom/twitter/model/core/TwitterUser;)Lcom/twitter/model/moments/a;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/card/ak;->d:Lcom/twitter/model/moments/a;

    .line 79
    iget-object v0, p0, Lcom/twitter/android/card/ak;->b:Laig;

    invoke-interface {v0, p3}, Laig;->a(Lcom/twitter/model/core/TwitterUser;)V

    .line 80
    iget-object v0, p0, Lcom/twitter/android/card/ak;->b:Laig;

    iget-object v1, p0, Lcom/twitter/android/card/ak;->d:Lcom/twitter/model/moments/a;

    invoke-interface {v0, v1}, Laig;->a(Lcom/twitter/model/moments/a;)V

    .line 81
    invoke-direct {p0}, Lcom/twitter/android/card/ak;->q()V

    .line 82
    return-void
.end method

.method public a(Lcom/twitter/library/card/av;)V
    .locals 4

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/twitter/android/card/ab;->a(Lcom/twitter/library/card/av;)V

    .line 56
    iget-wide v0, p1, Lcom/twitter/library/card/av;->b:J

    iput-wide v0, p0, Lcom/twitter/android/card/ak;->y:J

    .line 57
    iget-object v0, p1, Lcom/twitter/library/card/av;->c:Lclm;

    invoke-static {v0}, Lcom/twitter/android/moments/viewmodels/ai;->a(Lclm;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/card/ak;->e:J

    .line 60
    iget-wide v0, p0, Lcom/twitter/android/card/ak;->e:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/twitter/android/card/ak;->k()Lcom/twitter/library/card/bn;

    move-result-object v0

    .line 62
    iget-wide v2, p0, Lcom/twitter/android/card/ak;->e:J

    invoke-virtual {v0, v2, v3, p0}, Lcom/twitter/library/card/bn;->a(JLjava/lang/Object;)V

    .line 67
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/card/ak;->b:Laig;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Laig;->a(Lcom/twitter/model/core/TwitterUser;)V

    .line 65
    invoke-direct {p0}, Lcom/twitter/android/card/ak;->q()V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Lcom/twitter/library/card/av;

    invoke-virtual {p0, p1}, Lcom/twitter/android/card/ak;->a(Lcom/twitter/library/card/av;)V

    return-void
.end method

.method public at_()Lcom/twitter/library/av/playback/ba;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/twitter/android/card/ak;->b:Laig;

    invoke-interface {v0}, Laig;->d()Lcom/twitter/library/widget/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/library/widget/a;->at_()Lcom/twitter/library/av/playback/ba;

    move-result-object v0

    return-object v0
.end method

.method public ay_()Lcom/twitter/library/av/playback/ba;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/twitter/android/card/ak;->b:Laig;

    invoke-interface {v0}, Laig;->d()Lcom/twitter/library/widget/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/library/widget/a;->ay_()Lcom/twitter/library/av/playback/ba;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/twitter/android/card/ak;->b:Laig;

    invoke-interface {v0}, Laig;->b()V

    .line 87
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/twitter/android/card/ak;->b:Laig;

    invoke-interface {v0}, Laig;->d()Lcom/twitter/library/widget/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/library/widget/a;->c()Z

    move-result v0

    return v0
.end method

.method public e()Landroid/view/View;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/twitter/android/card/ak;->b:Laig;

    invoke-interface {v0}, Laig;->e()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/twitter/library/av/playback/ba;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/twitter/android/card/ak;->b:Laig;

    invoke-interface {v0}, Laig;->d()Lcom/twitter/library/widget/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/library/widget/a;->h()Lcom/twitter/library/av/playback/ba;

    move-result-object v0

    return-object v0
.end method

.method public i()Landroid/view/View;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/twitter/android/card/ak;->b:Laig;

    invoke-interface {v0}, Laig;->d()Lcom/twitter/library/widget/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/library/widget/a;->i()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected j()Lcom/twitter/library/card/ae;
    .locals 1

    .prologue
    .line 104
    invoke-static {}, Lcom/twitter/library/card/ae;->a()Lcom/twitter/library/card/ae;

    move-result-object v0

    return-object v0
.end method

.method protected k()Lcom/twitter/library/card/bn;
    .locals 1

    .prologue
    .line 109
    invoke-static {}, Lcom/twitter/library/card/bn;->a()Lcom/twitter/library/card/bn;

    move-result-object v0

    return-object v0
.end method

.method p()Landroid/view/View$OnClickListener;
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 115
    new-instance v0, Lcom/twitter/android/card/al;

    invoke-direct {v0, p0}, Lcom/twitter/android/card/al;-><init>(Lcom/twitter/android/card/ak;)V

    return-object v0
.end method
