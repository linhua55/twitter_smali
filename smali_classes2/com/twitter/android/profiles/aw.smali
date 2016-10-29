.class public Lcom/twitter/android/profiles/aw;
.super Lcom/twitter/android/profiles/al;
.source "Twttr"


# instance fields
.field private final f:Lcom/twitter/android/metrics/d;

.field private final g:Z


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Lcom/twitter/library/client/bk;Lcom/twitter/android/profiles/ao;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/android/metrics/d;Z)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/twitter/android/profiles/al;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/twitter/library/client/bk;Lcom/twitter/android/profiles/ao;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 36
    iput-object p5, p0, Lcom/twitter/android/profiles/aw;->f:Lcom/twitter/android/metrics/d;

    .line 37
    iput-boolean p6, p0, Lcom/twitter/android/profiles/aw;->g:Z

    .line 38
    return-void
.end method


# virtual methods
.method public b()Lcom/twitter/android/mq;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 67
    iget-object v0, p0, Lcom/twitter/android/profiles/aw;->e:Lcom/twitter/android/mq;

    if-nez v0, :cond_2

    .line 68
    invoke-static {}, Lcom/twitter/android/ip;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/profiles/aw;->a:Lcom/twitter/library/client/Session;

    .line 69
    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    const v2, 0x7f0200bd

    .line 71
    :goto_0
    new-instance v0, Lcom/twitter/android/mv;

    iget-object v1, p0, Lcom/twitter/android/profiles/aw;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/twitter/android/profiles/aw;->b:Lcom/twitter/android/profiles/ao;

    .line 72
    invoke-virtual {v3}, Lcom/twitter/android/profiles/ao;->c()Lcom/twitter/library/util/FriendshipCache;

    move-result-object v4

    const/4 v5, 0x1

    iget-boolean v7, p0, Lcom/twitter/android/profiles/aw;->g:Z

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/twitter/android/mv;-><init>(Landroid/content/Context;ILcom/twitter/library/widget/e;Lcom/twitter/library/util/FriendshipCache;ZZZ)V

    .line 74
    invoke-virtual {v0, p0}, Lcom/twitter/android/mv;->a(Lcom/twitter/android/kn;)V

    .line 75
    const/4 v5, 0x3

    .line 77
    iget-boolean v1, p0, Lcom/twitter/android/profiles/aw;->g:Z

    if-eqz v1, :cond_1

    .line 78
    const/16 v5, 0x23

    .line 80
    :cond_1
    new-instance v1, Lcom/twitter/android/mq;

    iget-object v2, p0, Lcom/twitter/android/profiles/aw;->c:Landroid/content/Context;

    .line 81
    invoke-virtual {p0}, Lcom/twitter/android/profiles/aw;->d()I

    move-result v4

    .line 82
    invoke-static {}, Lcom/twitter/android/revenue/z;->m()Z

    move-result v6

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lcom/twitter/android/mq;-><init>(Landroid/content/Context;Lcom/twitter/android/mv;IIZ)V

    iput-object v1, p0, Lcom/twitter/android/profiles/aw;->e:Lcom/twitter/android/mq;

    .line 83
    iget-object v0, p0, Lcom/twitter/android/profiles/aw;->e:Lcom/twitter/android/mq;

    iget-object v1, p0, Lcom/twitter/android/profiles/aw;->b:Lcom/twitter/android/profiles/ao;

    invoke-virtual {v1}, Lcom/twitter/android/profiles/ao;->a()Lcom/twitter/model/core/TwitterUser;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/profiles/aw;->b:Lcom/twitter/android/profiles/ao;

    .line 84
    invoke-virtual {v2}, Lcom/twitter/android/profiles/ao;->b()Z

    move-result v2

    .line 83
    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/mq;->a(Lcom/twitter/model/core/TwitterUser;Z)V

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/profiles/aw;->e:Lcom/twitter/android/mq;

    return-object v0

    :cond_3
    move v2, v6

    .line 69
    goto :goto_0
.end method

.method protected c()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/twitter/library/provider/dk;->x:Landroid/net/Uri;

    return-object v0
.end method

.method protected d()I
    .locals 1

    .prologue
    .line 48
    const/16 v0, 0xa

    return v0
.end method

.method protected e()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x3

    return v0
.end method

.method protected f()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x6

    return v0
.end method

.method protected g()I
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x2

    return v0
.end method

.method protected h()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method protected i()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method protected j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    const-string/jumbo v0, "similar_to"

    return-object v0
.end method

.method protected l()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/twitter/android/profiles/aw;->f:Lcom/twitter/android/metrics/d;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/twitter/android/profiles/aw;->f:Lcom/twitter/android/metrics/d;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/twitter/android/metrics/d;->a(I)V

    .line 121
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/twitter/android/profiles/aw;->e:Lcom/twitter/android/mq;

    invoke-virtual {v0, p3}, Lcom/twitter/android/mq;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/twitter/android/profiles/aw;->e:Lcom/twitter/android/mq;

    invoke-virtual {v0, p3}, Lcom/twitter/android/mq;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 97
    if-eqz v0, :cond_0

    .line 98
    iget-object v1, p0, Lcom/twitter/android/profiles/aw;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/twitter/android/profiles/al;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0
.end method
