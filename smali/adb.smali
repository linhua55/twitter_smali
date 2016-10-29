.class public Ladb;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lazt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lazt",
        "<",
        "Ljava/lang/Long;",
        "Lcom/twitter/util/collection/ab",
        "<",
        "Lcom/twitter/model/core/TwitterUser;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/twitter/library/provider/dm;

.field private final b:Lrx/t;

.field private final c:Lrx/t;


# direct methods
.method public constructor <init>(Lcom/twitter/library/provider/dm;)V
    .locals 2

    .prologue
    .line 27
    invoke-static {}, Ldls;->d()Lrx/t;

    move-result-object v0

    invoke-static {}, Ldiz;->a()Lrx/t;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Ladb;-><init>(Lcom/twitter/library/provider/dm;Lrx/t;Lrx/t;)V

    .line 28
    return-void
.end method

.method constructor <init>(Lcom/twitter/library/provider/dm;Lrx/t;Lrx/t;)V
    .locals 0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Ladb;->a:Lcom/twitter/library/provider/dm;

    .line 34
    iput-object p2, p0, Ladb;->b:Lrx/t;

    .line 35
    iput-object p3, p0, Ladb;->c:Lrx/t;

    .line 36
    return-void
.end method

.method static synthetic a(Ladb;)Lcom/twitter/library/provider/dm;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Ladb;->a:Lcom/twitter/library/provider/dm;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Long;)Lrx/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Lrx/o",
            "<",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 41
    invoke-static {p1}, Lrx/o;->b(Ljava/lang/Object;)Lrx/o;

    move-result-object v0

    iget-object v1, p0, Ladb;->b:Lrx/t;

    .line 42
    invoke-virtual {v0, v1}, Lrx/o;->b(Lrx/t;)Lrx/o;

    move-result-object v0

    new-instance v1, Ladc;

    invoke-direct {v1, p0}, Ladc;-><init>(Ladb;)V

    .line 43
    invoke-virtual {v0, v1}, Lrx/o;->h(Ldjj;)Lrx/o;

    move-result-object v0

    iget-object v1, p0, Ladb;->c:Lrx/t;

    .line 49
    invoke-virtual {v0, v1}, Lrx/o;->a(Lrx/t;)Lrx/o;

    move-result-object v0

    .line 41
    return-object v0
.end method

.method public synthetic a_(Ljava/lang/Object;)Lrx/o;
    .locals 1

    .prologue
    .line 20
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Ladb;->a(Ljava/lang/Long;)Lrx/o;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    return-void
.end method
