.class public Laei;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbae;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbae",
        "<",
        "Ljava/util/Collection",
        "<",
        "Ljava/lang/Long;",
        ">;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/Long;",
        "Lcqx;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Laeo;


# direct methods
.method public constructor <init>(Laeo;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Laei;->a:Laeo;

    .line 37
    return-void
.end method

.method static synthetic a(Laei;)Laeo;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Laei;->a:Laeo;

    return-object v0
.end method

.method static synthetic a(Lcom/twitter/model/core/Tweet;)Lcqt;
    .locals 1

    .prologue
    .line 29
    invoke-static {p0}, Laei;->b(Lcom/twitter/model/core/Tweet;)Lcqt;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lcom/twitter/model/core/Tweet;)Lcqt;
    .locals 6

    .prologue
    .line 41
    new-instance v0, Lcqv;

    invoke-direct {v0}, Lcqv;-><init>()V

    .line 42
    invoke-static {p0}, Laei;->c(Lcom/twitter/model/core/Tweet;)Lcom/twitter/model/moments/MomentPageType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcqv;->a(Lcom/twitter/model/moments/MomentPageType;)Lcqv;

    move-result-object v0

    iget-wide v2, p0, Lcom/twitter/model/core/Tweet;->C:J

    .line 43
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcqv;->a(Ljava/lang/String;)Lcqv;

    move-result-object v0

    .line 44
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    new-instance v1, Lcqn;

    .line 46
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->Q()Lcom/twitter/model/core/MediaEntity;

    move-result-object v2

    iget-wide v2, v2, Lcom/twitter/model/core/MediaEntity;->c:J

    sget-object v4, Lcom/twitter/util/math/Size;->b:Lcom/twitter/util/math/Size;

    const-string/jumbo v5, ""

    invoke-direct {v1, v2, v3, v4, v5}, Lcqn;-><init>(JLcom/twitter/util/math/Size;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0, v1}, Lcqv;->a(Lcqn;)Lcqv;

    .line 48
    :cond_0
    invoke-virtual {v0}, Lcqv;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcqt;

    return-object v0
.end method

.method private static c(Lcom/twitter/model/core/Tweet;)Lcom/twitter/model/moments/MomentPageType;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    sget-object v0, Lcom/twitter/model/moments/MomentPageType;->f:Lcom/twitter/model/moments/MomentPageType;

    .line 65
    :goto_0
    return-object v0

    .line 56
    :cond_0
    invoke-static {p0}, Lcom/twitter/library/av/playback/bm;->c(Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    sget-object v0, Lcom/twitter/model/moments/MomentPageType;->g:Lcom/twitter/model/moments/MomentPageType;

    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->aj()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    sget-object v0, Lcom/twitter/model/moments/MomentPageType;->e:Lcom/twitter/model/moments/MomentPageType;

    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->N()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 61
    sget-object v0, Lcom/twitter/model/moments/MomentPageType;->c:Lcom/twitter/model/moments/MomentPageType;

    goto :goto_0

    .line 62
    :cond_3
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 63
    sget-object v0, Lcom/twitter/model/moments/MomentPageType;->j:Lcom/twitter/model/moments/MomentPageType;

    goto :goto_0

    .line 65
    :cond_4
    sget-object v0, Lcom/twitter/model/moments/MomentPageType;->a:Lcom/twitter/model/moments/MomentPageType;

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lrx/w;
    .locals 1

    .prologue
    .line 29
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Laei;->a(Ljava/util/Collection;)Lrx/w;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/Collection;)Lrx/w;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lrx/w",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcqx;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 73
    invoke-static {p1}, Lrx/o;->a(Ljava/lang/Iterable;)Lrx/o;

    move-result-object v0

    new-instance v1, Laem;

    invoke-direct {v1, p0}, Laem;-><init>(Laei;)V

    .line 74
    invoke-virtual {v0, v1}, Lrx/o;->f(Ldjj;)Lrx/o;

    move-result-object v0

    new-instance v1, Lael;

    invoke-direct {v1, p0}, Lael;-><init>(Laei;)V

    .line 79
    invoke-virtual {v0, v1}, Lrx/o;->d(Ldjj;)Lrx/o;

    move-result-object v0

    new-instance v1, Laek;

    invoke-direct {v1, p0}, Laek;-><init>(Laei;)V

    .line 84
    invoke-virtual {v0, v1}, Lrx/o;->h(Ldjj;)Lrx/o;

    move-result-object v0

    .line 89
    invoke-static {}, Lcom/twitter/util/collection/MutableMap;->a()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Laej;

    invoke-direct {v2, p0}, Laej;-><init>(Laei;)V

    invoke-virtual {v0, v1, v2}, Lrx/o;->a(Ljava/lang/Object;Ldjk;)Lrx/o;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Lrx/o;->b()Lrx/w;

    move-result-object v0

    .line 73
    return-object v0
.end method
