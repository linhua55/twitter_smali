.class public Lacu;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lazt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lazt",
        "<TA;",
        "Lcom/twitter/util/collection/ab",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lazt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lazt",
            "<",
            "Ljava/lang/Iterable",
            "<TA;>;",
            "Ljava/util/Map",
            "<TA;TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lazt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lazt",
            "<",
            "Ljava/lang/Iterable",
            "<TA;>;",
            "Ljava/util/Map",
            "<TA;TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lacu;->a:Lazt;

    .line 24
    return-void
.end method


# virtual methods
.method public a_(Ljava/lang/Object;)Lrx/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lrx/o",
            "<",
            "Lcom/twitter/util/collection/ab",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lacu;->a:Lazt;

    invoke-static {p1}, Lcom/twitter/util/collection/r;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lazt;->a_(Ljava/lang/Object;)Lrx/o;

    move-result-object v0

    new-instance v1, Lacv;

    invoke-direct {v1, p0, p1}, Lacv;-><init>(Lacu;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lrx/o;->h(Ldjj;)Lrx/o;

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
    .line 40
    iget-object v0, p0, Lacu;->a:Lazt;

    invoke-interface {v0}, Lazt;->close()V

    .line 41
    return-void
.end method
