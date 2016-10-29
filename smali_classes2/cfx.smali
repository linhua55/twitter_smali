.class public Lcfx;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbjg;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/twitter/library/client/bd;

.field private final c:Lcom/twitter/library/client/bk;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/bd;Lcom/twitter/library/client/bk;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcfx;->a:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcfx;->b:Lcom/twitter/library/client/bd;

    .line 27
    iput-object p3, p0, Lcfx;->c:Lcom/twitter/library/client/bk;

    .line 28
    return-void
.end method


# virtual methods
.method public a(Lbjh;)Z
    .locals 1

    .prologue
    .line 57
    instance-of v0, p1, Lcft;

    return v0
.end method

.method public b(Lbjh;)V
    .locals 5

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcfx;->a(Lbjh;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Event must be a PromotedLog, is a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    check-cast p1, Lcft;

    .line 38
    new-instance v0, Lcom/twitter/library/service/ab;

    iget-object v1, p0, Lcfx;->c:Lcom/twitter/library/client/bk;

    invoke-virtual {v1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twitter/library/service/ab;-><init>(Lcom/twitter/library/client/Session;)V

    .line 39
    iget-object v1, p0, Lcfx;->b:Lcom/twitter/library/client/bd;

    new-instance v2, Lbqt;

    iget-object v3, p0, Lcfx;->a:Landroid/content/Context;

    iget-object v4, p1, Lcft;->a:Lcom/twitter/library/api/PromotedEvent;

    invoke-direct {v2, v3, v0, v4}, Lbqt;-><init>(Landroid/content/Context;Lcom/twitter/library/service/ab;Lcom/twitter/library/api/PromotedEvent;)V

    iget-object v0, p1, Lcft;->b:Ljava/lang/String;

    .line 41
    invoke-virtual {v2, v0}, Lbqt;->b(Ljava/lang/String;)Lbqt;

    move-result-object v0

    iget-boolean v2, p1, Lcft;->e:Z

    .line 42
    invoke-virtual {v0, v2}, Lbqt;->a(Z)Lbqt;

    move-result-object v0

    iget-wide v2, p1, Lcft;->c:J

    .line 43
    invoke-virtual {v0, v2, v3}, Lbqt;->a(J)Lbqt;

    move-result-object v0

    iget-object v2, p1, Lcft;->d:Ljava/lang/String;

    .line 44
    invoke-virtual {v0, v2}, Lbqt;->a(Ljava/lang/String;)Lbqt;

    move-result-object v0

    iget-object v2, p1, Lcft;->f:Ljava/lang/String;

    .line 45
    invoke-virtual {v0, v2}, Lbqt;->c(Ljava/lang/String;)Lbqt;

    move-result-object v0

    iget-object v2, p1, Lcft;->g:Ljava/lang/String;

    .line 46
    invoke-virtual {v0, v2}, Lbqt;->d(Ljava/lang/String;)Lbqt;

    move-result-object v0

    iget-object v2, p1, Lcft;->h:Ljava/lang/String;

    .line 47
    invoke-virtual {v0, v2}, Lbqt;->e(Ljava/lang/String;)Lbqt;

    move-result-object v0

    iget-object v2, p1, Lcft;->i:Ljava/lang/String;

    .line 48
    invoke-virtual {v0, v2}, Lbqt;->f(Ljava/lang/String;)Lbqt;

    move-result-object v0

    iget-object v2, p1, Lcft;->j:Ljava/lang/String;

    .line 49
    invoke-virtual {v0, v2}, Lbqt;->g(Ljava/lang/String;)Lbqt;

    move-result-object v0

    iget-object v2, p1, Lcft;->k:Ljava/lang/String;

    .line 50
    invoke-virtual {v0, v2}, Lbqt;->h(Ljava/lang/String;)Lbqt;

    move-result-object v0

    iget-object v2, p1, Lcft;->l:Ljava/lang/String;

    .line 51
    invoke-virtual {v0, v2}, Lbqt;->i(Ljava/lang/String;)Lbqt;

    move-result-object v0

    iget-object v2, p1, Lcft;->m:Ljava/lang/String;

    .line 52
    invoke-virtual {v0, v2}, Lbqt;->j(Ljava/lang/String;)Lbqt;

    move-result-object v0

    .line 39
    invoke-virtual {v1, v0}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;)Ljava/lang/String;

    .line 53
    return-void
.end method
