.class public Lcom/twitter/app/common/list/w;
.super Lcom/twitter/app/common/base/f;
.source "Twttr"


# static fields
.field public static c:Lcom/twitter/app/common/list/w;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Lcom/twitter/app/common/list/w;

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Lcom/twitter/app/common/list/w;-><init>(Landroid/os/Bundle;)V

    sput-object v0, Lcom/twitter/app/common/list/w;->c:Lcom/twitter/app/common/list/w;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/twitter/app/common/base/f;-><init>(Landroid/os/Bundle;)V

    .line 33
    return-void
.end method

.method public static d(Landroid/os/Bundle;)Lcom/twitter/app/common/list/w;
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/twitter/app/common/list/w;

    invoke-direct {v0, p0}, Lcom/twitter/app/common/list/w;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public A()Lcom/twitter/library/scribe/TwitterScribeItem;
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/twitter/app/common/list/w;->b:Landroid/os/Bundle;

    const-string/jumbo v1, "scribe_item"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeItem;

    return-object v0
.end method

.method public a(J)J
    .locals 3

    .prologue
    .line 51
    iget-object v0, p0, Lcom/twitter/app/common/list/w;->b:Landroid/os/Bundle;

    const-string/jumbo v1, "owner_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public e()Lcom/twitter/app/common/list/x;
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/twitter/app/common/list/y;

    invoke-direct {v0, p0}, Lcom/twitter/app/common/list/y;-><init>(Lcom/twitter/app/common/list/w;)V

    return-object v0
.end method

.method public synthetic f()Lcom/twitter/app/common/base/g;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/twitter/app/common/list/w;->e()Lcom/twitter/app/common/list/x;

    move-result-object v0

    return-object v0
.end method

.method public s()Z
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/twitter/app/common/list/w;->b:Landroid/os/Bundle;

    const-string/jumbo v1, "is_refreshable"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public t()I
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/twitter/app/common/list/w;->b:Landroid/os/Bundle;

    const-string/jumbo v1, "list_choice_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public u()I
    .locals 3
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/twitter/app/common/list/w;->b:Landroid/os/Bundle;

    const-string/jumbo v1, "empty_title_res_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public v()I
    .locals 3
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/twitter/app/common/list/w;->b:Landroid/os/Bundle;

    const-string/jumbo v1, "empty_description_res_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public w()I
    .locals 3
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/twitter/app/common/list/w;->b:Landroid/os/Bundle;

    const-string/jumbo v1, "list_inflated_id"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public x()I
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/twitter/app/common/list/w;->b:Landroid/os/Bundle;

    const-string/jumbo v1, "shim_height"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public y()I
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/twitter/app/common/list/w;->b:Landroid/os/Bundle;

    const-string/jumbo v1, "list_bottom_extra_padding"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public z()Z
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/twitter/app/common/list/w;->b:Landroid/os/Bundle;

    const-string/jumbo v1, "is_horizontal_padding_enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
