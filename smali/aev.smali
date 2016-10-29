.class public Laev;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final a:Lazt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lazt",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Lazt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lazt",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lazt;Lazt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lazt",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;>;",
            "Lazt",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Laev;->a:Lazt;

    .line 23
    iput-object p2, p0, Laev;->b:Lazt;

    .line 24
    return-void
.end method


# virtual methods
.method public a(J)Lrx/o;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lrx/o",
            "<",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Laev;->b:Lazt;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lazt;->a_(Ljava/lang/Object;)Lrx/o;

    move-result-object v0

    iget-object v1, p0, Laev;->a:Lazt;

    .line 33
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Lazt;->a_(Ljava/lang/Object;)Lrx/o;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/o;->e(Lrx/o;)Lrx/o;

    move-result-object v0

    new-instance v1, Laew;

    invoke-direct {v1, p0}, Laew;-><init>(Laev;)V

    .line 34
    invoke-virtual {v0, v1}, Lrx/o;->k(Ldjj;)Lrx/o;

    move-result-object v0

    .line 32
    return-object v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Laev;->a:Lazt;

    invoke-interface {v0}, Lazt;->close()V

    .line 45
    iget-object v0, p0, Laev;->b:Lazt;

    invoke-interface {v0}, Lazt;->close()V

    .line 46
    return-void
.end method
