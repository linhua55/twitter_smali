.class public abstract Lcom/twitter/library/client/AbsFragment;
.super Lcom/twitter/app/common/inject/InjectedFragment;
.source "Twttr"


# instance fields
.field private a:Lcom/twitter/library/client/as;

.field protected aa:J

.field protected ab:Lcom/twitter/library/client/bd;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/twitter/app/common/inject/InjectedFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/library/service/x;II)V
    .locals 0
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 114
    return-void
.end method

.method protected a_(I)Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method protected b(Lcom/twitter/library/service/x;II)V
    .locals 0
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 105
    return-void
.end method

.method protected bd()Z
    .locals 4

    .prologue
    .line 71
    iget-object v0, p0, Lcom/twitter/library/client/AbsFragment;->a:Lcom/twitter/library/client/as;

    iget-wide v2, p0, Lcom/twitter/library/client/AbsFragment;->aa:J

    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/client/as;->a(J)Z

    move-result v0

    return v0
.end method

.method protected be()Ljava/lang/Iterable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/twitter/library/client/ba;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/twitter/library/client/AbsFragment;->a:Lcom/twitter/library/client/as;

    iget-wide v2, p0, Lcom/twitter/library/client/AbsFragment;->aa:J

    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/client/as;->b(J)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method protected final bf()Lcom/twitter/library/client/Session;
    .locals 1

    .prologue
    .line 118
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    return-object v0
.end method

.method protected final c(Lcom/twitter/library/service/x;II)Z
    .locals 7

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/twitter/library/client/AbsFragment;->t_()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p3}, Lcom/twitter/library/client/AbsFragment;->a_(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/library/client/AbsFragment;->a:Lcom/twitter/library/client/as;

    iget-wide v2, p0, Lcom/twitter/library/client/AbsFragment;->aa:J

    move-object v4, p1

    move v5, p2

    move v6, p3

    .line 91
    invoke-virtual/range {v1 .. v6}, Lcom/twitter/library/client/as;->a(JLcom/twitter/library/service/x;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/library/client/AbsFragment;->b(Lcom/twitter/library/service/x;II)V

    .line 93
    const/4 v0, 0x1

    .line 95
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected l(I)Z
    .locals 4

    .prologue
    .line 67
    iget-object v0, p0, Lcom/twitter/library/client/AbsFragment;->a:Lcom/twitter/library/client/as;

    iget-wide v2, p0, Lcom/twitter/library/client/AbsFragment;->aa:J

    invoke-virtual {v0, v2, v3, p1}, Lcom/twitter/library/client/as;->a(JI)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/twitter/library/client/AbsFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/library/client/AbsFragment;->aa:J

    .line 36
    invoke-virtual {p0}, Lcom/twitter/library/client/AbsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/client/AbsFragment;->ab:Lcom/twitter/library/client/bd;

    .line 38
    iget-object v0, p0, Lcom/twitter/library/client/AbsFragment;->ab:Lcom/twitter/library/client/bd;

    invoke-static {p0, v0}, Lcom/twitter/library/client/as;->a(Lcom/twitter/app/common/util/s;Lcom/twitter/library/client/bd;)Lcom/twitter/library/client/as;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/client/AbsFragment;->a:Lcom/twitter/library/client/as;

    .line 39
    iget-object v0, p0, Lcom/twitter/library/client/AbsFragment;->a:Lcom/twitter/library/client/as;

    new-instance v1, Lcom/twitter/library/client/a;

    invoke-direct {v1, p0}, Lcom/twitter/library/client/a;-><init>(Lcom/twitter/library/client/AbsFragment;)V

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/as;->a(Lcom/twitter/library/client/aw;)V

    .line 49
    invoke-super {p0, p1}, Lcom/twitter/app/common/inject/InjectedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 50
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/twitter/library/client/AbsFragment;->a:Lcom/twitter/library/client/as;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/as;->a(Lcom/twitter/library/client/aw;)V

    .line 63
    invoke-super {p0}, Lcom/twitter/app/common/inject/InjectedFragment;->onDestroy()V

    .line 64
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 54
    invoke-super {p0}, Lcom/twitter/app/common/inject/InjectedFragment;->onStart()V

    .line 57
    iget-object v0, p0, Lcom/twitter/library/client/AbsFragment;->a:Lcom/twitter/library/client/as;

    iget-wide v2, p0, Lcom/twitter/library/client/AbsFragment;->aa:J

    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/client/as;->c(J)V

    .line 58
    return-void
.end method
