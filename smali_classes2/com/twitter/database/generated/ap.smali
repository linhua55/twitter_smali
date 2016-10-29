.class final Lcom/twitter/database/generated/ap;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbcc;


# instance fields
.field private final a:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Landroid/content/ContentValues;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/twitter/database/generated/ap;->a:Landroid/content/ContentValues;

    .line 48
    return-void
.end method


# virtual methods
.method public a(I)Lbcc;
    .locals 3

    .prologue
    .line 132
    iget-object v0, p0, Lcom/twitter/database/generated/ap;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "icon_identifier"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 133
    return-object p0
.end method

.method public a(J)Lbcc;
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/twitter/database/generated/ap;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "generic_activity_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 54
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lbcc;
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/twitter/database/generated/ap;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "hash_key"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-object p0
.end method

.method public a(Ljava/util/List;)Lbcc;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/t;",
            ">;)",
            "Lbcc;"
        }
    .end annotation

    .prologue
    .line 88
    if-nez p1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/twitter/database/generated/ap;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "display_text_bold_index_list"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 93
    :goto_0
    return-object p0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/twitter/database/generated/ap;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "display_text_bold_index_list"

    sget-object v2, Lcom/twitter/database/generated/a;->b:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v2}, Lcom/twitter/util/serialization/ag;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public b(J)Lbcc;
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/twitter/database/generated/ap;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "created_at"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 61
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lbcc;
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/twitter/database/generated/ap;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "generic_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-object p0
.end method

.method public b(Ljava/util/List;)Lbcc;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/t;",
            ">;)",
            "Lbcc;"
        }
    .end annotation

    .prologue
    .line 110
    if-nez p1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/twitter/database/generated/ap;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "social_proof_bold_index_list"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 115
    :goto_0
    return-object p0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/twitter/database/generated/ap;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "social_proof_bold_index_list"

    sget-object v2, Lcom/twitter/database/generated/a;->b:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v2}, Lcom/twitter/util/serialization/ag;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Lbcc;
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/twitter/database/generated/ap;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "display_text"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-object p0
.end method

.method public c(Ljava/util/List;)Lbcc;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lbcc;"
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lcom/twitter/database/generated/ap;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "facepile_user_ids"

    sget-object v2, Lcom/twitter/database/generated/a;->c:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v2}, Lcom/twitter/util/serialization/ag;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 140
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lbcc;
    .locals 2

    .prologue
    .line 99
    if-nez p1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/twitter/database/generated/ap;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "social_proof_text"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 104
    :goto_0
    return-object p0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/twitter/database/generated/ap;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "social_proof_text"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public d(Ljava/util/List;)Lbcc;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lbcc;"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/twitter/database/generated/ap;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "context_tweet_ids"

    sget-object v2, Lcom/twitter/database/generated/a;->c:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v2}, Lcom/twitter/util/serialization/ag;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 147
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lbcc;
    .locals 2

    .prologue
    .line 121
    if-nez p1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/twitter/database/generated/ap;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "dismiss_type"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 126
    :goto_0
    return-object p0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/twitter/database/generated/ap;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "dismiss_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public e(Ljava/util/List;)Lbcc;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lbcc;"
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lcom/twitter/database/generated/ap;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "context_user_ids"

    sget-object v2, Lcom/twitter/database/generated/a;->c:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v2}, Lcom/twitter/util/serialization/ag;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 154
    return-object p0
.end method

.method public f(Ljava/lang/String;)Lbcc;
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/twitter/database/generated/ap;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "tap_through_action"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-object p0
.end method
