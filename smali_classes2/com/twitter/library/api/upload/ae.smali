.class public Lcom/twitter/library/api/upload/ae;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method private static a(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 171
    invoke-static {p0}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    const/4 v0, 0x0

    .line 174
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ","

    invoke-static {v0, p0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/util/List;Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/drafts/DraftAttachment;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 187
    if-nez p1, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-object v2

    .line 190
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    .line 191
    if-eqz v4, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v4, v0, :cond_0

    .line 194
    const-string/jumbo v1, ""

    .line 195
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    const-string/jumbo v0, "{"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    const/4 v0, 0x0

    move v3, v0

    :goto_1
    if-ge v3, v4, :cond_2

    .line 198
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/drafts/DraftAttachment;

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Lcom/twitter/model/drafts/DraftAttachment;->a(I)Lcom/twitter/model/media/EditableMedia;

    move-result-object v0

    .line 199
    instance-of v6, v0, Lcom/twitter/model/media/EditableImage;

    if-eqz v6, :cond_0

    .line 202
    check-cast v0, Lcom/twitter/model/media/EditableImage;

    iget-object v0, v0, Lcom/twitter/model/media/EditableImage;->g:Ljava/util/List;

    .line 203
    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 204
    invoke-static {v0}, Lcom/twitter/library/api/upload/ae;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 205
    if-eqz v0, :cond_4

    .line 206
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, "\""

    .line 207
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 208
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, "\":"

    .line 209
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 210
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    const-string/jumbo v0, ","

    .line 197
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v1, v0

    goto :goto_1

    .line 215
    :cond_2
    const-string/jumbo v0, "}"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-static {v1}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v2

    :goto_3
    move-object v2, v0

    goto :goto_0

    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method public static a(Lcom/twitter/library/network/at;)Ljava/lang/StringBuilder;
    .locals 4

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/twitter/library/network/at;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "1.1"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "statuses"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "update"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/twitter/library/network/at;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".json"

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 49
    return-object v0
.end method

.method public static a(Lcom/twitter/library/network/av;Lcom/twitter/library/network/at;Lcom/twitter/model/drafts/d;Ljava/util/List;Ljava/lang/String;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/library/network/av;",
            "Lcom/twitter/library/network/at;",
            "Lcom/twitter/model/drafts/d;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    .line 66
    const-string/jumbo v0, "include_entities"

    invoke-virtual {p0, v0, v6}, Lcom/twitter/library/network/av;->a(Ljava/lang/String;Z)V

    .line 67
    const-string/jumbo v0, "include_media_features"

    invoke-virtual {p0, v0, v6}, Lcom/twitter/library/network/av;->a(Ljava/lang/String;Z)V

    .line 68
    const-string/jumbo v0, "earned_read"

    invoke-virtual {p0, v0, v6}, Lcom/twitter/library/network/av;->a(Ljava/lang/String;Z)V

    .line 69
    invoke-virtual {p0}, Lcom/twitter/library/network/av;->a()V

    .line 71
    iget-object v0, p2, Lcom/twitter/model/drafts/d;->i:Lcom/twitter/model/core/ay;

    if-eqz v0, :cond_0

    .line 72
    const-string/jumbo v0, "attachment_url"

    iget-object v1, p2, Lcom/twitter/model/drafts/d;->i:Lcom/twitter/model/core/ay;

    invoke-virtual {v1}, Lcom/twitter/model/core/ay;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/twitter/library/network/av;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_0
    const-string/jumbo v0, "status"

    iget-object v1, p2, Lcom/twitter/model/drafts/d;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/twitter/util/object/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/twitter/library/network/av;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string/jumbo v0, "send_error_codes"

    invoke-virtual {p0, v0, v6}, Lcom/twitter/library/network/av;->a(Ljava/lang/String;Z)V

    .line 79
    iget-wide v0, p2, Lcom/twitter/model/drafts/d;->e:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 80
    const-string/jumbo v0, "in_reply_to_status_id"

    iget-wide v2, p2, Lcom/twitter/model/drafts/d;->e:J

    invoke-virtual {p0, v0, v2, v3}, Lcom/twitter/library/network/av;->a(Ljava/lang/String;J)V

    .line 83
    iget-boolean v0, p2, Lcom/twitter/model/drafts/d;->f:Z

    if-eqz v0, :cond_1

    .line 84
    const-string/jumbo v0, "auto_populate_reply_metadata"

    invoke-virtual {p0, v0, v6}, Lcom/twitter/library/network/av;->a(Ljava/lang/String;Z)V

    .line 89
    :cond_1
    iget-wide v0, p2, Lcom/twitter/model/drafts/d;->e:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_b

    iget-object v0, p2, Lcom/twitter/model/drafts/d;->h:Lcss;

    if-eqz v0, :cond_b

    iget-object v0, p2, Lcom/twitter/model/drafts/d;->h:Lcss;

    .line 94
    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcss;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 95
    const-string/jumbo v1, "impression_id"

    iget-object v2, v0, Lcss;->c:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/twitter/library/network/av;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0}, Lcss;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    const-string/jumbo v0, "earned"

    invoke-virtual {p0, v0, v6}, Lcom/twitter/library/network/av;->a(Ljava/lang/String;Z)V

    .line 101
    :cond_2
    iget-object v0, p2, Lcom/twitter/model/drafts/d;->g:Lcom/twitter/model/geo/g;

    .line 102
    if-eqz v0, :cond_4

    if-eqz p5, :cond_4

    .line 103
    const-string/jumbo v1, "place_id"

    invoke-virtual {v0}, Lcom/twitter/model/geo/g;->a()Lcom/twitter/model/geo/TwitterPlace;

    move-result-object v2

    iget-object v2, v2, Lcom/twitter/model/geo/TwitterPlace;->b:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/twitter/library/network/av;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0}, Lcom/twitter/model/geo/g;->b()Lcom/twitter/model/geo/d;

    move-result-object v1

    .line 105
    if-eqz v1, :cond_3

    invoke-static {}, Lcbz;->a()Lcca;

    move-result-object v2

    invoke-interface {v2}, Lcca;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 106
    const-string/jumbo v2, "lat"

    invoke-virtual {v1}, Lcom/twitter/model/geo/d;->a()D

    move-result-wide v4

    invoke-virtual {p0, v2, v4, v5}, Lcom/twitter/library/network/av;->a(Ljava/lang/String;D)V

    .line 107
    const-string/jumbo v2, "long"

    invoke-virtual {v1}, Lcom/twitter/model/geo/d;->b()D

    move-result-wide v4

    invoke-virtual {p0, v2, v4, v5}, Lcom/twitter/library/network/av;->a(Ljava/lang/String;D)V

    .line 110
    :cond_3
    invoke-virtual {v0}, Lcom/twitter/model/geo/g;->c()Ljava/lang/String;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_4

    .line 112
    const-string/jumbo v1, "geo_search_request_id"

    invoke-virtual {p0, v1, v0}, Lcom/twitter/library/network/av;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_4
    invoke-static {p3}, Lcom/twitter/library/api/upload/ae;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 118
    const-string/jumbo v1, "media_ids"

    invoke-virtual {p0, v1, v0}, Lcom/twitter/library/network/av;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_5
    iget-object v0, p2, Lcom/twitter/model/drafts/d;->d:Ljava/util/List;

    invoke-static {v0, p3}, Lcom/twitter/library/api/upload/ae;->a(Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 122
    const-string/jumbo v1, "media_tags"

    invoke-virtual {p0, v1, v0}, Lcom/twitter/library/network/av;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_6
    invoke-static {p4}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 126
    iget-object v0, p2, Lcom/twitter/model/drafts/d;->j:Ljava/lang/String;

    .line 127
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 128
    const-string/jumbo v1, "card_uri"

    invoke-virtual {p0, v1, v0}, Lcom/twitter/library/network/av;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_7
    :goto_1
    const-string/jumbo v0, "include_blocked_by_and_blocking_in_requests_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 136
    const-string/jumbo v0, "include_blocking"

    invoke-virtual {p0, v0, v6}, Lcom/twitter/library/network/av;->a(Ljava/lang/String;Z)V

    .line 137
    const-string/jumbo v0, "include_blocked_by"

    invoke-virtual {p0, v0, v6}, Lcom/twitter/library/network/av;->a(Ljava/lang/String;Z)V

    .line 140
    :cond_8
    const-string/jumbo v0, "conversations_android_extended_payload_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 141
    const-string/jumbo v0, "tweet_mode"

    const-string/jumbo v1, "extended"

    invoke-virtual {p0, v0, v1}, Lcom/twitter/library/network/av;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_9
    const-string/jumbo v0, "ad_formats_convo_card_engagement_metadata_scribing_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p2, Lcom/twitter/model/drafts/d;->n:Ljava/lang/String;

    .line 145
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 146
    const-string/jumbo v0, "engagement_metadata"

    iget-object v1, p2, Lcom/twitter/model/drafts/d;->n:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/twitter/library/network/av;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_a
    invoke-static {p0, p2}, Lcom/twitter/library/api/upload/ae;->a(Lcom/twitter/library/network/av;Lcom/twitter/model/drafts/d;)V

    .line 150
    return-void

    .line 89
    :cond_b
    iget-object v0, p2, Lcom/twitter/model/drafts/d;->i:Lcom/twitter/model/core/ay;

    if-eqz v0, :cond_c

    iget-object v0, p2, Lcom/twitter/model/drafts/d;->i:Lcom/twitter/model/core/ay;

    iget-object v0, v0, Lcom/twitter/model/core/ay;->m:Lcss;

    goto/16 :goto_0

    :cond_c
    iget-object v0, p2, Lcom/twitter/model/drafts/d;->h:Lcss;

    goto/16 :goto_0

    .line 131
    :cond_d
    const-string/jumbo v0, "card_uri"

    invoke-virtual {p0, v0, p4}, Lcom/twitter/library/network/av;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static a(Lcom/twitter/library/network/av;Lcom/twitter/model/drafts/d;)V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p1, Lcom/twitter/model/drafts/d;->l:Ljava/util/List;

    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_0
    const-string/jumbo v0, ","

    iget-object v1, p1, Lcom/twitter/model/drafts/d;->l:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 160
    const-string/jumbo v1, "semantic_annotation_ids"

    invoke-virtual {p0, v1, v0}, Lcom/twitter/library/network/av;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static b(Ljava/util/List;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/am;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 223
    .line 225
    :try_start_0
    new-instance v3, Ljava/io/StringWriter;

    const/16 v0, 0x200

    invoke-direct {v3, v0}, Ljava/io/StringWriter;-><init>(I)V

    .line 226
    sget-object v0, Lcom/twitter/model/json/common/g;->a:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/core/JsonFactory;->a(Ljava/io/Writer;)Lcom/fasterxml/jackson/core/JsonGenerator;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 227
    :try_start_1
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->a()V

    .line 228
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/am;

    .line 229
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->c()V

    .line 230
    const-string/jumbo v5, "type"

    const-string/jumbo v6, "user"

    invoke-virtual {v2, v5, v6}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-wide v6, v0, Lcom/twitter/model/core/am;->b:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    .line 234
    const-string/jumbo v5, "user_id"

    iget-wide v6, v0, Lcom/twitter/model/core/am;->b:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :cond_0
    const-string/jumbo v5, "screen_name"

    iget-object v0, v0, Lcom/twitter/model/core/am;->d:Ljava/lang/String;

    invoke-virtual {v2, v5, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->d()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 242
    :catch_0
    move-exception v0

    move-object v0, v2

    .line 245
    :goto_1
    invoke-static {v0}, Ldbt;->a(Ljava/io/Closeable;)V

    move-object v0, v1

    .line 243
    :goto_2
    return-object v0

    .line 239
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->b()V

    .line 240
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->flush()V

    .line 241
    invoke-virtual {v3}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 245
    invoke-static {v2}, Ldbt;->a(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_3
    invoke-static {v2}, Ldbt;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 242
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method
