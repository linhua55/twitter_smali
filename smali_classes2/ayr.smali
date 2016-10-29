.class public Layr;
.super Layn;
.source "Twttr"


# instance fields
.field protected a:Layq;

.field protected b:J

.field private c:Layx;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Laye;Ljava/lang/String;Layf;ZI)V
    .locals 2

    .prologue
    .line 37
    invoke-direct/range {p0 .. p7}, Layn;-><init>(Landroid/content/Context;Ljava/lang/String;Laye;Ljava/lang/String;Layf;ZI)V

    .line 40
    iget-object v0, p0, Layr;->a:Layq;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Layq;

    const-string/jumbo v1, "FramerateValueTracker"

    invoke-virtual {p0, v1}, Layr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Layq;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Layr;->a:Layq;

    .line 43
    :cond_0
    invoke-static {}, Layx;->a()Layx;

    move-result-object v0

    iput-object v0, p0, Layr;->c:Layx;

    .line 44
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/SharedPreferences$Editor;)V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0, p1}, Layn;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 118
    iget-object v0, p0, Layr;->a:Layq;

    invoke-virtual {v0, p1}, Layq;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 119
    return-void
.end method

.method protected a(Landroid/content/SharedPreferences;)V
    .locals 2

    .prologue
    .line 129
    invoke-super {p0, p1}, Layn;->a(Landroid/content/SharedPreferences;)V

    .line 130
    new-instance v0, Layq;

    const-string/jumbo v1, "FramerateValueTracker"

    invoke-virtual {p0, v1}, Layr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Layq;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;)V

    iput-object v0, p0, Layr;->a:Layq;

    .line 131
    return-void
.end method

.method protected aV_()Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x1

    return v0
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Layr;->c:Layx;

    if-nez v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Layr;->c:Layx;

    invoke-virtual {v0}, Layx;->b()V

    .line 86
    invoke-super {p0}, Layn;->b()V

    goto :goto_0
.end method

.method protected b(Landroid/content/SharedPreferences$Editor;)V
    .locals 1

    .prologue
    .line 123
    invoke-super {p0, p1}, Layn;->b(Landroid/content/SharedPreferences$Editor;)V

    .line 124
    iget-object v0, p0, Layr;->a:Layq;

    invoke-virtual {v0, p1}, Layq;->b(Landroid/content/SharedPreferences$Editor;)V

    .line 125
    return-void
.end method

.method protected c()V
    .locals 4

    .prologue
    .line 93
    iget-object v0, p0, Layr;->c:Layx;

    if-nez v0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-super {p0}, Layn;->c()V

    .line 97
    iget-object v0, p0, Layr;->c:Layx;

    invoke-virtual {v0}, Layx;->d()J

    move-result-wide v0

    iput-wide v0, p0, Layr;->b:J

    .line 98
    invoke-virtual {p0}, Layr;->aV_()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Layr;->b:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Layr;->a:Layq;

    iget-wide v2, p0, Layr;->b:J

    invoke-virtual {v0, v2, v3}, Layq;->a(J)V

    .line 100
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Layr;->b(Z)V

    .line 102
    :cond_1
    iget-object v0, p0, Layr;->c:Layx;

    invoke-virtual {v0}, Layx;->c()V

    goto :goto_0
.end method

.method public d()Ljava/lang/Long;
    .locals 4

    .prologue
    .line 111
    iget-object v0, p0, Layr;->a:Layq;

    iget-wide v0, v0, Layq;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Layr;->a:Layq;

    invoke-virtual {v0}, Layq;->b()F

    move-result v0

    float-to-long v0, v0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method protected e()V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Layn;->e()V

    .line 65
    iget-object v0, p0, Layr;->a:Layq;

    invoke-virtual {v0}, Layq;->a()V

    .line 66
    invoke-virtual {p0}, Layr;->q()V

    .line 67
    return-void
.end method

.method protected h()Z
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method
