.class public Lads;
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
.field private final a:Ladz;

.field private final b:Laei;


# direct methods
.method public constructor <init>(Ladz;Laei;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lads;->a:Ladz;

    .line 35
    iput-object p2, p0, Lads;->b:Laei;

    .line 36
    return-void
.end method

.method static synthetic a(Lads;)Ladz;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lads;->a:Ladz;

    return-object v0
.end method

.method static synthetic a(Lads;Ljava/util/Collection;)Lrx/w;
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lads;->c(Ljava/util/Collection;)Lrx/w;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/util/Collection;)Ldjj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ldjj",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcqx;",
            ">;",
            "Lrx/w",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcqx;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Ladt;

    invoke-direct {v0, p0, p1}, Ladt;-><init>(Lads;Ljava/util/Collection;)V

    return-object v0
.end method

.method private c(Ljava/util/Collection;)Lrx/w;
    .locals 2
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
    .line 64
    iget-object v0, p0, Lads;->b:Laei;

    invoke-virtual {v0, p1}, Laei;->a(Ljava/util/Collection;)Lrx/w;

    move-result-object v0

    new-instance v1, Ladu;

    invoke-direct {v1, p0}, Ladu;-><init>(Lads;)V

    .line 65
    invoke-virtual {v0, v1}, Lrx/w;->a(Ldjj;)Lrx/w;

    move-result-object v0

    .line 64
    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lrx/w;
    .locals 1

    .prologue
    .line 24
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lads;->a(Ljava/util/Collection;)Lrx/w;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/Collection;)Lrx/w;
    .locals 2
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
    .line 41
    iget-object v0, p0, Lads;->a:Ladz;

    invoke-virtual {v0, p1}, Ladz;->a(Ljava/util/Collection;)Lrx/w;

    move-result-object v0

    .line 42
    invoke-direct {p0, p1}, Lads;->b(Ljava/util/Collection;)Ldjj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/w;->a(Ldjj;)Lrx/w;

    move-result-object v0

    .line 41
    return-object v0
.end method
