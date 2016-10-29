.class public Lapi;
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
.field private final a:Lazt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lazt",
            "<",
            "Lavh;",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/twitter/library/client/Session;


# direct methods
.method public constructor <init>(Lazt;Lcom/twitter/library/client/Session;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lazt",
            "<",
            "Lavh;",
            "Landroid/database/Cursor;",
            ">;",
            "Lcom/twitter/library/client/Session;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lapi;->a:Lazt;

    .line 45
    iput-object p2, p0, Lapi;->b:Lcom/twitter/library/client/Session;

    .line 46
    return-void
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
    .line 51
    iget-object v0, p0, Lapi;->a:Lazt;

    invoke-virtual {p0, p1}, Lapi;->b(Ljava/lang/Iterable;)Lavh;

    move-result-object v1

    invoke-interface {v0, v1}, Lazt;->a_(Ljava/lang/Object;)Lrx/o;

    move-result-object v0

    new-instance v1, Lapl;

    invoke-direct {v1, p0}, Lapl;-><init>(Lapi;)V

    .line 52
    invoke-virtual {v0, v1}, Lrx/o;->h(Ldjj;)Lrx/o;

    move-result-object v0

    new-instance v1, Lapj;

    invoke-direct {v1, p0}, Lapj;-><init>(Lapi;)V

    .line 65
    invoke-virtual {v0, v1}, Lrx/o;->h(Ldjj;)Lrx/o;

    move-result-object v0

    .line 51
    return-object v0
.end method

.method public synthetic a_(Ljava/lang/Object;)Lrx/o;
    .locals 1

    .prologue
    .line 35
    check-cast p1, Ljava/lang/Iterable;

    invoke-virtual {p0, p1}, Lapi;->a(Ljava/lang/Iterable;)Lrx/o;

    move-result-object v0

    return-object v0
.end method

.method b(Ljava/lang/Iterable;)Lavh;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lavh;"
        }
    .end annotation

    .prologue
    .line 81
    new-instance v0, Lavj;

    invoke-direct {v0}, Lavj;-><init>()V

    sget-object v1, Lcom/twitter/library/provider/dh;->a:Landroid/net/Uri;

    .line 83
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "ownerId"

    iget-object v3, p0, Lapi;->b:Lcom/twitter/library/client/Session;

    .line 86
    invoke-virtual {v3}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 84
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 87
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Lavj;->a(Landroid/net/Uri;)Lavj;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "status_groups_g_status_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 88
    invoke-static {p1}, Lcom/twitter/library/provider/dm;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lavj;->a(Ljava/lang/String;)Lavj;

    move-result-object v0

    sget-object v1, Lcho;->a:[Ljava/lang/String;

    .line 89
    invoke-virtual {v0, v1}, Lavj;->a([Ljava/lang/String;)Lavj;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lavj;->a()Lavh;

    move-result-object v0

    .line 81
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
    .line 95
    iget-object v0, p0, Lapi;->a:Lazt;

    invoke-interface {v0}, Lazt;->close()V

    .line 96
    return-void
.end method
