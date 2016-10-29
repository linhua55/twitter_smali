.class Lcom/twitter/library/api/moments/maker/p;
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
        "Ljava/lang/Long;",
        "Lrx/w",
        "<",
        "Lcom/twitter/util/collection/ab",
        "<",
        "Lcom/twitter/model/moments/maker/ar;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/twitter/library/api/moments/maker/o;


# direct methods
.method constructor <init>(Lcom/twitter/library/api/moments/maker/o;J)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/twitter/library/api/moments/maker/p;->b:Lcom/twitter/library/api/moments/maker/o;

    iput-wide p2, p0, Lcom/twitter/library/api/moments/maker/p;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 88
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/twitter/library/api/moments/maker/p;->a(Ljava/lang/Long;)Lrx/w;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Long;)Lrx/w;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Lrx/w",
            "<",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Lcom/twitter/model/moments/maker/ar;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 92
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/twitter/library/api/moments/maker/p;->b:Lcom/twitter/library/api/moments/maker/o;

    invoke-static {v0}, Lcom/twitter/library/api/moments/maker/o;->a(Lcom/twitter/library/api/moments/maker/o;)Lcom/twitter/library/api/moments/maker/e;

    move-result-object v0

    new-instance v1, Lcom/twitter/library/api/moments/maker/t;

    iget-wide v2, p0, Lcom/twitter/library/api/moments/maker/p;->a:J

    .line 94
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/twitter/library/api/moments/maker/t;-><init>(JJ)V

    .line 93
    invoke-virtual {v0, v1}, Lcom/twitter/library/api/moments/maker/e;->a_(Ljava/lang/Object;)Lrx/o;

    move-result-object v0

    invoke-static {v0}, Ldcn;->a(Lrx/o;)Lrx/w;

    move-result-object v0

    .line 96
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/twitter/util/collection/ab;->a()Lcom/twitter/util/collection/ab;

    move-result-object v0

    invoke-static {v0}, Lrx/w;->a(Ljava/lang/Object;)Lrx/w;

    move-result-object v0

    goto :goto_0
.end method
