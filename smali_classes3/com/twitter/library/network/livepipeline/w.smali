.class Lcom/twitter/library/network/livepipeline/w;
.super Lcom/twitter/library/network/livepipeline/v;
.source "Twttr"


# instance fields
.field final synthetic i:Lcom/twitter/library/network/livepipeline/LivePipeline;

.field private l:I

.field private final m:Ljava/lang/String;

.field private n:J


# direct methods
.method protected constructor <init>(Lcom/twitter/library/network/livepipeline/LivePipeline;)V
    .locals 2

    .prologue
    .line 894
    iput-object p1, p0, Lcom/twitter/library/network/livepipeline/w;->i:Lcom/twitter/library/network/livepipeline/LivePipeline;

    .line 895
    const-string/jumbo v0, "lp:events:::series"

    invoke-direct {p0, p1, v0}, Lcom/twitter/library/network/livepipeline/v;-><init>(Lcom/twitter/library/network/livepipeline/LivePipeline;Ljava/lang/String;)V

    .line 890
    const/4 v0, 0x0

    iput v0, p0, Lcom/twitter/library/network/livepipeline/w;->l:I

    .line 892
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/twitter/library/network/livepipeline/w;->n:J

    .line 896
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/network/livepipeline/w;->m:Ljava/lang/String;

    .line 897
    return-void
.end method


# virtual methods
.method public c(J)V
    .locals 3

    .prologue
    .line 909
    iget-wide v0, p0, Lcom/twitter/library/network/livepipeline/w;->n:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/twitter/library/network/livepipeline/w;->n:J

    .line 910
    return-void
.end method

.method protected e()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 914
    invoke-virtual {p0}, Lcom/twitter/library/network/livepipeline/w;->f()Lcom/twitter/util/collection/v;

    move-result-object v0

    .line 915
    const-string/jumbo v1, "stream_count"

    iget v2, p0, Lcom/twitter/library/network/livepipeline/w;->l:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    .line 916
    const-string/jumbo v1, "series_id"

    invoke-virtual {p0}, Lcom/twitter/library/network/livepipeline/w;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    .line 917
    const-string/jumbo v1, "gap_time"

    invoke-virtual {p0}, Lcom/twitter/library/network/livepipeline/w;->k()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/twitter/library/network/livepipeline/w;->n:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    .line 918
    invoke-virtual {v0}, Lcom/twitter/util/collection/v;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 901
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/w;->m:Ljava/lang/String;

    return-object v0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 905
    iget v0, p0, Lcom/twitter/library/network/livepipeline/w;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/twitter/library/network/livepipeline/w;->l:I

    .line 906
    return-void
.end method
