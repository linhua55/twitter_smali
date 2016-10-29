.class public Laes;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Laer;


# instance fields
.field private final a:Lbae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
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
.end field

.field private final b:Lcom/twitter/android/moments/data/aa;

.field private final c:Laeo;


# direct methods
.method public constructor <init>(Lbae;Lcom/twitter/android/moments/data/aa;Laeo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            ">;>;",
            "Lcom/twitter/android/moments/data/aa;",
            "Laeo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Laes;->a:Lbae;

    .line 39
    iput-object p2, p0, Laes;->b:Lcom/twitter/android/moments/data/aa;

    .line 40
    iput-object p3, p0, Laes;->c:Laeo;

    .line 41
    return-void
.end method

.method static synthetic a(Laes;Lcqx;Lcom/twitter/model/core/Tweet;)Lcom/twitter/model/moments/viewmodels/m;
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Laes;->a(Lcqx;Lcom/twitter/model/core/Tweet;)Lcom/twitter/model/moments/viewmodels/m;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcqx;Lcom/twitter/model/core/Tweet;)Lcom/twitter/model/moments/viewmodels/m;
    .locals 8

    .prologue
    .line 70
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v6

    .line 71
    invoke-virtual {p1}, Lcqx;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcqt;

    .line 74
    new-instance v0, Lcom/twitter/model/moments/af;

    invoke-direct {v0}, Lcom/twitter/model/moments/af;-><init>()V

    const-wide/16 v2, 0xb

    .line 75
    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/moments/af;->a(J)Lcom/twitter/model/moments/af;

    move-result-object v0

    const-string/jumbo v1, "ANDROID-19519 fix it now!!"

    .line 76
    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/af;->a(Ljava/lang/String;)Lcom/twitter/model/moments/af;

    move-result-object v0

    const-string/jumbo v1, "Please fix me."

    .line 77
    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/af;->f(Ljava/lang/String;)Lcom/twitter/model/moments/af;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lcom/twitter/model/moments/af;->q()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/moments/ad;

    .line 79
    invoke-static {v5}, Lcom/twitter/model/moments/am;->a(Lcqt;)Lcom/twitter/model/moments/am;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/model/moments/am;->q()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twitter/model/moments/ak;

    .line 80
    iget-object v0, p0, Laes;->b:Lcom/twitter/android/moments/data/aa;

    sget-object v4, Lcom/twitter/model/moments/MomentPageDisplayMode;->b:Lcom/twitter/model/moments/MomentPageDisplayMode;

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/moments/data/aa;->a(Lcom/twitter/model/moments/ad;Lcom/twitter/model/core/Tweet;Lcom/twitter/model/moments/ak;Lcom/twitter/model/moments/MomentPageDisplayMode;Lcqt;)Lcom/twitter/model/moments/viewmodels/MomentPage;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    goto :goto_0

    .line 83
    :cond_0
    new-instance v1, Lcom/twitter/model/moments/viewmodels/m;

    invoke-virtual {v6}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {v1, v0}, Lcom/twitter/model/moments/viewmodels/m;-><init>(Ljava/util/List;)V

    return-object v1
.end method


# virtual methods
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
            "Lcom/twitter/model/moments/viewmodels/m;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Laes;->c:Laeo;

    .line 47
    invoke-virtual {v0, p1}, Laeo;->a(Ljava/lang/Iterable;)Lrx/o;

    move-result-object v0

    invoke-static {}, Lcom/twitter/util/collection/v;->f()Ljava/util/Map;

    move-result-object v1

    .line 46
    invoke-static {v0, v1}, Ldcn;->a(Lrx/o;Ljava/lang/Object;)Lrx/w;

    move-result-object v0

    .line 48
    iget-object v1, p0, Laes;->a:Lbae;

    invoke-interface {v1, p1}, Lbae;->a(Ljava/lang/Object;)Lrx/w;

    move-result-object v1

    .line 49
    new-instance v2, Laet;

    invoke-direct {v2, p0}, Laet;-><init>(Laes;)V

    invoke-static {v0, v1, v2}, Lrx/w;->a(Lrx/w;Lrx/w;Ldjk;)Lrx/w;

    move-result-object v0

    return-object v0
.end method
