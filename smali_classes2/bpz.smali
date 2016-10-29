.class public Lbpz;
.super Lcom/twitter/library/api/af;
.source "Twttr"

# interfaces
.implements Lbqe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/library/api/af",
        "<",
        "Lcom/twitter/library/api/t",
        "<",
        "Lcqj;",
        "Lcom/twitter/model/core/cj;",
        ">;>;",
        "Lbqe;"
    }
.end annotation


# instance fields
.field private final b:Lcet;

.field private final c:Lbqa;

.field private final g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Lcet;Lbqa;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lbpz;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/twitter/library/api/af;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/client/Session;)V

    .line 48
    iput-object p3, p0, Lbpz;->b:Lcet;

    .line 49
    iput-object p4, p0, Lbpz;->c:Lbqa;

    .line 50
    iput-object p5, p0, Lbpz;->g:Ljava/lang/String;

    .line 51
    return-void
.end method

.method private h()Z
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lbpz;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a()Lcom/twitter/library/service/d;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 56
    invoke-virtual {p0}, Lbpz;->K()Lcom/twitter/library/service/e;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/twitter/library/service/e;->b()Lcom/twitter/library/service/e;

    move-result-object v0

    const-string/jumbo v1, "v"

    const-wide/32 v2, 0x57925f20

    .line 58
    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;J)Lcom/twitter/library/service/e;

    move-result-object v0

    const-string/jumbo v1, "X-Twitter-UTCOffset"

    .line 59
    invoke-static {}, Lcom/twitter/util/al;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/service/e;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "moments"

    aput-object v3, v1, v2

    iget-object v2, p0, Lbpz;->c:Lbqa;

    .line 60
    invoke-interface {v2}, Lbqa;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/twitter/library/service/e;->a([Ljava/lang/Object;)Lcom/twitter/library/service/e;

    move-result-object v0

    iget-object v1, p0, Lbpz;->c:Lbqa;

    .line 61
    invoke-interface {v1}, Lbqa;->b()Lcom/twitter/internal/network/HttpOperation$RequestMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/service/e;->a(Lcom/twitter/internal/network/HttpOperation$RequestMethod;)Lcom/twitter/library/service/e;

    move-result-object v0

    const-string/jumbo v1, "include_blocking"

    .line 62
    invoke-virtual {v0, v1, v4}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Z)Lcom/twitter/library/service/e;

    move-result-object v0

    const-string/jumbo v1, "include_capsule_contents"

    const-wide/16 v2, 0x0

    .line 63
    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;J)Lcom/twitter/library/service/e;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcom/twitter/library/service/e;->d()Lcom/twitter/library/service/e;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/twitter/library/service/e;->c()Lcom/twitter/library/service/e;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/twitter/library/service/e;->e()Lcom/twitter/library/service/e;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lbpz;->g:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 68
    const-string/jumbo v1, "scroll_cursor"

    iget-object v2, p0, Lbpz;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    .line 70
    :cond_0
    iget-object v1, p0, Lbpz;->c:Lbqa;

    invoke-interface {v1, v0}, Lbqa;->a(Lcom/twitter/library/service/e;)V

    .line 71
    invoke-virtual {v0}, Lcom/twitter/library/service/e;->a()Lcom/twitter/library/service/d;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/api/t;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/internal/network/HttpOperation;",
            "Lcom/twitter/library/service/aa;",
            "Lcom/twitter/library/api/t",
            "<",
            "Lcqj;",
            "Lcom/twitter/model/core/cj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p1}, Lcom/twitter/internal/network/HttpOperation;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 83
    invoke-virtual {p3}, Lcom/twitter/library/api/t;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcqj;

    .line 84
    if-eqz v0, :cond_0

    .line 85
    iget-object v1, p0, Lbpz;->c:Lbqa;

    invoke-interface {v1}, Lbqa;->c()Ljava/lang/String;

    move-result-object v1

    .line 86
    iget-object v2, p0, Lbpz;->c:Lbqa;

    invoke-interface {v2}, Lbqa;->d()I

    move-result v2

    .line 87
    invoke-direct {p0}, Lbpz;->h()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 88
    iget-object v3, p0, Lbpz;->b:Lcet;

    invoke-virtual {v3, v0, v2, v1}, Lcet;->a(Lcqj;ILjava/lang/String;)V

    .line 92
    :goto_0
    iget-object v1, p0, Lbpz;->h:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 93
    iget-object v0, v0, Lcqj;->e:Ljava/lang/String;

    iput-object v0, p0, Lbpz;->h:Ljava/lang/String;

    .line 100
    :cond_0
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbpz;->i:Z

    .line 101
    const-string/jumbo v0, "moments:sectioned_guide:fetch"

    invoke-static {}, Layj;->b()Layj;

    move-result-object v1

    sget-object v2, Laxz;->m:Laye;

    invoke-static {v0, v1, v2}, Layp;->a(Ljava/lang/String;Layj;Laye;)Layp;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Layp;->j()V

    .line 107
    :goto_2
    return-void

    .line 90
    :cond_1
    iget-object v3, p0, Lbpz;->b:Lcet;

    invoke-virtual {v3, v0, v2, v1}, Lcet;->b(Lcqj;ILjava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_2
    const-string/jumbo v0, "Attempting to override an existing scroll cursor value, this means that this request has been re-used. Create a new request instead."

    invoke-static {v0}, Lcom/twitter/util/h;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 104
    :cond_3
    const-string/jumbo v0, "moments:sectioned_guide:fetch"

    invoke-static {}, Layj;->b()Layj;

    move-result-object v1

    sget-object v2, Laxz;->m:Laye;

    invoke-static {v0, v1, v2}, Layp;->a(Ljava/lang/String;Layj;Laye;)Layp;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Layp;->k()V

    goto :goto_2
.end method

.method protected bridge synthetic a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/service/c;)V
    .locals 0

    .prologue
    .line 27
    check-cast p3, Lcom/twitter/library/api/t;

    invoke-virtual {p0, p1, p2, p3}, Lbpz;->a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/api/t;)V

    return-void
.end method

.method protected b()Lcom/twitter/library/api/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/library/api/t",
            "<",
            "Lcqj;",
            "Lcom/twitter/model/core/cj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    const-class v0, Lcqj;

    invoke-static {v0}, Lcom/twitter/library/api/v;->a(Ljava/lang/Class;)Lcom/twitter/library/api/v;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/Runnable;
    .locals 3

    .prologue
    .line 112
    const-string/jumbo v0, "moments:sectioned_guide:fetch"

    invoke-static {}, Layj;->b()Layj;

    move-result-object v1

    sget-object v2, Laxz;->m:Laye;

    invoke-static {v0, v1, v2}, Layp;->a(Ljava/lang/String;Layj;Laye;)Layp;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Layp;->i()V

    .line 114
    invoke-super {p0, p1}, Lcom/twitter/library/api/af;->c(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    const-string/jumbo v0, "app:twitter_service:moments:sectioned_guide_request"

    return-object v0
.end method

.method protected synthetic f()Lcom/twitter/library/service/c;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lbpz;->b()Lcom/twitter/library/api/t;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lbpz;->h:Ljava/lang/String;

    return-object v0
.end method
