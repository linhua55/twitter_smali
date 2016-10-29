.class public Lcom/twitter/android/metrics/d;
.super Lcom/twitter/library/metrics/f;
.source "Twttr"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Layf;)V
    .locals 4

    .prologue
    .line 35
    const-string/jumbo v0, "bellbird_profile_tweets_tab:complete"

    sget-object v1, Laxz;->n:Laye;

    const-string/jumbo v2, "BellbirdProfileMetric"

    const-string/jumbo v3, "bellbird_profile_tweets_tab:complete"

    .line 36
    invoke-static {v2, v3}, Lcom/twitter/android/metrics/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 35
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/twitter/library/metrics/f;-><init>(Ljava/lang/String;Laye;Ljava/lang/String;Layf;)V

    .line 37
    const-string/jumbo v0, "BellbirdProfileMetric"

    iput-object v0, p0, Lcom/twitter/android/metrics/d;->p:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public static a(JLayj;Z)Lcom/twitter/android/metrics/d;
    .locals 2

    .prologue
    .line 23
    const-string/jumbo v0, "BellbirdProfileMetric"

    const-string/jumbo v1, "bellbird_profile_tweets_tab:complete"

    invoke-static {v0, v1}, Lcom/twitter/android/metrics/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-virtual {p2, v0}, Layj;->a(Ljava/lang/String;)Laxy;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/metrics/d;

    .line 26
    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 27
    new-instance v0, Lcom/twitter/android/metrics/d;

    invoke-direct {v0, p2}, Lcom/twitter/android/metrics/d;-><init>(Layf;)V

    .line 28
    invoke-virtual {v0, p0, p1}, Lcom/twitter/android/metrics/d;->b(J)V

    .line 29
    invoke-virtual {p2, v0}, Layj;->d(Laxy;)Laxy;

    .line 31
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 41
    iget v0, p0, Lcom/twitter/android/metrics/d;->a:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/twitter/android/metrics/d;->a:I

    .line 42
    iget v0, p0, Lcom/twitter/android/metrics/d;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/twitter/android/metrics/d;->j()V

    .line 45
    :cond_0
    return-void
.end method
