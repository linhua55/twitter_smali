.class public Lacp;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ladj;
.implements Lazt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ladj;",
        "Lazt",
        "<",
        "Ljava/lang/Long;",
        "Lcom/twitter/util/collection/ar",
        "<",
        "Lcom/twitter/model/moments/viewmodels/d;",
        "Lcom/twitter/model/moments/d;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lacr;

.field private final b:Lazt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lazt",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/util/collection/ar",
            "<",
            "Lcom/twitter/model/moments/viewmodels/d;",
            "Lcom/twitter/model/moments/d;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lacr;Ladw;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lacp;->a:Lacr;

    .line 34
    iput-object p2, p0, Lacp;->b:Lazt;

    .line 35
    return-void
.end method

.method static synthetic a(Lacp;)Lazt;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lacp;->b:Lazt;

    return-object v0
.end method

.method private b(J)Ldjj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ldjj",
            "<",
            "Lcom/twitter/util/collection/ar",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/moments/d;",
            ">;",
            "Lrx/o",
            "<",
            "Lcom/twitter/util/collection/ar",
            "<",
            "Lcom/twitter/model/moments/viewmodels/d;",
            "Lcom/twitter/model/moments/d;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 53
    new-instance v0, Lacq;

    invoke-direct {v0, p0, p1, p2}, Lacq;-><init>(Lacp;J)V

    return-object v0
.end method


# virtual methods
.method public a(J)Lrx/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lrx/o",
            "<",
            "Lcom/twitter/util/collection/ar",
            "<",
            "Lcom/twitter/model/moments/viewmodels/d;",
            "Lcom/twitter/model/moments/d;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 47
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lacp;->a(Ljava/lang/Long;)Lrx/o;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Long;)Lrx/o;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Lrx/o",
            "<",
            "Lcom/twitter/util/collection/ar",
            "<",
            "Lcom/twitter/model/moments/viewmodels/d;",
            "Lcom/twitter/model/moments/d;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lacp;->a:Lacr;

    invoke-virtual {v0, p1}, Lacr;->a_(Ljava/lang/Object;)Lrx/o;

    move-result-object v0

    .line 41
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lacp;->b(J)Ldjj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/o;->f(Ldjj;)Lrx/o;

    move-result-object v0

    .line 40
    return-object v0
.end method

.method public synthetic a_(Ljava/lang/Object;)Lrx/o;
    .locals 1

    .prologue
    .line 24
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lacp;->a(Ljava/lang/Long;)Lrx/o;

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
    .line 71
    iget-object v0, p0, Lacp;->a:Lacr;

    invoke-virtual {v0}, Lacr;->close()V

    .line 72
    iget-object v0, p0, Lacp;->b:Lazt;

    invoke-interface {v0}, Lazt;->close()V

    .line 73
    return-void
.end method
