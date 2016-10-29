.class public Lrg;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lro;


# instance fields
.field private final a:Lcom/twitter/database/model/l;

.field private final b:Lcom/twitter/platform/u;

.field private final c:Lcom/twitter/library/provider/dm;


# direct methods
.method public constructor <init>(Lcom/twitter/library/provider/dm;Lcom/twitter/platform/u;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Lcom/twitter/library/provider/dm;->d()Lcom/twitter/database/schema/TwitterSchema;

    move-result-object v0

    iput-object v0, p0, Lrg;->a:Lcom/twitter/database/model/l;

    .line 40
    iput-object p1, p0, Lrg;->c:Lcom/twitter/library/provider/dm;

    .line 41
    iput-object p2, p0, Lrg;->b:Lcom/twitter/platform/u;

    .line 42
    return-void
.end method

.method static synthetic a(Lrg;Lclh;)J
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lrg;->b(Lclh;)J

    move-result-wide v0

    return-wide v0
.end method

.method private a(Lbco;)Lclh;
    .locals 4

    .prologue
    .line 110
    invoke-interface {p1}, Lbco;->f()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lrg;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 111
    new-instance v1, Lcli;

    invoke-direct {v1}, Lcli;-><init>()V

    .line 112
    invoke-interface {p1}, Lbco;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcli;->a(J)Lcli;

    move-result-object v1

    .line 113
    invoke-interface {p1}, Lbco;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcli;->a(Ljava/lang/String;)Lcli;

    move-result-object v1

    .line 114
    invoke-interface {p1}, Lbco;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Lcli;->a(I)Lcli;

    move-result-object v1

    .line 115
    invoke-interface {p1}, Lbco;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcli;->b(Ljava/lang/String;)Lcli;

    move-result-object v1

    .line 116
    invoke-virtual {v1, v0}, Lcli;->b(Ljava/util/List;)Lcli;

    move-result-object v0

    .line 117
    invoke-interface {p1}, Lbco;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcli;->a(Z)Lcli;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lcli;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lclh;

    .line 111
    return-object v0
.end method

.method static synthetic a(Lrg;J)Lclh;
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lrg;->b(J)Lclh;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lrg;->c:Lcom/twitter/library/provider/dm;

    invoke-virtual {v0, p1}, Lcom/twitter/library/provider/dm;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 124
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/r;->a(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private b(Lclh;)J
    .locals 4

    .prologue
    .line 91
    iget-object v0, p0, Lrg;->a:Lcom/twitter/database/model/l;

    const-class v1, Lbcp;

    invoke-interface {v0, v1}, Lcom/twitter/database/model/l;->c(Ljava/lang/Class;)Lcom/twitter/database/model/r;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/database/model/r;->b()Lcom/twitter/database/model/k;

    move-result-object v1

    .line 92
    iget-object v0, v1, Lcom/twitter/database/model/k;->d:Ljava/lang/Object;

    check-cast v0, Lbcq;

    iget-wide v2, p1, Lclh;->a:J

    invoke-interface {v0, v2, v3}, Lbcq;->a(J)Lbcq;

    move-result-object v0

    iget-object v2, p1, Lclh;->b:Ljava/lang/String;

    .line 93
    invoke-interface {v0, v2}, Lbcq;->a(Ljava/lang/String;)Lbcq;

    move-result-object v0

    iget v2, p1, Lclh;->c:I

    .line 94
    invoke-interface {v0, v2}, Lbcq;->a(I)Lbcq;

    move-result-object v0

    iget-object v2, p1, Lclh;->e:Ljava/lang/String;

    .line 95
    invoke-interface {v0, v2}, Lbcq;->b(Ljava/lang/String;)Lbcq;

    move-result-object v0

    .line 96
    invoke-virtual {p1}, Lclh;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Lbcq;->a(Ljava/util/List;)Lbcq;

    move-result-object v0

    iget-boolean v2, p1, Lclh;->f:Z

    .line 97
    invoke-interface {v0, v2}, Lbcq;->a(Z)Lbcq;

    move-result-object v0

    iget-object v2, p0, Lrg;->b:Lcom/twitter/platform/u;

    .line 98
    invoke-interface {v2}, Lcom/twitter/platform/u;->a()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lbcq;->b(J)Lbcq;

    .line 99
    invoke-virtual {v1}, Lcom/twitter/database/model/k;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method private b(J)Lclh;
    .locals 5

    .prologue
    .line 71
    iget-object v0, p0, Lrg;->a:Lcom/twitter/database/model/l;

    const-class v1, Lbcn;

    invoke-interface {v0, v1}, Lcom/twitter/database/model/l;->a(Ljava/lang/Class;)Lcom/twitter/database/model/p;

    move-result-object v0

    check-cast v0, Lbcn;

    invoke-interface {v0}, Lbcn;->f()Lcom/twitter/database/model/q;

    move-result-object v0

    .line 72
    const-string/jumbo v1, "alert_id=?"

    .line 73
    const-string/jumbo v1, "alert_id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/twitter/database/model/q;->a(Ljava/lang/String;[Ljava/lang/String;)Lcom/twitter/database/model/j;

    move-result-object v1

    .line 75
    :try_start_0
    invoke-virtual {v1}, Lcom/twitter/database/model/j;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, v1, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v0, Lbco;

    invoke-direct {p0, v0}, Lrg;->a(Lbco;)Lclh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 81
    invoke-virtual {v1}, Lcom/twitter/database/model/j;->close()V

    .line 78
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 81
    invoke-virtual {v1}, Lcom/twitter/database/model/j;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/twitter/database/model/j;->close()V

    throw v0
.end method

.method static synthetic b(Lrg;Lclh;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lrg;->c(Lclh;)V

    return-void
.end method

.method private c(Lclh;)V
    .locals 11

    .prologue
    const-wide/16 v2, -0x1

    const/4 v7, 0x0

    .line 104
    iget-object v0, p0, Lrg;->c:Lcom/twitter/library/provider/dm;

    iget-object v1, p1, Lclh;->d:Ljava/util/List;

    const/4 v4, -0x1

    const/4 v9, 0x1

    move-wide v5, v2

    move-object v8, v7

    move-object v10, v7

    invoke-virtual/range {v0 .. v10}, Lcom/twitter/library/provider/dm;->a(Ljava/util/Collection;JIJLjava/lang/String;Ljava/lang/String;ZLcom/twitter/library/provider/b;)I

    .line 106
    return-void
.end method


# virtual methods
.method public a(J)Lrx/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lrx/o",
            "<",
            "Lclh;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Lri;

    invoke-direct {v0, p0, p1, p2}, Lri;-><init>(Lrg;J)V

    invoke-static {v0}, Lrx/o;->a(Ljava/util/concurrent/Callable;)Lrx/o;

    move-result-object v0

    return-object v0
.end method

.method public a(Lclh;)Lrx/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lclh;",
            ")",
            "Lrx/o",
            "<",
            "Lclh;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Lrh;

    invoke-direct {v0, p0, p1}, Lrh;-><init>(Lrg;Lclh;)V

    invoke-static {v0}, Lrx/o;->a(Ljava/util/concurrent/Callable;)Lrx/o;

    move-result-object v0

    return-object v0
.end method
