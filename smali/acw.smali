.class public Lacw;
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
        "Ljava/lang/Iterable",
        "<",
        "Ljava/lang/Long;",
        ">;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/Long;",
        "Lcom/twitter/model/core/Tweet;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lacy;

.field private final b:Lapi;


# direct methods
.method public constructor <init>(Lacy;Lapi;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lacw;->a:Lacy;

    .line 29
    iput-object p2, p0, Lacw;->b:Lapi;

    .line 30
    return-void
.end method

.method static synthetic a(Lacw;)Lapi;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lacw;->b:Lapi;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Iterable;)Lrx/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lrx/o",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/core/Tweet;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lacw;->a:Lacy;

    invoke-static {p1}, Lcom/twitter/util/collection/r;->a(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lacy;->a_(Ljava/lang/Object;)Lrx/o;

    move-result-object v0

    new-instance v1, Lacx;

    invoke-direct {v1, p0}, Lacx;-><init>(Lacw;)V

    .line 36
    invoke-virtual {v0, v1}, Lrx/o;->f(Ldjj;)Lrx/o;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lrx/o;->i()Lrx/o;

    move-result-object v0

    .line 35
    return-object v0
.end method

.method public synthetic a_(Ljava/lang/Object;)Lrx/o;
    .locals 1

    .prologue
    .line 22
    check-cast p1, Ljava/lang/Iterable;

    invoke-virtual {p0, p1}, Lacw;->a(Ljava/lang/Iterable;)Lrx/o;

    move-result-object v0

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
    .line 48
    iget-object v0, p0, Lacw;->a:Lacy;

    invoke-virtual {v0}, Lacy;->close()V

    .line 49
    iget-object v0, p0, Lacw;->b:Lapi;

    invoke-virtual {v0}, Lapi;->close()V

    .line 50
    return-void
.end method
