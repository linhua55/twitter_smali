.class public Lccm;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 20
    .line 21
    invoke-static {}, Layj;->b()Layj;

    move-result-object v0

    sget-object v1, Laxz;->n:Laye;

    invoke-static {p1, v0, v1}, Layp;->a(Ljava/lang/String;Layj;Laye;)Layp;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Layp;->i()V

    .line 23
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 32
    .line 33
    invoke-static {}, Layj;->b()Layj;

    move-result-object v0

    sget-object v1, Laxz;->n:Laye;

    invoke-static {p1, v0, v1}, Layp;->a(Ljava/lang/String;Layj;Laye;)Layp;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Layp;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    invoke-virtual {v0}, Layp;->j()V

    .line 37
    :cond_0
    return-void
.end method
