.class public Ladp;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ladj;


# instance fields
.field private final a:Lazt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lazt",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

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

.field private final c:Lazt;
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
.method public constructor <init>(Lacj;Ladw;Lacp;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Ladp;->a:Lazt;

    .line 38
    iput-object p2, p0, Ladp;->b:Lazt;

    .line 39
    iput-object p3, p0, Ladp;->c:Lazt;

    .line 40
    return-void
.end method

.method static synthetic a(Ladp;Z)Lazt;
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1}, Ladp;->a(Z)Lazt;

    move-result-object v0

    return-object v0
.end method

.method private a(Z)Lazt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
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

    .prologue
    .line 56
    if-eqz p1, :cond_0

    iget-object v0, p0, Ladp;->b:Lazt;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ladp;->c:Lazt;

    goto :goto_0
.end method


# virtual methods
.method public a(J)Lrx/o;
    .locals 3
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
    .line 45
    iget-object v0, p0, Ladp;->a:Lazt;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lazt;->a_(Ljava/lang/Object;)Lrx/o;

    move-result-object v0

    new-instance v1, Ladq;

    invoke-direct {v1, p0, p1, p2}, Ladq;-><init>(Ladp;J)V

    invoke-virtual {v0, v1}, Lrx/o;->f(Ldjj;)Lrx/o;

    move-result-object v0

    const/4 v1, 0x1

    .line 52
    invoke-virtual {v0, v1}, Lrx/o;->b(I)Lrx/o;

    move-result-object v0

    .line 45
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
    .line 61
    iget-object v0, p0, Ladp;->a:Lazt;

    invoke-interface {v0}, Lazt;->close()V

    .line 62
    iget-object v0, p0, Ladp;->b:Lazt;

    invoke-interface {v0}, Lazt;->close()V

    .line 63
    iget-object v0, p0, Ladp;->c:Lazt;

    invoke-interface {v0}, Lazt;->close()V

    .line 64
    return-void
.end method
