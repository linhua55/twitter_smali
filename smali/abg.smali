.class public Labg;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Labk;


# instance fields
.field private final a:Lcom/twitter/database/model/l;

.field private final b:Lcom/twitter/platform/u;


# direct methods
.method public constructor <init>(Lcom/twitter/library/provider/dm;Lcom/twitter/platform/u;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Lcom/twitter/library/provider/dm;->d()Lcom/twitter/database/schema/TwitterSchema;

    move-result-object v0

    iput-object v0, p0, Labg;->a:Lcom/twitter/database/model/l;

    .line 36
    iput-object p2, p0, Labg;->b:Lcom/twitter/platform/u;

    .line 37
    return-void
.end method

.method static synthetic a(Labg;Lcom/twitter/model/livevideo/d;)J
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0, p1}, Labg;->b(Lcom/twitter/model/livevideo/d;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic a(Labg;J)Lcom/twitter/model/livevideo/d;
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Labg;->b(J)Lcom/twitter/model/livevideo/d;

    move-result-object v0

    return-object v0
.end method

.method private a(Lbey;)Lcom/twitter/model/livevideo/d;
    .locals 4

    .prologue
    .line 109
    new-instance v0, Lcom/twitter/model/livevideo/e;

    invoke-direct {v0}, Lcom/twitter/model/livevideo/e;-><init>()V

    .line 110
    invoke-interface {p1}, Lbey;->b()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/livevideo/e;->a(J)Lcom/twitter/model/livevideo/e;

    move-result-object v0

    .line 111
    invoke-interface {p1}, Lbey;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/livevideo/e;->b(J)Lcom/twitter/model/livevideo/e;

    move-result-object v0

    .line 112
    invoke-interface {p1}, Lbey;->d()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/livevideo/e;->c(J)Lcom/twitter/model/livevideo/e;

    move-result-object v0

    .line 113
    invoke-interface {p1}, Lbey;->e()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/livevideo/e;->d(J)Lcom/twitter/model/livevideo/e;

    move-result-object v0

    .line 114
    invoke-interface {p1}, Lbey;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/livevideo/e;->b(Ljava/lang/String;)Lcom/twitter/model/livevideo/e;

    move-result-object v0

    .line 115
    invoke-interface {p1}, Lbey;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/livevideo/e;->c(Ljava/lang/String;)Lcom/twitter/model/livevideo/e;

    move-result-object v0

    .line 116
    invoke-interface {p1}, Lbey;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/livevideo/e;->a(Ljava/lang/String;)Lcom/twitter/model/livevideo/e;

    move-result-object v0

    .line 117
    invoke-interface {p1}, Lbey;->i()Lcom/twitter/model/livevideo/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/livevideo/e;->a(Lcom/twitter/model/livevideo/a;)Lcom/twitter/model/livevideo/e;

    move-result-object v0

    .line 118
    invoke-interface {p1}, Lbey;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/livevideo/e;->d(Ljava/lang/String;)Lcom/twitter/model/livevideo/e;

    move-result-object v0

    .line 119
    invoke-interface {p1}, Lbey;->k()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/livevideo/e;->a(Ljava/util/List;)Lcom/twitter/model/livevideo/e;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Lcom/twitter/model/livevideo/e;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/livevideo/d;

    .line 109
    return-object v0
.end method

.method private b(Lcom/twitter/model/livevideo/d;)J
    .locals 4

    .prologue
    .line 85
    iget-object v0, p1, Lcom/twitter/model/livevideo/d;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/twitter/model/livevideo/d;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/twitter/model/livevideo/d;->i:Lcom/twitter/model/livevideo/a;

    if-nez v0, :cond_1

    .line 86
    :cond_0
    const-wide/16 v0, -0x1

    .line 103
    :goto_0
    return-wide v0

    .line 89
    :cond_1
    iget-object v0, p0, Labg;->a:Lcom/twitter/database/model/l;

    const-class v1, Lbez;

    invoke-interface {v0, v1}, Lcom/twitter/database/model/l;->c(Ljava/lang/Class;)Lcom/twitter/database/model/r;

    move-result-object v0

    .line 90
    invoke-interface {v0}, Lcom/twitter/database/model/r;->b()Lcom/twitter/database/model/k;

    move-result-object v1

    .line 91
    iget-object v0, v1, Lcom/twitter/database/model/k;->d:Ljava/lang/Object;

    check-cast v0, Lbfa;

    iget-wide v2, p1, Lcom/twitter/model/livevideo/d;->b:J

    .line 92
    invoke-interface {v0, v2, v3}, Lbfa;->a(J)Lbfa;

    move-result-object v0

    iget-wide v2, p1, Lcom/twitter/model/livevideo/d;->c:J

    .line 93
    invoke-interface {v0, v2, v3}, Lbfa;->b(J)Lbfa;

    move-result-object v0

    iget-wide v2, p1, Lcom/twitter/model/livevideo/d;->d:J

    .line 94
    invoke-interface {v0, v2, v3}, Lbfa;->c(J)Lbfa;

    move-result-object v0

    iget-wide v2, p1, Lcom/twitter/model/livevideo/d;->e:J

    .line 95
    invoke-interface {v0, v2, v3}, Lbfa;->d(J)Lbfa;

    move-result-object v0

    iget-object v2, p1, Lcom/twitter/model/livevideo/d;->f:Ljava/lang/String;

    .line 96
    invoke-interface {v0, v2}, Lbfa;->a(Ljava/lang/String;)Lbfa;

    move-result-object v0

    iget-object v2, p1, Lcom/twitter/model/livevideo/d;->g:Ljava/lang/String;

    .line 97
    invoke-interface {v0, v2}, Lbfa;->b(Ljava/lang/String;)Lbfa;

    move-result-object v0

    iget-object v2, p1, Lcom/twitter/model/livevideo/d;->h:Ljava/lang/String;

    .line 98
    invoke-interface {v0, v2}, Lbfa;->c(Ljava/lang/String;)Lbfa;

    move-result-object v0

    iget-object v2, p1, Lcom/twitter/model/livevideo/d;->i:Lcom/twitter/model/livevideo/a;

    .line 99
    invoke-interface {v0, v2}, Lbfa;->a(Lcom/twitter/model/livevideo/a;)Lbfa;

    move-result-object v0

    iget-object v2, p0, Labg;->b:Lcom/twitter/platform/u;

    .line 100
    invoke-interface {v2}, Lcom/twitter/platform/u;->a()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lbfa;->e(J)Lbfa;

    move-result-object v0

    iget-object v2, p1, Lcom/twitter/model/livevideo/d;->j:Ljava/lang/String;

    .line 101
    invoke-interface {v0, v2}, Lbfa;->d(Ljava/lang/String;)Lbfa;

    move-result-object v0

    iget-object v2, p1, Lcom/twitter/model/livevideo/d;->k:Ljava/util/List;

    .line 102
    invoke-interface {v0, v2}, Lbfa;->a(Ljava/util/List;)Lbfa;

    .line 103
    invoke-virtual {v1}, Lcom/twitter/database/model/k;->b()J

    move-result-wide v0

    goto :goto_0
.end method

.method private b(J)Lcom/twitter/model/livevideo/d;
    .locals 5

    .prologue
    .line 65
    iget-object v0, p0, Labg;->a:Lcom/twitter/database/model/l;

    const-class v1, Lbex;

    invoke-interface {v0, v1}, Lcom/twitter/database/model/l;->a(Ljava/lang/Class;)Lcom/twitter/database/model/p;

    move-result-object v0

    check-cast v0, Lbex;

    invoke-interface {v0}, Lbex;->f()Lcom/twitter/database/model/q;

    move-result-object v0

    .line 66
    const-string/jumbo v1, "event_id=?"

    .line 67
    const-string/jumbo v1, "event_id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/twitter/database/model/q;->a(Ljava/lang/String;[Ljava/lang/String;)Lcom/twitter/database/model/j;

    move-result-object v1

    .line 69
    :try_start_0
    invoke-virtual {v1}, Lcom/twitter/database/model/j;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, v1, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v0, Lbey;

    invoke-direct {p0, v0}, Labg;->a(Lbey;)Lcom/twitter/model/livevideo/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 75
    invoke-virtual {v1}, Lcom/twitter/database/model/j;->close()V

    .line 72
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 75
    invoke-virtual {v1}, Lcom/twitter/database/model/j;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/twitter/database/model/j;->close()V

    throw v0
.end method


# virtual methods
.method public a(J)Lrx/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lrx/o",
            "<",
            "Lcom/twitter/model/livevideo/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    new-instance v0, Labi;

    invoke-direct {v0, p0, p1, p2}, Labi;-><init>(Labg;J)V

    invoke-static {v0}, Lrx/o;->a(Ljava/util/concurrent/Callable;)Lrx/o;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/twitter/model/livevideo/d;)Lrx/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/livevideo/d;",
            ")",
            "Lrx/o",
            "<",
            "Lcom/twitter/model/livevideo/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Labh;

    invoke-direct {v0, p0, p1}, Labh;-><init>(Labg;Lcom/twitter/model/livevideo/d;)V

    invoke-static {v0}, Lrx/o;->a(Ljava/util/concurrent/Callable;)Lrx/o;

    move-result-object v0

    return-object v0
.end method
