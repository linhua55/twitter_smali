.class public Lbuo;
.super Lcom/twitter/library/service/b;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/library/service/b",
        "<",
        "Lcom/twitter/library/api/as;",
        ">;"
    }
.end annotation


# instance fields
.field private a:[J

.field private final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;I)V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lbuo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/twitter/library/service/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/client/Session;)V

    .line 35
    iput p3, p0, Lbuo;->b:I

    .line 36
    return-void
.end method


# virtual methods
.method protected a()Lcom/twitter/library/service/d;
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 41
    invoke-virtual {p0}, Lbuo;->S()Lcom/twitter/library/provider/dm;

    move-result-object v1

    .line 42
    const/16 v3, 0x12

    const-wide/16 v4, 0x0

    iget v6, p0, Lbuo;->b:I

    invoke-virtual/range {v1 .. v6}, Lcom/twitter/library/provider/dm;->a(IIJI)Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-virtual {p0}, Lbuo;->K()Lcom/twitter/library/service/e;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "friendships"

    aput-object v5, v3, v4

    const-string/jumbo v4, "incoming"

    aput-object v4, v3, v2

    .line 44
    invoke-virtual {v1, v3}, Lcom/twitter/library/service/e;->a([Ljava/lang/Object;)Lcom/twitter/library/service/e;

    move-result-object v1

    .line 45
    if-eqz v0, :cond_0

    .line 46
    const-string/jumbo v2, "cursor"

    invoke-virtual {v1, v2, v0}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    .line 49
    :cond_0
    invoke-virtual {v1}, Lcom/twitter/library/service/e;->a()Lcom/twitter/library/service/d;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/api/as;)V
    .locals 8

    .prologue
    const/16 v7, 0x12

    .line 62
    invoke-virtual {p1}, Lcom/twitter/internal/network/HttpOperation;->k()Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    invoke-virtual {p0}, Lbuo;->S()Lcom/twitter/library/provider/dm;

    move-result-object v1

    .line 67
    invoke-virtual {p0}, Lbuo;->T()Lcom/twitter/library/provider/b;

    move-result-object v0

    .line 69
    invoke-virtual {p0}, Lbuo;->N()Lcom/twitter/library/service/ab;

    move-result-object v2

    iget-wide v2, v2, Lcom/twitter/library/service/ab;->c:J

    .line 68
    invoke-virtual {v1, v7, v2, v3, v0}, Lcom/twitter/library/provider/dm;->a(IJLcom/twitter/library/provider/b;)V

    .line 70
    invoke-virtual {v0}, Lcom/twitter/library/provider/b;->a()V

    .line 72
    invoke-virtual {p3}, Lcom/twitter/library/api/as;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/api/aq;

    .line 73
    invoke-virtual {v0}, Lcom/twitter/library/api/aq;->b()Ljava/util/List;

    move-result-object v2

    .line 75
    invoke-static {v2}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 76
    new-instance v3, Lbtx;

    iget-object v4, p0, Lbuo;->p:Landroid/content/Context;

    .line 77
    invoke-virtual {p0}, Lbuo;->N()Lcom/twitter/library/service/ab;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lbtx;-><init>(Landroid/content/Context;Lcom/twitter/library/service/ab;)V

    .line 78
    invoke-static {v2}, Lcom/twitter/util/collection/CollectionUtils;->e(Ljava/util/Collection;)[J

    move-result-object v4

    .line 79
    iget-object v5, v3, Lbtx;->a:Lbuu;

    invoke-virtual {v5, v4}, Lbuu;->a([J)Lbuu;

    move-result-object v5

    const/4 v6, 0x1

    .line 80
    invoke-virtual {v5, v6}, Lbuu;->a(Z)Lbuu;

    move-result-object v5

    .line 81
    invoke-virtual {v5, v7}, Lbuu;->a(I)Lbuu;

    move-result-object v5

    const-wide/16 v6, -0x1

    .line 82
    invoke-virtual {v5, v6, v7}, Lbuu;->a(J)Lbuu;

    move-result-object v5

    .line 83
    invoke-virtual {v0}, Lcom/twitter/library/api/aq;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lbuu;->a(Ljava/lang/String;)Lbuu;

    .line 85
    invoke-virtual {v3}, Lbtx;->P()Lcom/twitter/library/service/aa;

    .line 88
    const/16 v0, 0x20

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/twitter/library/provider/dm;->a(Ljava/util/Collection;ILcom/twitter/library/provider/b;)V

    .line 89
    iput-object v4, p0, Lbuo;->a:[J

    goto :goto_0
.end method

.method protected bridge synthetic a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/service/c;)V
    .locals 0

    .prologue
    .line 28
    check-cast p3, Lcom/twitter/library/api/as;

    invoke-virtual {p0, p1, p2, p3}, Lbuo;->a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/api/as;)V

    return-void
.end method

.method protected b()Lcom/twitter/library/api/as;
    .locals 1

    .prologue
    .line 54
    const/16 v0, 0xf

    .line 55
    invoke-static {v0}, Lcom/twitter/library/api/as;->a(I)Lcom/twitter/library/api/as;

    move-result-object v0

    .line 54
    return-object v0
.end method

.method protected synthetic f()Lcom/twitter/library/service/c;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lbuo;->b()Lcom/twitter/library/api/as;

    move-result-object v0

    return-object v0
.end method
