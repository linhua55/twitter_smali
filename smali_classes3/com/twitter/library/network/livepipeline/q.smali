.class Lcom/twitter/library/network/livepipeline/q;
.super Lcom/twitter/library/client/ad;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/library/network/livepipeline/LivePipeline;


# direct methods
.method constructor <init>(Lcom/twitter/library/network/livepipeline/LivePipeline;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/twitter/library/network/livepipeline/q;->a:Lcom/twitter/library/network/livepipeline/LivePipeline;

    invoke-direct {p0}, Lcom/twitter/library/client/ad;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/library/client/Session;)V
    .locals 3

    .prologue
    .line 214
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/q;->a:Lcom/twitter/library/network/livepipeline/LivePipeline;

    sget-object v1, Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;->c:Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;

    sget-object v2, Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;->d:Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/network/livepipeline/LivePipeline;->a(Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;)V

    .line 215
    return-void
.end method
