.class public Lcom/twitter/library/network/livepipeline/aa;
.super Lcom/twitter/library/network/livepipeline/al;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/library/network/livepipeline/al",
        "<",
        "Lcom/twitter/library/network/livepipeline/ae;",
        ">;"
    }
.end annotation


# instance fields
.field protected final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lrx/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/r",
            "<",
            "Lcom/twitter/model/livepipeline/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/r;Landroid/content/Context;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/r",
            "<",
            "Lcom/twitter/model/livepipeline/e;",
            ">;",
            "Landroid/content/Context;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 29
    const-class v0, Lcom/twitter/library/network/livepipeline/aa;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    .line 30
    invoke-static {p3, p4}, Lcom/twitter/library/network/livepipeline/al;->a(J)Lcom/twitter/internal/android/service/ac;

    move-result-object v2

    .line 29
    invoke-direct {p0, p2, v0, v1, v2}, Lcom/twitter/library/network/livepipeline/al;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/client/Session;Lcom/twitter/internal/android/service/ac;)V

    .line 31
    iput-object p1, p0, Lcom/twitter/library/network/livepipeline/aa;->c:Lrx/r;

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/twitter/library/network/livepipeline/aa;->b:Ljava/util/Set;

    .line 33
    sget-object v0, Lcom/twitter/internal/android/service/AsyncOperation$ExecutionClass;->b:Lcom/twitter/internal/android/service/AsyncOperation$ExecutionClass;

    invoke-virtual {p0, v0}, Lcom/twitter/library/network/livepipeline/aa;->a(Lcom/twitter/internal/android/service/AsyncOperation$ExecutionClass;)V

    .line 34
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/library/network/livepipeline/aa;->g(Z)V

    .line 36
    const/16 v0, 0x7530

    invoke-virtual {p0, v0}, Lcom/twitter/library/network/livepipeline/aa;->g(I)V

    .line 37
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/twitter/library/network/livepipeline/aa;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    return-void
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    const-string/jumbo v0, "lp::connection:"

    return-object v0
.end method

.method protected synthetic f()Lcom/twitter/library/service/c;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/twitter/library/network/livepipeline/aa;->v()Lcom/twitter/library/network/livepipeline/ae;

    move-result-object v0

    return-object v0
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
    .line 53
    invoke-static {}, Lcom/twitter/util/collection/v;->e()Lcom/twitter/util/collection/v;

    move-result-object v0

    const-string/jumbo v1, "Accept"

    const-string/jumbo v2, "text/event-stream"

    .line 54
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/twitter/util/collection/v;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 53
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
    .line 61
    invoke-static {}, Lcom/twitter/util/collection/v;->e()Lcom/twitter/util/collection/v;

    move-result-object v0

    const-string/jumbo v1, "topic"

    invoke-virtual {p0}, Lcom/twitter/library/network/livepipeline/aa;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/util/collection/v;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method protected s()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    const-string/jumbo v0, ","

    iget-object v1, p0, Lcom/twitter/library/network/livepipeline/aa;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected t()Lcom/twitter/internal/network/HttpOperation$RequestMethod;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/twitter/internal/network/HttpOperation$RequestMethod;->a:Lcom/twitter/internal/network/HttpOperation$RequestMethod;

    return-object v0
.end method

.method protected u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const-string/jumbo v0, "live_pipeline/events"

    return-object v0
.end method

.method protected v()Lcom/twitter/library/network/livepipeline/ae;
    .locals 2

    .prologue
    .line 84
    new-instance v0, Lcom/twitter/library/network/livepipeline/ab;

    iget-object v1, p0, Lcom/twitter/library/network/livepipeline/aa;->c:Lrx/r;

    invoke-direct {v0, p0, v1}, Lcom/twitter/library/network/livepipeline/ab;-><init>(Lcom/twitter/library/network/livepipeline/aa;Lrx/r;)V

    return-object v0
.end method
