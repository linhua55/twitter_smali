.class public Lblj;
.super Lcom/twitter/library/service/x;
.source "Twttr"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lblj;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/twitter/library/service/x;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/client/Session;)V

    .line 28
    return-void
.end method


# virtual methods
.method protected a(J)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lblj;->p:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/twitter/library/platform/notifications/PushRegistration;->e(Landroid/content/Context;J)V

    .line 64
    return-void
.end method

.method protected a_(Lcom/twitter/library/service/aa;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 32
    invoke-virtual {p0}, Lblj;->N()Lcom/twitter/library/service/ab;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/ab;

    .line 33
    iget-wide v2, v0, Lcom/twitter/library/service/ab;->c:J

    .line 34
    invoke-virtual {p0}, Lblj;->S()Lcom/twitter/library/provider/dm;

    move-result-object v4

    .line 35
    iget-object v5, p0, Lblj;->p:Landroid/content/Context;

    invoke-static {v5, v2, v3}, Lcom/twitter/library/scribe/ScribeDatabaseHelper;->a(Landroid/content/Context;J)Lcom/twitter/library/scribe/ScribeDatabaseHelper;

    move-result-object v5

    .line 36
    invoke-virtual {p0, v2, v3}, Lblj;->a(J)V

    .line 37
    iget-object v6, p0, Lblj;->p:Landroid/content/Context;

    invoke-static {v6, v2, v3, v7, v7}, Lcom/twitter/library/service/v;->a(Landroid/content/Context;JLjava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    .line 38
    invoke-virtual {v4}, Lcom/twitter/library/provider/dm;->j()V

    .line 39
    invoke-virtual {v5}, Lcom/twitter/library/scribe/ScribeDatabaseHelper;->d()V

    .line 40
    invoke-static {}, Lcom/twitter/platform/PlatformContext;->e()Lcom/twitter/platform/PlatformContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/twitter/platform/PlatformContext;->d()Lcom/twitter/platform/p;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Lcom/twitter/platform/p;->b(J)V

    .line 41
    iget-object v0, v0, Lcom/twitter/library/service/ab;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/library/util/b;->a(Ljava/lang/String;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_0

    .line 45
    :try_start_0
    invoke-interface {v0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    .line 56
    :goto_0
    iget-object v1, p0, Lblj;->p:Landroid/content/Context;

    invoke-static {v1}, Lcom/twitter/library/provider/ar;->a(Landroid/content/Context;)Lcom/twitter/library/provider/ar;

    move-result-object v1

    .line 57
    invoke-virtual {v1, v2, v3}, Lcom/twitter/library/provider/ar;->e(J)I

    .line 58
    invoke-virtual {v1, v2, v3}, Lcom/twitter/library/provider/ar;->d(J)I

    .line 59
    invoke-virtual {p1, v0}, Lcom/twitter/library/service/aa;->a(Z)V

    .line 60
    return-void

    .line 46
    :catch_0
    move-exception v0

    move v0, v1

    .line 52
    goto :goto_0

    .line 48
    :catch_1
    move-exception v0

    move v0, v1

    .line 52
    goto :goto_0

    .line 50
    :catch_2
    move-exception v0

    move v0, v1

    .line 52
    goto :goto_0

    :cond_0
    move v0, v1

    .line 54
    goto :goto_0
.end method
