.class final Lcom/twitter/database/generated/v;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/database/schema/f;


# instance fields
.field private final a:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Landroid/content/ContentValues;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/twitter/database/generated/v;->a:Landroid/content/ContentValues;

    .line 53
    return-void
.end method


# virtual methods
.method public a(I)Lcom/twitter/database/schema/f;
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/twitter/database/generated/v;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "sending_state"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 87
    return-object p0
.end method

.method public a(J)Lcom/twitter/database/schema/f;
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/twitter/database/generated/v;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "in_r_status_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 73
    return-object p0
.end method

.method public a(Lclp;)Lcom/twitter/database/schema/f;
    .locals 3

    .prologue
    .line 169
    if-nez p1, :cond_0

    .line 170
    iget-object v0, p0, Lcom/twitter/database/generated/v;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "poll"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 174
    :goto_0
    return-object p0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/twitter/database/generated/v;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "poll"

    sget-object v2, Lclp;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v2}, Lcom/twitter/util/serialization/ag;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public a(Lcom/twitter/model/core/ay;)Lcom/twitter/database/schema/f;
    .locals 3

    .prologue
    .line 107
    if-nez p1, :cond_0

    .line 108
    iget-object v0, p0, Lcom/twitter/database/generated/v;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "quoted_tweet_data"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 112
    :goto_0
    return-object p0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/twitter/database/generated/v;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "quoted_tweet_data"

    sget-object v2, Lcom/twitter/model/core/ay;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v2}, Lcom/twitter/util/serialization/ag;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public a(Lcom/twitter/model/geo/g;)Lcom/twitter/database/schema/f;
    .locals 3

    .prologue
    .line 147
    if-nez p1, :cond_0

    .line 148
    iget-object v0, p0, Lcom/twitter/database/generated/v;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "geo_tag"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 152
    :goto_0
    return-object p0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/twitter/database/generated/v;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "geo_tag"

    sget-object v2, Lcom/twitter/model/geo/g;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v2}, Lcom/twitter/util/serialization/ag;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public a(Lcom/twitter/model/timeline/cx;)Lcom/twitter/database/schema/f;
    .locals 3

    .prologue
    .line 198
    if-nez p1, :cond_0

    .line 199
    iget-object v0, p0, Lcom/twitter/database/generated/v;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "tweet_preview_info"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 203
    :goto_0
    return-object p0

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/twitter/database/generated/v;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "tweet_preview_info"

    sget-object v2, Lcom/twitter/model/timeline/cx;->a:Lcom/twitter/util/serialization/ae;

    invoke-static {p1, v2}, Lcom/twitter/util/serialization/ag;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public a(Lcss;)Lcom/twitter/database/schema/f;
    .locals 3

    .prologue
    .line 96
    if-nez p1, :cond_0

    .line 97
    iget-object v0, p0, Lcom/twitter/database/generated/v;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "pc"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 101
    :goto_0
    return-object p0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/twitter/database/generated/v;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "pc"

    sget-object v2, Lcss;->a:Lcom/twitter/util/serialization/d;

    invoke-static {p1, v2}, Lcom/twitter/util/serialization/ag;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lcom/twitter/database/schema/f;
    .locals 2

    .prologue
    .line 58
    if-nez p1, :cond_0

    .line 59
    iget-object v0, p0, Lcom/twitter/database/generated/v;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 63
    :goto_0
    return-object p0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/twitter/database/generated/v;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/util/List;)Lcom/twitter/database/schema/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/drafts/DraftAttachment;",
            ">;)",
            "Lcom/twitter/database/schema/f;"
        }
    .end annotation

    .prologue
    .line 118
    if-nez p1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/twitter/database/generated/v;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 123
    :goto_0
    return-object p0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/twitter/database/generated/v;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "media"

    sget-object v2, Lcom/twitter/database/generated/a;->e:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v2}, Lcom/twitter/util/serialization/ag;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public a(Z)Lcom/twitter/database/schema/f;
    .locals 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/twitter/database/generated/v;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "reply_prefill_disabled"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 181
    return-object p0
.end method

.method public b(J)Lcom/twitter/database/schema/f;
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/twitter/database/generated/v;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "updated_at"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 80
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/twitter/database/schema/f;
    .locals 2

    .prologue
    .line 158
    if-nez p1, :cond_0

    .line 159
    iget-object v0, p0, Lcom/twitter/database/generated/v;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "card_url"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 163
    :goto_0
    return-object p0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/twitter/database/generated/v;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "card_url"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Ljava/util/List;)Lcom/twitter/database/schema/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/twitter/database/schema/f;"
        }
    .end annotation

    .prologue
    .line 129
    if-nez p1, :cond_0

    .line 130
    iget-object v0, p0, Lcom/twitter/database/generated/v;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "prepared_media_ids"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 134
    :goto_0
    return-object p0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/twitter/database/generated/v;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "prepared_media_ids"

    sget-object v2, Lcom/twitter/database/generated/a;->c:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v2}, Lcom/twitter/util/serialization/ag;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public c(J)Lcom/twitter/database/schema/f;
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/twitter/database/generated/v;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "media_prepared_at"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 141
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/twitter/database/schema/f;
    .locals 2

    .prologue
    .line 209
    if-nez p1, :cond_0

    .line 210
    iget-object v0, p0, Lcom/twitter/database/generated/v;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "engagement_metadata"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 214
    :goto_0
    return-object p0

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/twitter/database/generated/v;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "engagement_metadata"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c(Ljava/util/List;)Lcom/twitter/database/schema/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/twitter/database/schema/f;"
        }
    .end annotation

    .prologue
    .line 187
    if-nez p1, :cond_0

    .line 188
    iget-object v0, p0, Lcom/twitter/database/generated/v;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "semantic_core_ids"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 192
    :goto_0
    return-object p0

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/twitter/database/generated/v;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "semantic_core_ids"

    sget-object v2, Lcom/twitter/database/generated/a;->d:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v2}, Lcom/twitter/util/serialization/ag;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_0
.end method
