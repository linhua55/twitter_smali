.class Lcom/twitter/library/network/livepipeline/s;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldjf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldjf",
        "<",
        "Lcom/twitter/model/livepipeline/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/library/network/livepipeline/LivePipeline;


# direct methods
.method constructor <init>(Lcom/twitter/library/network/livepipeline/LivePipeline;)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lcom/twitter/library/network/livepipeline/s;->a:Lcom/twitter/library/network/livepipeline/LivePipeline;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/livepipeline/a;)V
    .locals 6

    .prologue
    .line 340
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/s;->a:Lcom/twitter/library/network/livepipeline/LivePipeline;

    iget-object v1, p1, Lcom/twitter/model/livepipeline/a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/twitter/library/network/livepipeline/LivePipeline;->a(Lcom/twitter/library/network/livepipeline/LivePipeline;Ljava/lang/String;)Ljava/lang/String;

    .line 341
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/s;->a:Lcom/twitter/library/network/livepipeline/LivePipeline;

    iget-object v1, p0, Lcom/twitter/library/network/livepipeline/s;->a:Lcom/twitter/library/network/livepipeline/LivePipeline;

    invoke-static {v1}, Lcom/twitter/library/network/livepipeline/LivePipeline;->a(Lcom/twitter/library/network/livepipeline/LivePipeline;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitter/library/network/livepipeline/LivePipeline;->b(Lcom/twitter/library/network/livepipeline/LivePipeline;Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/s;->a:Lcom/twitter/library/network/livepipeline/LivePipeline;

    iget-object v1, p1, Lcom/twitter/model/livepipeline/a;->b:Ljava/lang/Long;

    invoke-static {v0, v1}, Lcom/twitter/library/network/livepipeline/LivePipeline;->a(Lcom/twitter/library/network/livepipeline/LivePipeline;Ljava/lang/Long;)Ljava/lang/Long;

    .line 343
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/s;->a:Lcom/twitter/library/network/livepipeline/LivePipeline;

    iget-object v1, p1, Lcom/twitter/model/livepipeline/a;->b:Ljava/lang/Long;

    .line 344
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-float v1, v2

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v1, v2

    float-to-long v2, v1

    .line 345
    invoke-static {}, Lcom/twitter/library/network/livepipeline/LivePipeline;->b()J

    move-result-wide v4

    .line 343
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitter/library/network/livepipeline/LivePipeline;->b(Lcom/twitter/library/network/livepipeline/LivePipeline;Ljava/lang/Long;)Ljava/lang/Long;

    .line 347
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/s;->a:Lcom/twitter/library/network/livepipeline/LivePipeline;

    const-wide/32 v2, 0xea60

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitter/library/network/livepipeline/LivePipeline;->c(Lcom/twitter/library/network/livepipeline/LivePipeline;Ljava/lang/Long;)Ljava/lang/Long;

    .line 350
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/s;->a:Lcom/twitter/library/network/livepipeline/LivePipeline;

    invoke-static {v0}, Lcom/twitter/library/network/livepipeline/LivePipeline;->f(Lcom/twitter/library/network/livepipeline/LivePipeline;)Lrx/ap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/s;->a:Lcom/twitter/library/network/livepipeline/LivePipeline;

    invoke-static {v0}, Lcom/twitter/library/network/livepipeline/LivePipeline;->f(Lcom/twitter/library/network/livepipeline/LivePipeline;)Lrx/ap;

    move-result-object v0

    invoke-interface {v0}, Lrx/ap;->R_()V

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/s;->a:Lcom/twitter/library/network/livepipeline/LivePipeline;

    invoke-static {v0}, Lcom/twitter/library/network/livepipeline/LivePipeline;->g(Lcom/twitter/library/network/livepipeline/LivePipeline;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 356
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/s;->a:Lcom/twitter/library/network/livepipeline/LivePipeline;

    iget-object v1, p0, Lcom/twitter/library/network/livepipeline/s;->a:Lcom/twitter/library/network/livepipeline/LivePipeline;

    invoke-static {v1}, Lcom/twitter/library/network/livepipeline/LivePipeline;->b(Lcom/twitter/library/network/livepipeline/LivePipeline;)Lrx/subjects/e;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/library/network/livepipeline/s;->a:Lcom/twitter/library/network/livepipeline/LivePipeline;

    invoke-static {v2}, Lcom/twitter/library/network/livepipeline/LivePipeline;->g(Lcom/twitter/library/network/livepipeline/LivePipeline;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lrx/subjects/e;->a(JLjava/util/concurrent/TimeUnit;)Lrx/o;

    move-result-object v1

    new-instance v2, Lcom/twitter/library/network/livepipeline/t;

    invoke-direct {v2, p0}, Lcom/twitter/library/network/livepipeline/t;-><init>(Lcom/twitter/library/network/livepipeline/s;)V

    .line 357
    invoke-virtual {v1, v2}, Lrx/o;->c(Ldjf;)Lrx/ap;

    move-result-object v1

    .line 356
    invoke-static {v0, v1}, Lcom/twitter/library/network/livepipeline/LivePipeline;->a(Lcom/twitter/library/network/livepipeline/LivePipeline;Lrx/ap;)Lrx/ap;

    .line 369
    :cond_1
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/s;->a:Lcom/twitter/library/network/livepipeline/LivePipeline;

    invoke-static {v0}, Lcom/twitter/library/network/livepipeline/LivePipeline;->h(Lcom/twitter/library/network/livepipeline/LivePipeline;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 370
    iget-object v2, p0, Lcom/twitter/library/network/livepipeline/s;->a:Lcom/twitter/library/network/livepipeline/LivePipeline;

    invoke-static {v2, v0}, Lcom/twitter/library/network/livepipeline/LivePipeline;->c(Lcom/twitter/library/network/livepipeline/LivePipeline;Ljava/lang/String;)V

    goto :goto_0

    .line 373
    :cond_2
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/s;->a:Lcom/twitter/library/network/livepipeline/LivePipeline;

    invoke-static {v0}, Lcom/twitter/library/network/livepipeline/LivePipeline;->h(Lcom/twitter/library/network/livepipeline/LivePipeline;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 375
    const-string/jumbo v0, "LivePipeline"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Processing config control frame: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string/jumbo v0, "LivePipeline"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Resubscribe interval: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/library/network/livepipeline/s;->a:Lcom/twitter/library/network/livepipeline/LivePipeline;

    invoke-static {v2}, Lcom/twitter/library/network/livepipeline/LivePipeline;->i(Lcom/twitter/library/network/livepipeline/LivePipeline;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/s;->a:Lcom/twitter/library/network/livepipeline/LivePipeline;

    iget-object v1, p0, Lcom/twitter/library/network/livepipeline/s;->a:Lcom/twitter/library/network/livepipeline/LivePipeline;

    invoke-static {v1}, Lcom/twitter/library/network/livepipeline/LivePipeline;->i(Lcom/twitter/library/network/livepipeline/LivePipeline;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/twitter/library/network/livepipeline/LivePipeline;->a(Lcom/twitter/library/network/livepipeline/LivePipeline;J)V

    .line 378
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 337
    check-cast p1, Lcom/twitter/model/livepipeline/a;

    invoke-virtual {p0, p1}, Lcom/twitter/library/network/livepipeline/s;->a(Lcom/twitter/model/livepipeline/a;)V

    return-void
.end method
