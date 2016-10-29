.class public abstract Lcom/twitter/app/users/z;
.super Lcom/twitter/app/common/list/x;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Lcom/twitter/app/users/z",
        "<TU;>;>",
        "Lcom/twitter/app/common/list/x",
        "<TU;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/twitter/app/common/list/x;-><init>()V

    .line 178
    return-void
.end method

.method protected constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/twitter/app/common/list/x;-><init>(Landroid/os/Bundle;)V

    .line 182
    return-void
.end method

.method protected constructor <init>(Lcom/twitter/app/users/y;)V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/twitter/app/common/list/x;-><init>(Lcom/twitter/app/common/list/w;)V

    .line 186
    return-void
.end method


# virtual methods
.method public a(I)Lcom/twitter/app/users/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TU;"
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lcom/twitter/app/users/z;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "fast_follow"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 197
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/users/z;

    return-object v0
.end method

.method public a(J)Lcom/twitter/app/users/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TU;"
        }
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Lcom/twitter/app/users/z;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "tag"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 209
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/users/z;

    return-object v0
.end method

.method public a(Lcom/twitter/library/util/FriendshipCache;)Lcom/twitter/app/users/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/library/util/FriendshipCache;",
            ")TU;"
        }
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Lcom/twitter/app/users/z;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "friendship_cache"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 239
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/users/z;

    return-object v0
.end method

.method public a(Ljava/util/ArrayList;)Lcom/twitter/app/users/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;)TU;"
        }
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lcom/twitter/app/users/z;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "explore_email_users"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 251
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/users/z;

    return-object v0
.end method

.method public synthetic b()Lcom/twitter/app/common/list/w;
    .locals 1

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/twitter/app/users/z;->d()Lcom/twitter/app/users/y;

    move-result-object v0

    return-object v0
.end method

.method public b(J)Lcom/twitter/app/users/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TU;"
        }
    .end annotation

    .prologue
    .line 316
    iget-object v0, p0, Lcom/twitter/app/users/z;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "target_session_owner_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 317
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/users/z;

    return-object v0
.end method

.method public synthetic c()Lcom/twitter/app/common/base/f;
    .locals 1

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/twitter/app/users/z;->d()Lcom/twitter/app/users/y;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/twitter/app/users/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TU;"
        }
    .end annotation

    .prologue
    .line 292
    iget-object v0, p0, Lcom/twitter/app/users/z;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "follow_request_sender"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/users/z;

    return-object v0
.end method

.method public d()Lcom/twitter/app/users/y;
    .locals 2

    .prologue
    .line 329
    new-instance v0, Lcom/twitter/app/users/y;

    iget-object v1, p0, Lcom/twitter/app/users/z;->a:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Lcom/twitter/app/users/y;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcom/twitter/app/users/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TU;"
        }
    .end annotation

    .prologue
    .line 310
    iget-object v0, p0, Lcom/twitter/app/users/z;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "scribe_page"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/users/z;

    return-object v0
.end method

.method public d(Z)Lcom/twitter/app/users/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TU;"
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lcom/twitter/app/users/z;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "follow"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 191
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/users/z;

    return-object v0
.end method

.method public e(Z)Lcom/twitter/app/users/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TU;"
        }
    .end annotation

    .prologue
    .line 220
    iget-object v0, p0, Lcom/twitter/app/users/z;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "follow_flow_people_button_intent"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 221
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/users/z;

    return-object v0
.end method

.method public f(Z)Lcom/twitter/app/users/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TU;"
        }
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Lcom/twitter/app/users/z;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "follow"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 227
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/users/z;

    return-object v0
.end method

.method public g(I)Lcom/twitter/app/users/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TU;"
        }
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Lcom/twitter/app/users/z;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 203
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/users/z;

    return-object v0
.end method

.method public h(I)Lcom/twitter/app/users/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TU;"
        }
    .end annotation

    .prologue
    .line 256
    iget-object v0, p0, Lcom/twitter/app/users/z;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "limit"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 257
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/users/z;

    return-object v0
.end method

.method public j(Z)Lcom/twitter/app/users/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TU;"
        }
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Lcom/twitter/app/users/z;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "hide_contacts_import_cta"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 233
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/users/z;

    return-object v0
.end method

.method public k(Z)Lcom/twitter/app/users/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TU;"
        }
    .end annotation

    .prologue
    .line 274
    iget-object v0, p0, Lcom/twitter/app/users/z;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "fetch_always"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 275
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/users/z;

    return-object v0
.end method

.method public l(Z)Lcom/twitter/app/users/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TU;"
        }
    .end annotation

    .prologue
    .line 280
    iget-object v0, p0, Lcom/twitter/app/users/z;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "hide_bio"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 281
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/users/z;

    return-object v0
.end method

.method public m(Z)Lcom/twitter/app/users/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TU;"
        }
    .end annotation

    .prologue
    .line 286
    iget-object v0, p0, Lcom/twitter/app/users/z;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "is_hidden"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 287
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/users/z;

    return-object v0
.end method
