.class public Lbbm;
.super Lcom/twitter/database/hydrator/a;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/database/hydrator/a",
        "<",
        "Lcpf;",
        "Lbhz;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/twitter/database/hydrator/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcpf;Lbhz;)Lbhz;
    .locals 6

    .prologue
    .line 15
    iget-wide v0, p1, Lcpf;->h:J

    .line 16
    invoke-interface {p2, v0, v1}, Lbhz;->b(J)Lcom/twitter/database/model/v;

    move-result-object v0

    check-cast v0, Lbhz;

    iget-object v1, p1, Lcpf;->c:Ljava/lang/String;

    .line 17
    invoke-interface {v0, v1}, Lbhz;->e(Ljava/lang/String;)Lbhz;

    move-result-object v0

    iget-object v1, p1, Lcpf;->m:Lcqb;

    iget-wide v2, v1, Lcqb;->b:J

    .line 18
    invoke-interface {v0, v2, v3}, Lbhz;->g(J)Lbhz;

    move-result-object v2

    iget-object v0, p1, Lcpf;->m:Lcqb;

    iget-wide v0, v0, Lcqb;->c:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcpf;->m:Lcqb;

    iget-wide v0, v0, Lcqb;->c:J

    .line 19
    :goto_0
    invoke-interface {v2, v0, v1}, Lbhz;->h(J)Lbhz;

    move-result-object v0

    iget-wide v2, p1, Lcpf;->n:J

    .line 22
    invoke-interface {v0, v2, v3}, Lbhz;->i(J)Lbhz;

    move-result-object v0

    iget-wide v2, p1, Lcpf;->g:J

    .line 23
    invoke-interface {v0, v2, v3}, Lbhz;->d(J)Lbhz;

    move-result-object v0

    iget-wide v2, p1, Lcpf;->b:J

    .line 24
    invoke-interface {v0, v2, v3}, Lbhz;->c(J)Lbhz;

    move-result-object v0

    iget-wide v2, p1, Lcpf;->k:J

    .line 25
    invoke-interface {v0, v2, v3}, Lbhz;->e(J)Lbhz;

    move-result-object v0

    iget-wide v2, p1, Lcpf;->i:J

    .line 26
    invoke-interface {v0, v2, v3}, Lbhz;->j(J)Lbhz;

    move-result-object v0

    iget-object v1, p1, Lcpf;->e:Ljava/lang/String;

    .line 27
    invoke-interface {v0, v1}, Lbhz;->b(Ljava/lang/String;)Lbhz;

    move-result-object v0

    iget-object v1, p1, Lcpf;->d:Ljava/lang/String;

    .line 28
    invoke-interface {v0, v1}, Lbhz;->a(Ljava/lang/String;)Lbhz;

    move-result-object v0

    iget-object v1, p1, Lcpf;->f:Ljava/lang/String;

    .line 29
    invoke-interface {v0, v1}, Lbhz;->c(Ljava/lang/String;)Lbhz;

    move-result-object v0

    iget-object v1, p1, Lcpf;->l:Ljava/lang/String;

    .line 30
    invoke-interface {v0, v1}, Lbhz;->d(Ljava/lang/String;)Lbhz;

    move-result-object v0

    iget-object v1, p1, Lcpf;->j:Lcpu;

    .line 31
    invoke-interface {v0, v1}, Lbhz;->a(Lcpu;)Lbhz;

    move-result-object v0

    .line 15
    return-object v0

    .line 18
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    check-cast p1, Lcpf;

    check-cast p2, Lbhz;

    invoke-virtual {p0, p1, p2}, Lbbm;->a(Lcpf;Lbhz;)Lbhz;

    move-result-object v0

    return-object v0
.end method
