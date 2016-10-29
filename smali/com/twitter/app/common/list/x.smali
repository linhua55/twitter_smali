.class public abstract Lcom/twitter/app/common/list/x;
.super Lcom/twitter/app/common/base/g;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/twitter/app/common/list/x",
        "<TT;>;>",
        "Lcom/twitter/app/common/base/g",
        "<TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/twitter/app/common/base/g;-><init>()V

    .line 92
    return-void
.end method

.method protected constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/twitter/app/common/base/g;-><init>(Landroid/os/Bundle;)V

    .line 96
    return-void
.end method

.method protected constructor <init>(Lcom/twitter/app/common/list/w;)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/twitter/app/common/base/g;-><init>(Lcom/twitter/app/common/base/f;)V

    .line 100
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/library/scribe/TwitterScribeItem;)Lcom/twitter/app/common/list/x;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/library/scribe/TwitterScribeItem;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/twitter/app/common/list/x;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "scribe_item"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 159
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/x;

    return-object v0
.end method

.method public b()Lcom/twitter/app/common/list/w;
    .locals 2

    .prologue
    .line 165
    new-instance v0, Lcom/twitter/app/common/list/w;

    iget-object v1, p0, Lcom/twitter/app/common/list/x;->a:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Lcom/twitter/app/common/list/w;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public b(I)Lcom/twitter/app/common/list/x;
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/twitter/app/common/list/x;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "empty_title_res_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 123
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/x;

    return-object v0
.end method

.method public synthetic c()Lcom/twitter/app/common/base/f;
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/twitter/app/common/list/x;->b()Lcom/twitter/app/common/list/w;

    move-result-object v0

    return-object v0
.end method

.method public c(I)Lcom/twitter/app/common/list/x;
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/twitter/app/common/list/x;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "empty_description_res_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 129
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/x;

    return-object v0
.end method

.method public c(J)Lcom/twitter/app/common/list/x;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/twitter/app/common/list/x;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "owner_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 111
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/x;

    return-object v0
.end method

.method public d(I)Lcom/twitter/app/common/list/x;
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/twitter/app/common/list/x;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "list_inflated_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 135
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/x;

    return-object v0
.end method

.method public e(I)Lcom/twitter/app/common/list/x;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/twitter/app/common/list/x;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "shim_height"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 141
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/x;

    return-object v0
.end method

.method public f(I)Lcom/twitter/app/common/list/x;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/twitter/app/common/list/x;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "list_bottom_extra_padding"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 147
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/x;

    return-object v0
.end method

.method public h(Z)Lcom/twitter/app/common/list/x;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/twitter/app/common/list/x;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "is_refreshable"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 105
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/x;

    return-object v0
.end method

.method public i(Z)Lcom/twitter/app/common/list/x;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/twitter/app/common/list/x;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "is_horizontal_padding_enabled"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 153
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/x;

    return-object v0
.end method
