.class public Lcez;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Lcfd;

.field private final b:Lcfb;

.field private final c:Lcep;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcep",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lrx/t;

.field private final e:Lrx/t;


# direct methods
.method constructor <init>(Lcfd;Lcfb;Lcep;Lrx/t;Lrx/t;)V
    .locals 0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcfd;",
            "Lcfb;",
            "Lcep",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Lrx/t;",
            "Lrx/t;",
            ")V"
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcez;->a:Lcfd;

    .line 73
    iput-object p2, p0, Lcez;->b:Lcfb;

    .line 74
    iput-object p3, p0, Lcez;->c:Lcep;

    .line 75
    iput-object p4, p0, Lcez;->d:Lrx/t;

    .line 76
    iput-object p5, p0, Lcez;->e:Lrx/t;

    .line 77
    return-void
.end method

.method public static a(Lcom/twitter/library/provider/dm;)Lcez;
    .locals 6

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/twitter/library/provider/dm;->d()Lcom/twitter/database/schema/TwitterSchema;

    move-result-object v2

    .line 54
    new-instance v3, Lceo;

    sget-object v1, Lcom/twitter/util/serialization/i;->f:Lcom/twitter/util/serialization/ah;

    const-class v0, Lbfy;

    .line 56
    invoke-interface {v2, v0}, Lcom/twitter/database/model/l;->a(Ljava/lang/Class;)Lcom/twitter/database/model/p;

    move-result-object v0

    check-cast v0, Lbfy;

    invoke-interface {v0}, Lbfy;->f()Lcom/twitter/database/model/q;

    move-result-object v0

    const-class v4, Lbgb;

    .line 57
    invoke-interface {v2, v4}, Lcom/twitter/database/model/l;->c(Ljava/lang/Class;)Lcom/twitter/database/model/r;

    move-result-object v4

    invoke-direct {v3, v1, v0, v4}, Lceo;-><init>(Lcom/twitter/util/serialization/ah;Lcom/twitter/database/model/q;Lcom/twitter/database/model/r;)V

    .line 58
    new-instance v0, Lcez;

    .line 59
    invoke-static {v2}, Lcfd;->a(Lcom/twitter/database/model/l;)Lcfd;

    move-result-object v1

    .line 60
    invoke-static {v2}, Lcfb;->a(Lcom/twitter/database/model/l;)Lcfb;

    move-result-object v2

    .line 62
    invoke-static {}, Ldls;->c()Lrx/t;

    move-result-object v4

    .line 63
    invoke-static {}, Ldiz;->a()Lrx/t;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcez;-><init>(Lcfd;Lcfb;Lcep;Lrx/t;Lrx/t;)V

    .line 58
    return-object v0
.end method

.method static synthetic a(Lcez;)Lcfd;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcez;->a:Lcfd;

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
            "Ljava/lang/Long;",
            ">;",
            "Lrx/o",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 98
    new-instance v0, Lcfa;

    invoke-direct {v0, p0}, Lcfa;-><init>(Lcez;)V

    return-object v0
.end method


# virtual methods
.method public a(J)Lrx/o;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lrx/o",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcez;->c:Lcep;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcep;->b(Ljava/lang/Object;)Lrx/o;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lrx/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/o",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcez;->b:Lcfb;

    invoke-virtual {v0, p1}, Lcfb;->a(Ljava/lang/String;)Lrx/o;

    move-result-object v0

    .line 91
    invoke-direct {p0}, Lcez;->a()Ldjj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/o;->f(Ldjj;)Lrx/o;

    move-result-object v0

    iget-object v1, p0, Lcez;->d:Lrx/t;

    .line 92
    invoke-virtual {v0, v1}, Lrx/o;->b(Lrx/t;)Lrx/o;

    move-result-object v0

    iget-object v1, p0, Lcez;->e:Lrx/t;

    .line 93
    invoke-virtual {v0, v1}, Lrx/o;->a(Lrx/t;)Lrx/o;

    move-result-object v0

    .line 90
    return-object v0
.end method

.method public a(JJ)V
    .locals 3

    .prologue
    .line 119
    iget-object v0, p0, Lcez;->c:Lcep;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcep;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 120
    return-void
.end method
