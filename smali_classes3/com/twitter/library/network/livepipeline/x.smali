.class Lcom/twitter/library/network/livepipeline/x;
.super Lcom/twitter/library/network/livepipeline/v;
.source "Twttr"


# instance fields
.field final synthetic i:Lcom/twitter/library/network/livepipeline/LivePipeline;

.field private l:J

.field private m:I

.field private n:Ljava/lang/String;

.field private final o:Ljava/lang/String;

.field private p:Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;

.field private q:Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;


# direct methods
.method protected constructor <init>(Lcom/twitter/library/network/livepipeline/LivePipeline;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 933
    iput-object p1, p0, Lcom/twitter/library/network/livepipeline/x;->i:Lcom/twitter/library/network/livepipeline/LivePipeline;

    .line 934
    const-string/jumbo v0, "lp:events:::stream"

    invoke-direct {p0, p1, v0}, Lcom/twitter/library/network/livepipeline/v;-><init>(Lcom/twitter/library/network/livepipeline/LivePipeline;Ljava/lang/String;)V

    .line 926
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/twitter/library/network/livepipeline/x;->l:J

    .line 927
    const/4 v0, -0x1

    iput v0, p0, Lcom/twitter/library/network/livepipeline/x;->m:I

    .line 930
    sget-object v0, Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;->a:Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;

    iput-object v0, p0, Lcom/twitter/library/network/livepipeline/x;->p:Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;

    .line 935
    iput-object p2, p0, Lcom/twitter/library/network/livepipeline/x;->o:Ljava/lang/String;

    .line 936
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 947
    iput p1, p0, Lcom/twitter/library/network/livepipeline/x;->m:I

    .line 948
    return-void
.end method

.method public a(Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;)V
    .locals 0

    .prologue
    .line 955
    iput-object p1, p0, Lcom/twitter/library/network/livepipeline/x;->p:Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;

    .line 956
    return-void
.end method

.method public a(Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;)V
    .locals 0

    .prologue
    .line 964
    iput-object p1, p0, Lcom/twitter/library/network/livepipeline/x;->q:Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;

    .line 965
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 951
    iput-object p1, p0, Lcom/twitter/library/network/livepipeline/x;->n:Ljava/lang/String;

    .line 952
    return-void
.end method

.method protected e()Ljava/util/Map;
    .locals 4
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
    .line 969
    invoke-virtual {p0}, Lcom/twitter/library/network/livepipeline/x;->f()Lcom/twitter/util/collection/v;

    move-result-object v0

    const-string/jumbo v1, "time_to_establish"

    .line 970
    invoke-virtual {p0}, Lcom/twitter/library/network/livepipeline/x;->h()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    const-string/jumbo v1, "time_to_response"

    iget v2, p0, Lcom/twitter/library/network/livepipeline/x;->m:I

    .line 971
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    const-string/jumbo v1, "disconnection_reason"

    iget-object v2, p0, Lcom/twitter/library/network/livepipeline/x;->p:Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;

    .line 972
    invoke-virtual {v2}, Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    const-string/jumbo v1, "session_id"

    iget-object v2, p0, Lcom/twitter/library/network/livepipeline/x;->n:Ljava/lang/String;

    .line 973
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    const-string/jumbo v1, "series_id"

    iget-object v2, p0, Lcom/twitter/library/network/livepipeline/x;->o:Ljava/lang/String;

    .line 974
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    .line 976
    iget-object v1, p0, Lcom/twitter/library/network/livepipeline/x;->q:Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;

    if-eqz v1, :cond_0

    .line 977
    const-string/jumbo v1, "will_reconnect"

    iget-object v2, p0, Lcom/twitter/library/network/livepipeline/x;->q:Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;

    iget-boolean v2, v2, Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;->shouldBeConnected:Z

    .line 978
    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v1

    const-string/jumbo v2, "reconnect_decision_reason"

    iget-object v3, p0, Lcom/twitter/library/network/livepipeline/x;->q:Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;

    .line 979
    invoke-virtual {v3}, Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    .line 981
    :cond_0
    invoke-virtual {v0}, Lcom/twitter/util/collection/v;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public g()V
    .locals 2

    .prologue
    .line 939
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/x;->i:Lcom/twitter/library/network/livepipeline/LivePipeline;

    invoke-static {v0}, Lcom/twitter/library/network/livepipeline/LivePipeline;->m(Lcom/twitter/library/network/livepipeline/LivePipeline;)Lcom/twitter/platform/u;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/platform/u;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/library/network/livepipeline/x;->l:J

    .line 940
    return-void
.end method

.method public h()J
    .locals 4

    .prologue
    .line 943
    iget-wide v0, p0, Lcom/twitter/library/network/livepipeline/x;->l:J

    iget-wide v2, p0, Lcom/twitter/library/network/livepipeline/x;->j:J

    invoke-static {v0, v1, v2, v3}, Lcom/twitter/library/network/livepipeline/x;->a(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public i()Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;
    .locals 1

    .prologue
    .line 960
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/x;->q:Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;

    return-object v0
.end method
