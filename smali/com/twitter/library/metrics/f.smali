.class public Lcom/twitter/library/metrics/f;
.super Layp;
.source "Twttr"


# direct methods
.method public constructor <init>(Ljava/lang/String;Laye;Ljava/lang/String;Layf;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Layp;-><init>(Ljava/lang/String;Laye;Ljava/lang/String;Layf;)V

    .line 39
    sget-object v0, Lcom/twitter/library/metrics/ForegroundMetricTracker$BackgroundBehavior;->a:Lcom/twitter/library/metrics/ForegroundMetricTracker$BackgroundBehavior;

    invoke-static {p0, v0}, Lcom/twitter/library/metrics/ForegroundMetricTracker;->a(Laxy;Lcom/twitter/library/metrics/ForegroundMetricTracker$BackgroundBehavior;)V

    .line 41
    return-void
.end method

.method public static b(Ljava/lang/String;Layj;JLaye;)Lcom/twitter/library/metrics/f;
    .locals 6

    .prologue
    .line 22
    const-string/jumbo v0, "ForegroundTimingMetric"

    invoke-static {v0, p0}, Lcom/twitter/library/metrics/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/twitter/library/metrics/f;->b(Ljava/lang/String;Layj;JLaye;Ljava/lang/String;)Lcom/twitter/library/metrics/f;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;Layj;JLaye;Ljava/lang/String;)Lcom/twitter/library/metrics/f;
    .locals 2

    .prologue
    .line 27
    invoke-virtual {p1, p5}, Layj;->a(Ljava/lang/String;)Laxy;

    move-result-object v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/twitter/library/metrics/f;

    invoke-direct {v0, p0, p4, p5, p1}, Lcom/twitter/library/metrics/f;-><init>(Ljava/lang/String;Laye;Ljava/lang/String;Layf;)V

    .line 30
    invoke-virtual {p1, v0}, Layj;->d(Laxy;)Laxy;

    move-result-object v0

    .line 31
    invoke-virtual {v0, p2, p3}, Laxy;->b(J)V

    .line 33
    :cond_0
    check-cast v0, Lcom/twitter/library/metrics/f;

    return-object v0
.end method

.method public static b(Ljava/lang/String;Layj;Laye;)Lcom/twitter/library/metrics/f;
    .locals 6

    .prologue
    .line 17
    const-wide/16 v2, 0x0

    const-string/jumbo v0, "ForegroundTimingMetric"

    invoke-static {v0, p0}, Lcom/twitter/library/metrics/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/twitter/library/metrics/f;->b(Ljava/lang/String;Layj;JLaye;Ljava/lang/String;)Lcom/twitter/library/metrics/f;

    move-result-object v0

    return-object v0
.end method
