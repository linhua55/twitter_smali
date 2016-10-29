.class public Layp;
.super Laxy;
.source "Twttr"


# direct methods
.method public constructor <init>(Ljava/lang/String;Laye;Ljava/lang/String;Layf;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3, p4}, Laxy;-><init>(Ljava/lang/String;Laye;Ljava/lang/String;Layf;)V

    .line 78
    return-void
.end method

.method public static a(Ljava/lang/String;Layj;JLaye;)Layp;
    .locals 6

    .prologue
    .line 50
    const-string/jumbo v0, "TimingMetric"

    invoke-static {v0, p0}, Layp;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Layp;->a(Ljava/lang/String;Layj;JLaye;Ljava/lang/String;)Layp;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Layj;JLaye;Ljava/lang/String;)Layp;
    .locals 2

    .prologue
    .line 67
    invoke-virtual {p1, p5}, Layj;->a(Ljava/lang/String;)Laxy;

    move-result-object v0

    .line 68
    if-nez v0, :cond_0

    .line 69
    new-instance v0, Layp;

    invoke-direct {v0, p0, p4, p5, p1}, Layp;-><init>(Ljava/lang/String;Laye;Ljava/lang/String;Layf;)V

    invoke-virtual {p1, v0}, Layj;->d(Laxy;)Laxy;

    move-result-object v0

    .line 70
    invoke-virtual {v0, p2, p3}, Laxy;->b(J)V

    .line 72
    :cond_0
    check-cast v0, Layp;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Layj;Laye;)Layp;
    .locals 6

    .prologue
    .line 30
    const-wide/16 v2, 0x0

    const-string/jumbo v0, "TimingMetric"

    invoke-static {v0, p0}, Layp;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Layp;->a(Ljava/lang/String;Layj;JLaye;Ljava/lang/String;)Layp;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected b()V
    .locals 2

    .prologue
    .line 82
    invoke-virtual {p0}, Layp;->z()J

    move-result-wide v0

    iput-wide v0, p0, Layp;->u:J

    .line 83
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Layp;->b(Z)V

    .line 84
    return-void
.end method

.method protected c()V
    .locals 4

    .prologue
    .line 88
    invoke-virtual {p0}, Layp;->z()J

    move-result-wide v0

    iget-wide v2, p0, Layp;->u:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Layp;->t:J

    .line 89
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Layp;->b(Z)V

    .line 90
    invoke-virtual {p0}, Layp;->o()V

    .line 91
    invoke-virtual {p0}, Layp;->n()V

    .line 92
    return-void
.end method

.method protected e()V
    .locals 0

    .prologue
    .line 96
    invoke-virtual {p0}, Layp;->n()V

    .line 97
    return-void
.end method
