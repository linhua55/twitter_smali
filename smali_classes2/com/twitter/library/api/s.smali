.class public Lcom/twitter/library/api/s;
.super Lbky;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbky",
        "<",
        "Lcom/twitter/library/api/t",
        "<",
        "Lcoj;",
        "Lcom/twitter/model/core/cj;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/twitter/library/api/s;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lbky;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/client/Session;)V

    .line 38
    iput-object p3, p0, Lcom/twitter/library/api/s;->a:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/api/t;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/internal/network/HttpOperation;",
            "Lcom/twitter/library/service/aa;",
            "Lcom/twitter/library/api/t",
            "<",
            "Lcoj;",
            "Lcom/twitter/model/core/cj;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 60
    invoke-super {p0, p1, p2, p3}, Lbky;->a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/service/c;)V

    .line 61
    invoke-virtual {p0}, Lcom/twitter/library/api/s;->N()Lcom/twitter/library/service/ab;

    move-result-object v0

    iget-wide v4, v0, Lcom/twitter/library/service/ab;->c:J

    .line 62
    invoke-virtual {p1}, Lcom/twitter/internal/network/HttpOperation;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/twitter/library/api/t;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    new-instance v0, Laxz;

    const-string/jumbo v1, "fs:download:blocked"

    sget-object v2, Laxz;->m:Laye;

    .line 64
    invoke-virtual {p0}, Lcom/twitter/library/api/s;->m()Lcom/twitter/internal/android/service/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/internal/android/service/d;->a()J

    move-result-wide v6

    invoke-direct {v0, v1, v2, v6, v7}, Laxz;-><init>(Ljava/lang/String;Laye;J)V

    .line 65
    const-string/jumbo v1, "fs_request"

    invoke-virtual {v0, v1}, Laxz;->b(Ljava/lang/String;)V

    .line 66
    invoke-static {}, Layj;->b()Layj;

    move-result-object v1

    invoke-virtual {v1, v0}, Layj;->a(Laxz;)V

    .line 68
    const-string/jumbo v0, "fs:fetch:fetch_not_load"

    invoke-static {}, Layj;->b()Layj;

    move-result-object v1

    sget-object v2, Laxz;->m:Laye;

    invoke-static {v0, v1, v4, v5, v2}, Layp;->a(Ljava/lang/String;Layj;JLaye;)Layp;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Layp;->j()V

    .line 70
    invoke-virtual {p3}, Lcom/twitter/library/api/t;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcoj;

    .line 71
    invoke-virtual {v0}, Lcoj;->c()Lcoj;

    move-result-object v1

    .line 75
    invoke-static {v4, v5, v0}, Lcbq;->a(JLcoj;)V

    .line 76
    iget-object v0, p0, Lcom/twitter/library/api/s;->p:Landroid/content/Context;

    invoke-static {v0, v4, v5, v1}, Lcbq;->a(Landroid/content/Context;JLcoj;)V

    .line 91
    :goto_0
    return-void

    .line 78
    :cond_0
    const-string/jumbo v0, "fs:fetch:fetch_not_load"

    invoke-static {}, Layj;->b()Layj;

    move-result-object v3

    sget-object v6, Laxz;->m:Laye;

    invoke-static {v0, v3, v4, v5, v6}, Layp;->a(Ljava/lang/String;Layj;JLaye;)Layp;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Layp;->k()V

    .line 81
    invoke-virtual {p1}, Lcom/twitter/internal/network/HttpOperation;->k()Z

    move-result v3

    .line 82
    if-eqz p3, :cond_1

    move v0, v1

    .line 83
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {p3}, Lcom/twitter/library/api/t;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 84
    :goto_2
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "FeatureSwitchRequest failed: success=%b, networkFailure=%b, statusCode=%d, parsedObject=%s"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    .line 86
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v6, v2

    .line 87
    invoke-virtual {p1}, Lcom/twitter/internal/network/HttpOperation;->l()Lcom/twitter/internal/network/k;

    move-result-object v2

    iget-boolean v2, v2, Lcom/twitter/internal/network/k;->d:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v6, v1

    const/4 v1, 0x2

    .line 88
    invoke-virtual {p1}, Lcom/twitter/internal/network/HttpOperation;->l()Lcom/twitter/internal/network/k;

    move-result-object v2

    iget v2, v2, Lcom/twitter/internal/network/k;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    const/4 v1, 0x3

    if-eqz v0, :cond_3

    .line 89
    invoke-virtual {p3}, Lcom/twitter/library/api/t;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcoj;

    invoke-virtual {v0}, Lcoj;->d()Ljava/lang/String;

    move-result-object v0

    :goto_3
    aput-object v0, v6, v1

    .line 84
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lbix;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 82
    goto :goto_1

    :cond_2
    move v0, v2

    .line 83
    goto :goto_2

    .line 89
    :cond_3
    const-string/jumbo v0, "null"

    goto :goto_3
.end method

.method protected bridge synthetic a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/service/c;)V
    .locals 0

    .prologue
    .line 23
    check-cast p3, Lcom/twitter/library/api/t;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/library/api/s;->a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/api/t;)V

    return-void
.end method

.method protected b()Lcom/twitter/library/service/e;
    .locals 4

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/twitter/library/api/s;->K()Lcom/twitter/library/service/e;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "help"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "settings"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/library/service/e;->a([Ljava/lang/Object;)Lcom/twitter/library/service/e;

    move-result-object v0

    .line 45
    const-string/jumbo v1, "feature_switches_configs_use_feature_set_token"

    invoke-static {v1}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    const-string/jumbo v1, "feature_set_token"

    iget-object v2, p0, Lcom/twitter/library/api/s;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    .line 48
    :cond_0
    return-object v0
.end method

.method protected e()Lcom/twitter/library/api/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/library/api/t",
            "<",
            "Lcoj;",
            "Lcom/twitter/model/core/cj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    const-class v0, Lcoj;

    invoke-static {v0}, Lcom/twitter/library/api/v;->a(Ljava/lang/Class;)Lcom/twitter/library/api/v;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic f()Lcom/twitter/library/service/c;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/twitter/library/api/s;->e()Lcom/twitter/library/api/t;

    move-result-object v0

    return-object v0
.end method
