.class Lcom/twitter/app/common/inject/q;
.super Lcom/twitter/app/common/util/j;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/app/common/inject/o;


# direct methods
.method constructor <init>(Lcom/twitter/app/common/inject/o;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/twitter/app/common/inject/q;->a:Lcom/twitter/app/common/inject/o;

    invoke-direct {p0}, Lcom/twitter/app/common/util/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/Fragment;)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/twitter/app/common/inject/q;->a:Lcom/twitter/app/common/inject/o;

    invoke-virtual {v0}, Lcom/twitter/app/common/inject/o;->a()V

    .line 100
    return-void
.end method

.method public a(Landroid/support/v4/app/Fragment;Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/twitter/app/common/inject/q;->a:Lcom/twitter/app/common/inject/o;

    invoke-virtual {v0, p2}, Lcom/twitter/app/common/inject/o;->a(Landroid/content/res/Configuration;)V

    .line 131
    return-void
.end method

.method public a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/twitter/app/common/inject/q;->a:Lcom/twitter/app/common/inject/o;

    invoke-virtual {v0, p2}, Lcom/twitter/app/common/inject/o;->a(Landroid/os/Bundle;)V

    .line 120
    return-void
.end method

.method public b(Landroid/support/v4/app/Fragment;)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/twitter/app/common/inject/q;->a:Lcom/twitter/app/common/inject/o;

    invoke-virtual {v0}, Lcom/twitter/app/common/inject/o;->b()V

    .line 105
    return-void
.end method

.method public c(Landroid/support/v4/app/Fragment;)V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/twitter/app/common/inject/q;->a:Lcom/twitter/app/common/inject/o;

    invoke-virtual {v0}, Lcom/twitter/app/common/inject/o;->c()V

    .line 110
    return-void
.end method

.method public d(Landroid/support/v4/app/Fragment;)V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/twitter/app/common/inject/q;->a:Lcom/twitter/app/common/inject/o;

    invoke-virtual {v0}, Lcom/twitter/app/common/inject/o;->d()V

    .line 115
    return-void
.end method

.method public e(Landroid/support/v4/app/Fragment;)V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/twitter/app/common/inject/q;->a:Lcom/twitter/app/common/inject/o;

    invoke-virtual {v0}, Lcom/twitter/app/common/inject/o;->e()V

    .line 125
    invoke-static {p1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/util/u;

    invoke-interface {v0, p0}, Lcom/twitter/app/common/util/u;->a(Lcom/twitter/app/common/util/l;)V

    .line 126
    return-void
.end method
