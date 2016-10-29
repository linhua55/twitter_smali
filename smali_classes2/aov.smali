.class public Laov;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final a:Lapg;

.field private final b:Lcom/twitter/library/util/FriendshipCache;

.field private final c:Lapn;

.field private final d:Lapi;

.field private final e:Lcom/twitter/database/lru/am;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/database/lru/am",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/model/people/ag;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lapb;


# direct methods
.method public constructor <init>(Lcom/twitter/library/util/FriendshipCache;Lapb;Lapn;Lapi;Lapg;Lcom/twitter/database/lru/am;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/library/util/FriendshipCache;",
            "Lapb;",
            "Lapn;",
            "Lapi;",
            "Lapg;",
            "Lcom/twitter/database/lru/am",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/model/people/ag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Laov;->b:Lcom/twitter/library/util/FriendshipCache;

    .line 55
    iput-object p2, p0, Laov;->f:Lapb;

    .line 57
    iput-object p3, p0, Laov;->c:Lapn;

    .line 58
    iput-object p4, p0, Laov;->d:Lapi;

    .line 59
    iput-object p5, p0, Laov;->a:Lapg;

    .line 60
    iput-object p6, p0, Laov;->e:Lcom/twitter/database/lru/am;

    .line 61
    return-void
.end method

.method static synthetic a(Laov;)Lcom/twitter/library/util/FriendshipCache;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Laov;->b:Lcom/twitter/library/util/FriendshipCache;

    return-object v0
.end method

.method private a()Ldjj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldjj",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/people/g;",
            ">;",
            "Lrx/o",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 125
    new-instance v0, Laoz;

    invoke-direct {v0, p0}, Laoz;-><init>(Laov;)V

    return-object v0
.end method

.method static synthetic b(Laov;)Lapn;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Laov;->c:Lapn;

    return-object v0
.end method

.method private b()Ldjj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldjj",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/people/g;",
            ">;",
            "Lrx/o",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/core/Tweet;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 135
    new-instance v0, Lapa;

    invoke-direct {v0, p0}, Lapa;-><init>(Laov;)V

    return-object v0
.end method

.method private b(Ljava/util/Map;)Lrx/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/o",
            "<",
            "Lcom/twitter/model/people/ag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Laov;->f:Lapb;

    invoke-virtual {v0}, Lapb;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-interface {p1}, Ljava/util/Map;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 116
    iget-object v1, p0, Laov;->e:Lcom/twitter/database/lru/am;

    invoke-interface {v1, v0}, Lcom/twitter/database/lru/am;->a(Ljava/lang/Object;)Lrx/w;

    move-result-object v0

    invoke-virtual {v0}, Lrx/w;->b()Lrx/o;

    move-result-object v0

    .line 120
    :goto_0
    return-object v0

    .line 118
    :cond_0
    invoke-static {}, Lrx/o;->c()Lrx/o;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic c(Laov;)Lapi;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Laov;->d:Lapi;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/Map;)Lrx/o;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/o",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/people/g;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 71
    invoke-static {p1}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Laov;->f:Lapb;

    iget-object v0, v0, Lapb;->a:Ljava/util/Map;

    .line 81
    :goto_0
    invoke-direct {p0, v0}, Laov;->b(Ljava/util/Map;)Lrx/o;

    move-result-object v1

    iget-object v2, p0, Laov;->a:Lapg;

    invoke-virtual {v2, v0}, Lapg;->a_(Ljava/lang/Object;)Lrx/o;

    move-result-object v0

    invoke-static {v1, v0}, Lrx/o;->b(Lrx/o;Lrx/o;)Lrx/o;

    move-result-object v0

    .line 82
    invoke-static {}, Ldcn;->d()Ldjj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/o;->e(Ldjj;)Lrx/o;

    move-result-object v0

    new-instance v1, Laow;

    invoke-direct {v1, p0}, Laow;-><init>(Laov;)V

    .line 83
    invoke-virtual {v0, v1}, Lrx/o;->h(Ldjj;)Lrx/o;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lrx/o;->k()Ldkv;

    move-result-object v0

    .line 89
    invoke-direct {p0}, Laov;->a()Ldjj;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldkv;->j(Ldjj;)Lrx/o;

    move-result-object v1

    .line 90
    invoke-direct {p0}, Laov;->b()Ldjj;

    move-result-object v2

    invoke-virtual {v0, v2}, Ldkv;->j(Ldjj;)Lrx/o;

    move-result-object v2

    .line 92
    new-instance v3, Laox;

    invoke-direct {v3, p0}, Laox;-><init>(Laov;)V

    invoke-static {v0, v1, v3}, Lrx/o;->a(Lrx/o;Lrx/o;Ldjk;)Lrx/o;

    move-result-object v1

    .line 100
    new-instance v3, Laoy;

    invoke-direct {v3, p0}, Laoy;-><init>(Laov;)V

    invoke-static {v1, v2, v3}, Lrx/o;->a(Lrx/o;Lrx/o;Ldjk;)Lrx/o;

    move-result-object v1

    .line 107
    invoke-virtual {v0}, Ldkv;->a()Lrx/ap;

    .line 108
    return-object v1

    .line 74
    :cond_0
    invoke-static {}, Lcom/twitter/util/collection/v;->e()Lcom/twitter/util/collection/v;

    move-result-object v0

    iget-object v1, p0, Laov;->f:Lapb;

    iget-object v1, v1, Lapb;->a:Ljava/util/Map;

    .line 75
    invoke-virtual {v0, v1}, Lcom/twitter/util/collection/v;->b(Ljava/util/Map;)Lcom/twitter/util/collection/v;

    move-result-object v0

    .line 76
    invoke-virtual {v0, p1}, Lcom/twitter/util/collection/v;->b(Ljava/util/Map;)Lcom/twitter/util/collection/v;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lcom/twitter/util/collection/v;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Laov;->a:Lapg;

    invoke-virtual {v0}, Lapg;->close()V

    .line 150
    iget-object v0, p0, Laov;->c:Lapn;

    invoke-virtual {v0}, Lapn;->close()V

    .line 151
    iget-object v0, p0, Laov;->d:Lapi;

    invoke-virtual {v0}, Lapi;->close()V

    .line 152
    return-void
.end method
