.class abstract Lcom/twitter/library/network/livepipeline/am;
.super Lcom/twitter/library/network/livepipeline/al;
.source "Twttr"


# instance fields
.field private final b:Lcom/twitter/library/network/livepipeline/af;

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/client/Session;Lcom/twitter/library/network/livepipeline/af;JLjava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/twitter/library/client/Session;",
            "Lcom/twitter/library/network/livepipeline/af;",
            "J",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-static {p5, p6}, Lcom/twitter/library/network/livepipeline/al;->a(J)Lcom/twitter/internal/android/service/ac;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/twitter/library/network/livepipeline/al;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/client/Session;Lcom/twitter/internal/android/service/ac;)V

    .line 34
    iput-object p4, p0, Lcom/twitter/library/network/livepipeline/am;->b:Lcom/twitter/library/network/livepipeline/af;

    .line 35
    iput-object p7, p0, Lcom/twitter/library/network/livepipeline/am;->c:Ljava/util/Set;

    .line 36
    return-void
.end method

.method protected static c(Lcom/twitter/library/service/aa;)Z
    .locals 2

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/twitter/library/service/aa;->d()I

    move-result v0

    const/16 v1, 0x190

    if-ne v0, v1, :cond_0

    const/16 v0, 0x188

    .line 96
    invoke-static {p0, v0}, Lcom/twitter/library/network/at;->a(Lcom/twitter/library/service/aa;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 95
    :goto_0
    return v0

    .line 96
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/service/c;)V
    .locals 5

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/twitter/library/network/livepipeline/am;->b()Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-virtual {p0}, Lcom/twitter/library/network/livepipeline/am;->u()Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-virtual {p2}, Lcom/twitter/library/service/aa;->b()Z

    move-result v2

    if-nez v2, :cond_1

    .line 49
    iget-object v2, p0, Lcom/twitter/library/network/livepipeline/am;->c:Ljava/util/Set;

    invoke-virtual {p0, v2}, Lcom/twitter/library/network/livepipeline/am;->b(Ljava/util/Collection;)V

    .line 50
    const-string/jumbo v2, "LivePipeline"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Operation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " failed for topics: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string/jumbo v0, "LivePipeline"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Response Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/twitter/library/service/aa;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string/jumbo v0, "LivePipeline"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/twitter/library/service/aa;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-static {p2}, Lcom/twitter/library/network/livepipeline/am;->c(Lcom/twitter/library/service/aa;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/am;->p:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/library/network/livepipeline/LivePipeline;->a(Landroid/content/Context;)Lcom/twitter/library/network/livepipeline/LivePipeline;

    move-result-object v0

    sget-object v1, Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;->e:Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;

    sget-object v2, Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;->a:Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/network/livepipeline/LivePipeline;->a(Lcom/twitter/library/network/livepipeline/LivePipeline$DisconnectionReason;Lcom/twitter/library/network/livepipeline/LivePipeline$ReconnectDecision;)V

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    iget-object v2, p0, Lcom/twitter/library/network/livepipeline/am;->c:Ljava/util/Set;

    invoke-virtual {p0, v2}, Lcom/twitter/library/network/livepipeline/am;->a(Ljava/util/Collection;)V

    .line 60
    const-string/jumbo v2, "LivePipeline"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Operation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " succeeded for topics: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    const-string/jumbo v0, ","

    iget-object v1, p0, Lcom/twitter/library/network/livepipeline/am;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected b(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    return-void
.end method

.method protected b(Lcom/twitter/library/service/aa;)Z
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/am;->b:Lcom/twitter/library/network/livepipeline/af;

    invoke-interface {v0}, Lcom/twitter/library/network/livepipeline/af;->b()Z

    move-result v0

    return v0
.end method

.method protected g()Ljava/util/Map;
    .locals 3
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
    .line 79
    invoke-static {}, Lcom/twitter/util/collection/v;->e()Lcom/twitter/util/collection/v;

    move-result-object v0

    const-string/jumbo v1, "LivePipeline-Session"

    iget-object v2, p0, Lcom/twitter/library/network/livepipeline/am;->b:Lcom/twitter/library/network/livepipeline/af;

    .line 80
    invoke-interface {v2}, Lcom/twitter/library/network/livepipeline/af;->a()Ljava/lang/String;

    move-result-object v2

    .line 79
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lcom/twitter/util/collection/v;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 79
    return-object v0
.end method

.method protected h()Ljava/util/Map;
    .locals 3
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
    .line 86
    invoke-static {}, Lcom/twitter/util/collection/v;->e()Lcom/twitter/util/collection/v;

    move-result-object v0

    const-string/jumbo v1, "topic"

    invoke-virtual {p0}, Lcom/twitter/library/network/livepipeline/am;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/util/collection/v;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method
