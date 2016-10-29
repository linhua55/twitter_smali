.class abstract Lcom/twitter/library/network/livepipeline/v;
.super Lcom/twitter/library/network/livepipeline/y;
.source "Twttr"


# instance fields
.field protected final a:Ljava/util/concurrent/atomic/AtomicLong;

.field protected b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected c:J

.field protected d:J

.field protected e:J

.field protected f:J

.field protected g:J

.field final synthetic h:Lcom/twitter/library/network/livepipeline/LivePipeline;


# direct methods
.method protected constructor <init>(Lcom/twitter/library/network/livepipeline/LivePipeline;Ljava/lang/String;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v2, -0x1

    .line 819
    iput-object p1, p0, Lcom/twitter/library/network/livepipeline/v;->h:Lcom/twitter/library/network/livepipeline/LivePipeline;

    .line 820
    invoke-static {p1}, Lcom/twitter/library/network/livepipeline/LivePipeline;->d(Lcom/twitter/library/network/livepipeline/LivePipeline;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/twitter/library/network/livepipeline/y;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 813
    iput-wide v2, p0, Lcom/twitter/library/network/livepipeline/v;->c:J

    .line 814
    iput-wide v2, p0, Lcom/twitter/library/network/livepipeline/v;->d:J

    .line 815
    iput-wide v2, p0, Lcom/twitter/library/network/livepipeline/v;->e:J

    .line 816
    iput-wide v4, p0, Lcom/twitter/library/network/livepipeline/v;->f:J

    .line 817
    iput-wide v4, p0, Lcom/twitter/library/network/livepipeline/v;->g:J

    .line 821
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/twitter/library/network/livepipeline/v;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 822
    invoke-static {}, Lcom/twitter/util/collection/MutableSet;->a()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/network/livepipeline/v;->b:Ljava/util/Set;

    .line 823
    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    .prologue
    .line 840
    iget-wide v0, p0, Lcom/twitter/library/network/livepipeline/v;->c:J

    iget-wide v2, p0, Lcom/twitter/library/network/livepipeline/v;->j:J

    invoke-static {v0, v1, v2, v3}, Lcom/twitter/library/network/livepipeline/v;->a(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(J)V
    .locals 5

    .prologue
    .line 826
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/v;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 827
    iput-wide p1, p0, Lcom/twitter/library/network/livepipeline/v;->c:J

    .line 835
    :cond_0
    :goto_0
    iput-wide p1, p0, Lcom/twitter/library/network/livepipeline/v;->d:J

    .line 836
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/v;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 837
    return-void

    .line 828
    :cond_1
    iget-wide v0, p0, Lcom/twitter/library/network/livepipeline/v;->d:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 829
    iget-wide v0, p0, Lcom/twitter/library/network/livepipeline/v;->d:J

    invoke-static {p1, p2, v0, v1}, Lcom/twitter/library/network/livepipeline/v;->a(JJ)J

    move-result-wide v0

    .line 830
    iget-wide v2, p0, Lcom/twitter/library/network/livepipeline/v;->e:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 831
    iput-wide v0, p0, Lcom/twitter/library/network/livepipeline/v;->e:J

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/v;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b()J
    .locals 4

    .prologue
    .line 844
    iget-wide v0, p0, Lcom/twitter/library/network/livepipeline/v;->d:J

    iget-wide v2, p0, Lcom/twitter/library/network/livepipeline/v;->j:J

    invoke-static {v0, v1, v2, v3}, Lcom/twitter/library/network/livepipeline/v;->a(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(J)V
    .locals 3

    .prologue
    .line 864
    iget-wide v0, p0, Lcom/twitter/library/network/livepipeline/v;->f:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/twitter/library/network/livepipeline/v;->f:J

    .line 865
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 856
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/v;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 857
    return-void
.end method

.method public c()J
    .locals 4

    .prologue
    .line 848
    iget-wide v0, p0, Lcom/twitter/library/network/livepipeline/v;->k:J

    iget-wide v2, p0, Lcom/twitter/library/network/livepipeline/v;->d:J

    invoke-static {v0, v1, v2, v3}, Lcom/twitter/library/network/livepipeline/v;->a(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public d()V
    .locals 4

    .prologue
    .line 860
    iget-wide v0, p0, Lcom/twitter/library/network/livepipeline/v;->g:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/twitter/library/network/livepipeline/v;->g:J

    .line 861
    return-void
.end method

.method protected f()Lcom/twitter/util/collection/v;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/util/collection/v",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 869
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/v;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 870
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/library/network/livepipeline/v;->k()J

    move-result-wide v0

    div-long/2addr v0, v2

    .line 872
    :goto_0
    invoke-static {}, Lcom/twitter/util/collection/v;->e()Lcom/twitter/util/collection/v;

    move-result-object v4

    const-string/jumbo v5, "time_to_first_event"

    .line 873
    invoke-virtual {p0}, Lcom/twitter/library/network/livepipeline/v;->a()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v4

    const-string/jumbo v5, "time_to_last_event"

    .line 874
    invoke-virtual {p0}, Lcom/twitter/library/network/livepipeline/v;->b()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v4

    const-string/jumbo v5, "final_idle_time"

    .line 875
    invoke-virtual {p0}, Lcom/twitter/library/network/livepipeline/v;->c()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v4

    const-string/jumbo v5, "total_events"

    .line 876
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v2

    const-string/jumbo v3, "mean_time_between_events"

    .line 877
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    const-string/jumbo v1, "total_unique_topics"

    iget-object v2, p0, Lcom/twitter/library/network/livepipeline/v;->b:Ljava/util/Set;

    .line 878
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    const-string/jumbo v1, "total_subscriptions"

    iget-wide v2, p0, Lcom/twitter/library/network/livepipeline/v;->g:J

    .line 879
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    const-string/jumbo v1, "total_bytes"

    iget-wide v2, p0, Lcom/twitter/library/network/livepipeline/v;->f:J

    .line 880
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    const-string/jumbo v1, "max_time_between_events"

    iget-wide v2, p0, Lcom/twitter/library/network/livepipeline/v;->e:J

    .line 881
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    .line 872
    return-object v0

    .line 870
    :cond_0
    const-wide/16 v0, -0x1

    goto/16 :goto_0
.end method
