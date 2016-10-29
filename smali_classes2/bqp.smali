.class public Lbqp;
.super Lbqm;
.source "Twttr"


# instance fields
.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6

    .prologue
    .line 30
    new-instance v2, Lcom/twitter/library/service/ab;

    invoke-direct {v2, p2}, Lcom/twitter/library/service/ab;-><init>(Lcom/twitter/library/client/Session;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lbqp;-><init>(Landroid/content/Context;Lcom/twitter/library/service/ab;Ljava/lang/String;ILjava/lang/String;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/service/ab;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6

    .prologue
    .line 35
    const-string/jumbo v2, "UpdatePushDevice"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lbqm;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/service/ab;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iput p4, p0, Lbqp;->c:I

    .line 37
    return-void
.end method


# virtual methods
.method protected a()Lcom/twitter/library/service/d;
    .locals 4

    .prologue
    .line 47
    invoke-virtual {p0}, Lbqp;->K()Lcom/twitter/library/service/e;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "push_destinations"

    aput-object v3, v1, v2

    .line 48
    invoke-virtual {v0, v1}, Lcom/twitter/library/service/e;->a([Ljava/lang/Object;)Lcom/twitter/library/service/e;

    move-result-object v0

    sget-object v1, Lcom/twitter/internal/network/HttpOperation$RequestMethod;->b:Lcom/twitter/internal/network/HttpOperation$RequestMethod;

    .line 49
    invoke-virtual {v0, v1}, Lcom/twitter/library/service/e;->a(Lcom/twitter/internal/network/HttpOperation$RequestMethod;)Lcom/twitter/library/service/e;

    move-result-object v0

    .line 50
    invoke-virtual {p0, v0}, Lbqp;->a(Lcom/twitter/library/service/e;)Lcom/twitter/library/service/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/service/e;->a()Lcom/twitter/library/service/d;

    move-result-object v0

    return-object v0
.end method

.method protected a(JI)V
    .locals 7

    .prologue
    .line 77
    invoke-virtual {p0}, Lbqp;->T()Lcom/twitter/library/provider/b;

    move-result-object v6

    .line 78
    iget-object v0, p0, Lbqp;->p:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/library/provider/ar;->a(Landroid/content/Context;)Lcom/twitter/library/provider/ar;

    move-result-object v1

    const/4 v5, 0x1

    move-wide v2, p1

    move v4, p3

    .line 79
    invoke-virtual/range {v1 .. v6}, Lcom/twitter/library/provider/ar;->a(JIZLcom/twitter/library/provider/b;)I

    .line 80
    invoke-virtual {v6}, Lcom/twitter/library/provider/b;->a()V

    .line 83
    iget-object v0, p0, Lbqp;->p:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/twitter/library/platform/notifications/x;->a(Landroid/content/Context;J)Lcom/twitter/library/platform/notifications/x;

    move-result-object v0

    .line 84
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/platform/notifications/x;->a(J)V

    .line 85
    return-void
.end method

.method protected a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/api/t;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/internal/network/HttpOperation;",
            "Lcom/twitter/library/service/aa;",
            "Lcom/twitter/library/api/t",
            "<",
            "Lcsn;",
            "Lcsm;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-virtual {p2}, Lcom/twitter/library/service/aa;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcom/twitter/library/service/aa;->d()I

    move-result v1

    const/16 v2, 0x130

    if-ne v1, v2, :cond_2

    .line 62
    :cond_0
    invoke-virtual {p0, p3}, Lbqp;->a(Lcom/twitter/library/api/t;)Lcsn;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcsn;->a:Z

    if-eqz v1, :cond_1

    iget v0, v0, Lcsn;->b:I

    :goto_0
    iput v0, p0, Lbqp;->h:I

    .line 65
    invoke-virtual {p0}, Lbqp;->N()Lcom/twitter/library/service/ab;

    move-result-object v0

    .line 67
    iget-wide v0, v0, Lcom/twitter/library/service/ab;->c:J

    iget v2, p0, Lbqp;->h:I

    invoke-virtual {p0, v0, v1, v2}, Lbqp;->a(JI)V

    .line 74
    :goto_1
    return-void

    .line 63
    :cond_1
    iget v0, p0, Lbqp;->c:I

    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {p2}, Lcom/twitter/library/service/aa;->d()I

    move-result v1

    const/16 v2, 0x191

    if-ne v1, v2, :cond_4

    .line 69
    invoke-virtual {p0, p3}, Lbqp;->b(Lcom/twitter/library/api/t;)Lcsm;

    move-result-object v1

    .line 70
    if-eqz v1, :cond_3

    iget v0, v1, Lcsm;->b:I

    :cond_3
    iput v0, p0, Lbqp;->g:I

    goto :goto_1

    .line 72
    :cond_4
    iput v0, p0, Lbqp;->g:I

    goto :goto_1
.end method

.method protected bridge synthetic a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/service/c;)V
    .locals 0

    .prologue
    .line 24
    check-cast p3, Lcom/twitter/library/api/t;

    invoke-virtual {p0, p1, p2, p3}, Lbqp;->a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/api/t;)V

    return-void
.end method

.method protected e()Lcom/twitter/library/api/t;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/library/api/t",
            "<",
            "Lcsn;",
            "Lcsm;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    const-class v0, Lcsn;

    const-class v1, Lcsm;

    invoke-static {v0, v1}, Lcom/twitter/library/api/v;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/twitter/library/api/v;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic f()Lcom/twitter/library/service/c;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lbqp;->e()Lcom/twitter/library/api/t;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lbqp;->h:I

    return v0
.end method
