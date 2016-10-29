.class public Lbqo;
.super Lcom/twitter/library/service/b;
.source "Twttr"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 29
    const-string/jumbo v0, "DeletePushDevice"

    invoke-direct {p0, p1, v0, p2}, Lcom/twitter/library/service/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/client/Session;)V

    .line 30
    iput-object p3, p0, Lbqo;->a:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, "Push destination changes are always considered as a non-user action"

    invoke-virtual {p0, v0}, Lbqo;->k(Ljava/lang/String;)Lcom/twitter/library/service/x;

    .line 32
    return-void
.end method


# virtual methods
.method protected a()Lcom/twitter/library/service/d;
    .locals 4

    .prologue
    .line 37
    invoke-virtual {p0}, Lbqo;->K()Lcom/twitter/library/service/e;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "push_destinations"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "destroy"

    aput-object v3, v1, v2

    .line 38
    invoke-virtual {v0, v1}, Lcom/twitter/library/service/e;->a([Ljava/lang/Object;)Lcom/twitter/library/service/e;

    move-result-object v0

    sget-object v1, Lcom/twitter/internal/network/HttpOperation$RequestMethod;->b:Lcom/twitter/internal/network/HttpOperation$RequestMethod;

    .line 39
    invoke-virtual {v0, v1}, Lcom/twitter/library/service/e;->a(Lcom/twitter/internal/network/HttpOperation$RequestMethod;)Lcom/twitter/library/service/e;

    move-result-object v0

    const-string/jumbo v1, "udid"

    iget-object v2, p0, Lbqo;->a:Ljava/lang/String;

    .line 40
    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    move-result-object v0

    const-string/jumbo v1, "app_version"

    const-wide/16 v2, 0x10

    .line 41
    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;J)Lcom/twitter/library/service/e;

    move-result-object v0

    .line 42
    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/config/AppConfig;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    const-string/jumbo v1, "environment"

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;J)Lcom/twitter/library/service/e;

    .line 45
    :cond_0
    invoke-virtual {v0}, Lcom/twitter/library/service/e;->a()Lcom/twitter/library/service/d;

    move-result-object v0

    return-object v0
.end method

.method protected a(JLjava/lang/String;)V
    .locals 5

    .prologue
    .line 63
    iget-object v0, p0, Lbqo;->p:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/twitter/library/platform/notifications/x;->a(Landroid/content/Context;J)Lcom/twitter/library/platform/notifications/x;

    move-result-object v0

    .line 64
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/library/platform/notifications/x;->a(Z)V

    .line 65
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/platform/notifications/x;->a(J)V

    .line 66
    iget-object v0, p0, Lbqo;->p:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/twitter/library/platform/notifications/PushRegistration;->d:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "account"

    .line 67
    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "push_return_code"

    const/4 v3, 0x1

    .line 68
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lcom/twitter/library/provider/cn;->a:Ljava/lang/String;

    .line 66
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method protected a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/service/c;)V
    .locals 4

    .prologue
    .line 56
    invoke-virtual {p2}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lbqo;->N()Lcom/twitter/library/service/ab;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/ab;

    .line 58
    iget-wide v2, v0, Lcom/twitter/library/service/ab;->c:J

    iget-object v0, v0, Lcom/twitter/library/service/ab;->e:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v0}, Lbqo;->a(JLjava/lang/String;)V

    .line 60
    :cond_0
    return-void
.end method

.method protected f()Lcom/twitter/library/service/c;
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method
