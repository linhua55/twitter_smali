.class public Lcom/twitter/app/users/y;
.super Lcom/twitter/app/common/list/w;
.source "Twttr"


# direct methods
.method protected constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/twitter/app/common/list/w;-><init>(Landroid/os/Bundle;)V

    .line 61
    return-void
.end method

.method public static b(Landroid/os/Bundle;)Lcom/twitter/app/users/y;
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/twitter/app/users/y;

    invoke-direct {v0, p0}, Lcom/twitter/app/users/y;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public B()Z
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/twitter/app/users/y;->b:Landroid/os/Bundle;

    const-string/jumbo v1, "follow_flow_people_button_intent"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public C()Z
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/twitter/app/users/y;->b:Landroid/os/Bundle;

    const-string/jumbo v1, "find_friends"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public D()Z
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/twitter/app/users/y;->b:Landroid/os/Bundle;

    const-string/jumbo v1, "hide_contacts_import_cta"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public E()Lcom/twitter/library/util/FriendshipCache;
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/twitter/app/users/y;->b:Landroid/os/Bundle;

    const-string/jumbo v1, "friendship_cache"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/util/FriendshipCache;

    return-object v0
.end method

.method public F()Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/twitter/app/users/y;->b:Landroid/os/Bundle;

    const-string/jumbo v1, "category"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public G()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/twitter/app/users/y;->b:Landroid/os/Bundle;

    const-string/jumbo v1, "explore_email_users"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public H()I
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/twitter/app/users/y;->b:Landroid/os/Bundle;

    const-string/jumbo v1, "limit"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public I()Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/twitter/app/users/y;->b:Landroid/os/Bundle;

    const-string/jumbo v1, "owner_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public J()I
    .locals 3

    .prologue
    .line 134
    iget-object v0, p0, Lcom/twitter/app/users/y;->b:Landroid/os/Bundle;

    const-string/jumbo v1, "category_position"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public K()Z
    .locals 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/twitter/app/users/y;->b:Landroid/os/Bundle;

    const-string/jumbo v1, "fetch_always"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public L()Z
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/twitter/app/users/y;->b:Landroid/os/Bundle;

    const-string/jumbo v1, "hide_bio"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public M()Z
    .locals 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/twitter/app/users/y;->b:Landroid/os/Bundle;

    const-string/jumbo v1, "is_hidden"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public N()Ljava/lang/String;
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/twitter/app/users/y;->b:Landroid/os/Bundle;

    const-string/jumbo v1, "follow_request_sender"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public O()Z
    .locals 3

    .prologue
    .line 155
    iget-object v0, p0, Lcom/twitter/app/users/y;->b:Landroid/os/Bundle;

    const-string/jumbo v1, "disable_toast_error_messages"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public P()Z
    .locals 3

    .prologue
    .line 159
    iget-object v0, p0, Lcom/twitter/app/users/y;->b:Landroid/os/Bundle;

    const-string/jumbo v1, "show_category_name"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public Q()Ljava/lang/String;
    .locals 3

    .prologue
    .line 164
    iget-object v0, p0, Lcom/twitter/app/users/y;->b:Landroid/os/Bundle;

    const-string/jumbo v1, "scribe_page"

    const-string/jumbo v2, "unknown"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public R()J
    .locals 4

    .prologue
    .line 168
    iget-object v0, p0, Lcom/twitter/app/users/y;->b:Landroid/os/Bundle;

    const-string/jumbo v1, "target_session_owner_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic e()Lcom/twitter/app/common/list/x;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/twitter/app/users/y;->k()Lcom/twitter/app/users/z;

    move-result-object v0

    return-object v0
.end method

.method public synthetic f()Lcom/twitter/app/common/base/g;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/twitter/app/users/y;->k()Lcom/twitter/app/users/z;

    move-result-object v0

    return-object v0
.end method

.method public k()Lcom/twitter/app/users/z;
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/twitter/app/users/aa;

    invoke-direct {v0, p0}, Lcom/twitter/app/users/aa;-><init>(Lcom/twitter/app/users/y;)V

    return-object v0
.end method

.method public l()Z
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/twitter/app/users/y;->b:Landroid/os/Bundle;

    const-string/jumbo v1, "follow"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public m()I
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/twitter/app/users/y;->b:Landroid/os/Bundle;

    const-string/jumbo v1, "fast_follow"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public n()I
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/twitter/app/users/y;->b:Landroid/os/Bundle;

    const-string/jumbo v1, "type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public o()J
    .locals 4

    .prologue
    .line 89
    iget-object v0, p0, Lcom/twitter/app/users/y;->b:Landroid/os/Bundle;

    const-string/jumbo v1, "tag"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public p()[J
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/twitter/app/users/y;->b:Landroid/os/Bundle;

    const-string/jumbo v1, "user_ids"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    return-object v0
.end method
