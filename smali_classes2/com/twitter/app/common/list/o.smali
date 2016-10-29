.class Lcom/twitter/app/common/list/o;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/app/common/list/TwitterListFragment;


# direct methods
.method constructor <init>(Lcom/twitter/app/common/list/TwitterListFragment;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/twitter/app/common/list/o;->a:Lcom/twitter/app/common/list/TwitterListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/twitter/app/common/list/o;->a:Lcom/twitter/app/common/list/TwitterListFragment;

    invoke-virtual {v0}, Lcom/twitter/app/common/list/TwitterListFragment;->aP()Lcvt;

    move-result-object v0

    .line 116
    if-nez p2, :cond_0

    .line 117
    const/4 v0, 0x0

    .line 124
    :goto_0
    iget-object v1, p0, Lcom/twitter/app/common/list/o;->a:Lcom/twitter/app/common/list/TwitterListFragment;

    invoke-static {v1}, Lcom/twitter/app/common/list/TwitterListFragment;->a(Lcom/twitter/app/common/list/TwitterListFragment;)Lcom/twitter/app/common/list/f;

    move-result-object v1

    .line 125
    invoke-virtual {v1}, Lcom/twitter/app/common/list/f;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 126
    invoke-virtual {v1, v0}, Lcom/twitter/app/common/list/f;->a(Lcmf;)V

    .line 134
    :goto_1
    return-void

    .line 118
    :cond_0
    instance-of v1, v0, Lcmw;

    if-eqz v1, :cond_1

    .line 119
    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcmw;

    invoke-interface {v0, p2}, Lcmw;->a(Landroid/database/Cursor;)Lcmf;

    move-result-object v0

    goto :goto_0

    .line 121
    :cond_1
    new-instance v0, Lcmb;

    invoke-direct {v0, p2}, Lcmb;-><init>(Landroid/database/Cursor;)V

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcmf;

    goto :goto_0

    .line 128
    :cond_2
    if-nez v0, :cond_3

    .line 129
    iget-object v0, p0, Lcom/twitter/app/common/list/o;->a:Lcom/twitter/app/common/list/TwitterListFragment;

    invoke-virtual {v0}, Lcom/twitter/app/common/list/TwitterListFragment;->r()V

    goto :goto_1

    .line 131
    :cond_3
    iget-object v1, p0, Lcom/twitter/app/common/list/o;->a:Lcom/twitter/app/common/list/TwitterListFragment;

    invoke-virtual {v1, v0}, Lcom/twitter/app/common/list/TwitterListFragment;->a(Lcmf;)V

    goto :goto_1
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/twitter/app/common/list/o;->a:Lcom/twitter/app/common/list/TwitterListFragment;

    invoke-virtual {v0}, Lcom/twitter/app/common/list/TwitterListFragment;->v_()Landroid/support/v4/content/Loader;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 105
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/app/common/list/o;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/twitter/app/common/list/o;->a:Lcom/twitter/app/common/list/TwitterListFragment;

    invoke-static {v0}, Lcom/twitter/app/common/list/TwitterListFragment;->a(Lcom/twitter/app/common/list/TwitterListFragment;)Lcom/twitter/app/common/list/f;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Lcom/twitter/app/common/list/f;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/list/f;->a(Lcmf;)V

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/twitter/app/common/list/o;->a:Lcom/twitter/app/common/list/TwitterListFragment;

    invoke-virtual {v0}, Lcom/twitter/app/common/list/TwitterListFragment;->aJ()V

    goto :goto_0
.end method
