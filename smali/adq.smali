.class Ladq;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldjj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldjj",
        "<",
        "Ljava/lang/Boolean;",
        "Lrx/o",
        "<",
        "Lcom/twitter/util/collection/ar",
        "<",
        "Lcom/twitter/model/moments/viewmodels/d;",
        "Lcom/twitter/model/moments/d;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ladp;


# direct methods
.method constructor <init>(Ladp;J)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Ladq;->b:Ladp;

    iput-wide p2, p0, Ladq;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ladq;->a(Ljava/lang/Boolean;)Lrx/o;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Boolean;)Lrx/o;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
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
    .line 49
    iget-object v0, p0, Ladq;->b:Ladp;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Ladp;->a(Ladp;Z)Lazt;

    move-result-object v0

    iget-wide v2, p0, Ladq;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lazt;->a_(Ljava/lang/Object;)Lrx/o;

    move-result-object v0

    return-object v0
.end method
