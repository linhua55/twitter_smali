.class public Lbpl;
.super Lcom/twitter/library/service/x;
.source "Twttr"


# instance fields
.field private a:I

.field private b:J

.field private c:Ljava/lang/String;

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lbpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/twitter/library/service/x;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/client/Session;)V

    .line 23
    return-void
.end method


# virtual methods
.method public a(I)Lbpl;
    .locals 0

    .prologue
    .line 26
    iput p1, p0, Lbpl;->a:I

    .line 27
    return-object p0
.end method

.method public a(J)Lbpl;
    .locals 1

    .prologue
    .line 31
    iput-wide p1, p0, Lbpl;->b:J

    .line 32
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lbpl;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lbpl;->c:Ljava/lang/String;

    .line 37
    return-object p0
.end method

.method protected a_(Lcom/twitter/library/service/aa;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 47
    new-instance v0, Lbpm;

    iget-object v1, p0, Lbpl;->p:Landroid/content/Context;

    invoke-virtual {p0}, Lbpl;->N()Lcom/twitter/library/service/ab;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lbpm;-><init>(Landroid/content/Context;Lcom/twitter/library/service/ab;)V

    .line 48
    invoke-virtual {v0, v4}, Lbpm;->a(I)Lbpm;

    move-result-object v0

    iget v1, p0, Lbpl;->a:I

    .line 49
    invoke-virtual {v0, v1}, Lbpm;->c(I)Lbpm;

    move-result-object v0

    iget-wide v2, p0, Lbpl;->b:J

    .line 50
    invoke-virtual {v0, v2, v3}, Lbpm;->a(J)Lbpm;

    move-result-object v0

    iget-object v1, p0, Lbpl;->c:Ljava/lang/String;

    .line 51
    invoke-virtual {v0, v1}, Lbpm;->a(Ljava/lang/String;)Lbpm;

    move-result-object v0

    .line 52
    invoke-virtual {v0, v4}, Lbpm;->a(Z)Lbpm;

    move-result-object v0

    iget v1, p0, Lbpl;->g:I

    .line 53
    invoke-virtual {v0, v1}, Lbpm;->d(I)Lbpm;

    move-result-object v1

    .line 55
    invoke-virtual {v1}, Lbpm;->P()Lcom/twitter/library/service/aa;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    invoke-virtual {v1}, Lbpm;->e()Z

    move-result v0

    .line 58
    new-instance v1, Lbpm;

    iget-object v2, p0, Lbpl;->p:Landroid/content/Context;

    invoke-virtual {p0}, Lbpl;->N()Lcom/twitter/library/service/ab;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lbpm;-><init>(Landroid/content/Context;Lcom/twitter/library/service/ab;)V

    const/4 v2, 0x2

    .line 59
    invoke-virtual {v1, v2}, Lbpm;->a(I)Lbpm;

    move-result-object v1

    iget v2, p0, Lbpl;->a:I

    .line 60
    invoke-virtual {v1, v2}, Lbpm;->c(I)Lbpm;

    move-result-object v1

    iget-wide v2, p0, Lbpl;->b:J

    .line 61
    invoke-virtual {v1, v2, v3}, Lbpm;->a(J)Lbpm;

    move-result-object v1

    iget-object v2, p0, Lbpl;->c:Ljava/lang/String;

    .line 62
    invoke-virtual {v1, v2}, Lbpm;->a(Ljava/lang/String;)Lbpm;

    move-result-object v1

    .line 63
    invoke-virtual {v1, v0}, Lbpm;->a(Z)Lbpm;

    move-result-object v0

    iget v1, p0, Lbpl;->g:I

    .line 64
    invoke-virtual {v0, v1}, Lbpm;->d(I)Lbpm;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lbpm;->P()Lcom/twitter/library/service/aa;

    move-result-object v0

    .line 67
    :cond_0
    invoke-virtual {p1, v0}, Lcom/twitter/library/service/aa;->a(Lcom/twitter/library/service/aa;)V

    .line 68
    return-void
.end method

.method public c(I)Lbpl;
    .locals 0

    .prologue
    .line 41
    iput p1, p0, Lbpl;->g:I

    .line 42
    return-object p0
.end method
