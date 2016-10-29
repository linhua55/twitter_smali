.class public abstract Lcom/twitter/library/widget/renderablecontent/a;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/library/widget/renderablecontent/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ContentSource:",
        "Ljava/lang/Object;",
        "ContentContainer::",
        "Lcom/twitter/library/widget/renderablecontent/c;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/twitter/library/widget/renderablecontent/e;"
    }
.end annotation


# instance fields
.field public final h:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TContentSource;"
        }
    .end annotation
.end field

.field public final i:Lcom/twitter/library/scribe/TwitterScribeAssociation;

.field public final j:Lcom/twitter/library/scribe/TwitterScribeAssociation;

.field public final k:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public l:Lcom/twitter/library/widget/renderablecontent/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TContentContainer;"
        }
    .end annotation
.end field

.field protected m:Z

.field protected final n:Lcom/twitter/library/widget/renderablecontent/DisplayMode;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/Object;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "TContentSource;",
            "Lcom/twitter/library/widget/renderablecontent/DisplayMode;",
            "Lcom/twitter/library/scribe/TwitterScribeAssociation;",
            "Lcom/twitter/library/scribe/TwitterScribeAssociation;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/twitter/library/widget/renderablecontent/a;->k:Ljava/lang/ref/WeakReference;

    .line 37
    iput-object p2, p0, Lcom/twitter/library/widget/renderablecontent/a;->h:Ljava/lang/Object;

    .line 38
    iput-object p3, p0, Lcom/twitter/library/widget/renderablecontent/a;->n:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    .line 39
    iput-object p4, p0, Lcom/twitter/library/widget/renderablecontent/a;->i:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 40
    iput-object p5, p0, Lcom/twitter/library/widget/renderablecontent/a;->j:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 41
    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/app/Activity;)Lcom/twitter/library/widget/renderablecontent/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")TContentContainer;"
        }
    .end annotation
.end method

.method protected abstract a()Ljava/lang/Object;
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/twitter/library/widget/renderablecontent/a;->l:Lcom/twitter/library/widget/renderablecontent/c;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/twitter/library/widget/renderablecontent/a;->l:Lcom/twitter/library/widget/renderablecontent/c;

    invoke-interface {v0, p1}, Lcom/twitter/library/widget/renderablecontent/c;->a(Landroid/content/res/Configuration;)V

    .line 145
    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 134
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/twitter/library/widget/renderablecontent/a;->l:Lcom/twitter/library/widget/renderablecontent/c;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/twitter/library/widget/renderablecontent/a;->l:Lcom/twitter/library/widget/renderablecontent/c;

    invoke-interface {v0, p1}, Lcom/twitter/library/widget/renderablecontent/c;->a(Z)V

    .line 108
    :cond_0
    return-void
.end method

.method public au_()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/twitter/library/widget/renderablecontent/a;->l:Lcom/twitter/library/widget/renderablecontent/c;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/twitter/library/widget/renderablecontent/a;->l:Lcom/twitter/library/widget/renderablecontent/c;

    invoke-interface {v0}, Lcom/twitter/library/widget/renderablecontent/c;->ap_()V

    .line 101
    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/twitter/library/widget/renderablecontent/a;->bi_()V

    .line 113
    iget-object v0, p0, Lcom/twitter/library/widget/renderablecontent/a;->l:Lcom/twitter/library/widget/renderablecontent/c;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/twitter/library/widget/renderablecontent/a;->l:Lcom/twitter/library/widget/renderablecontent/c;

    invoke-interface {v0, p1}, Lcom/twitter/library/widget/renderablecontent/c;->b(Z)V

    .line 116
    :cond_0
    return-void
.end method

.method public bh_()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/twitter/library/widget/renderablecontent/a;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 46
    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {p0, v0}, Lcom/twitter/library/widget/renderablecontent/a;->a(Landroid/app/Activity;)Lcom/twitter/library/widget/renderablecontent/c;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/library/widget/renderablecontent/a;->l:Lcom/twitter/library/widget/renderablecontent/c;

    .line 48
    iget-object v1, p0, Lcom/twitter/library/widget/renderablecontent/a;->l:Lcom/twitter/library/widget/renderablecontent/c;

    if-eqz v1, :cond_1

    .line 49
    instance-of v1, v0, Lcom/twitter/library/client/s;

    if-eqz v1, :cond_0

    .line 50
    check-cast v0, Lcom/twitter/library/client/s;

    invoke-interface {v0, p0}, Lcom/twitter/library/client/s;->a(Lcom/twitter/library/client/q;)V

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/widget/renderablecontent/a;->l:Lcom/twitter/library/widget/renderablecontent/c;

    invoke-virtual {p0}, Lcom/twitter/library/widget/renderablecontent/a;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/twitter/library/widget/renderablecontent/c;->a(Ljava/lang/Object;)V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/library/widget/renderablecontent/a;->m:Z

    .line 57
    :cond_1
    return-void
.end method

.method public bi_()V
    .locals 2

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/twitter/library/widget/renderablecontent/a;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/widget/renderablecontent/a;->l:Lcom/twitter/library/widget/renderablecontent/c;

    if-eqz v0, :cond_0

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/library/widget/renderablecontent/a;->m:Z

    .line 76
    iget-object v0, p0, Lcom/twitter/library/widget/renderablecontent/a;->l:Lcom/twitter/library/widget/renderablecontent/c;

    invoke-interface {v0}, Lcom/twitter/library/widget/renderablecontent/c;->a()V

    .line 78
    iget-object v0, p0, Lcom/twitter/library/widget/renderablecontent/a;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 79
    instance-of v1, v0, Lcom/twitter/library/client/s;

    if-eqz v1, :cond_0

    .line 80
    check-cast v0, Lcom/twitter/library/client/s;

    invoke-interface {v0, p0}, Lcom/twitter/library/client/s;->b(Lcom/twitter/library/client/q;)V

    .line 83
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/twitter/library/widget/renderablecontent/a;->l:Lcom/twitter/library/widget/renderablecontent/c;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/twitter/library/widget/renderablecontent/a;->l:Lcom/twitter/library/widget/renderablecontent/c;

    invoke-interface {v0}, Lcom/twitter/library/widget/renderablecontent/c;->b()V

    .line 70
    :cond_0
    return-void
.end method

.method public d()Landroid/view/View;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/twitter/library/widget/renderablecontent/a;->l:Lcom/twitter/library/widget/renderablecontent/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/widget/renderablecontent/a;->l:Lcom/twitter/library/widget/renderablecontent/c;

    invoke-interface {v0}, Lcom/twitter/library/widget/renderablecontent/c;->e()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/twitter/library/widget/renderablecontent/a;->l:Lcom/twitter/library/widget/renderablecontent/c;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/twitter/library/widget/renderablecontent/a;->l:Lcom/twitter/library/widget/renderablecontent/c;

    invoke-interface {v0}, Lcom/twitter/library/widget/renderablecontent/c;->ao_()V

    .line 123
    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/twitter/library/widget/renderablecontent/a;->l:Lcom/twitter/library/widget/renderablecontent/c;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/twitter/library/widget/renderablecontent/a;->l:Lcom/twitter/library/widget/renderablecontent/c;

    invoke-interface {v0}, Lcom/twitter/library/widget/renderablecontent/c;->aq_()V

    .line 130
    :cond_0
    return-void
.end method

.method public h()Lcom/twitter/library/widget/renderablecontent/c;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/twitter/library/widget/renderablecontent/a;->l:Lcom/twitter/library/widget/renderablecontent/c;

    return-object v0
.end method
