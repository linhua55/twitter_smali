.class public final Lcom/twitter/model/json/core/JsonTwitterStatus$$JsonObjectMapper;
.super Lcom/bluelinelabs/logansquare/JsonMapper;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bluelinelabs/logansquare/JsonMapper",
        "<",
        "Lcom/twitter/model/json/core/JsonTwitterStatus;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/bluelinelabs/logansquare/JsonMapper;-><init>()V

    return-void
.end method

.method public static _parse(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/json/core/JsonTwitterStatus;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    new-instance v0, Lcom/twitter/model/json/core/JsonTwitterStatus;

    invoke-direct {v0}, Lcom/twitter/model/json/core/JsonTwitterStatus;-><init>()V

    .line 33
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->d()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    if-nez v1, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->d()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->b:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_2

    .line 37
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    .line 38
    const/4 v0, 0x0

    .line 46
    :cond_1
    return-object v0

    .line 40
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_1

    .line 41
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    .line 43
    invoke-static {v0, v1, p0}, Lcom/twitter/model/json/core/JsonTwitterStatus$$JsonObjectMapper;->parseField(Lcom/twitter/model/json/core/JsonTwitterStatus;Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 44
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_0
.end method

.method public static _serialize(Lcom/twitter/model/json/core/JsonTwitterStatus;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 159
    if-eqz p2, :cond_0

    .line 160
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->c()V

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->H:Lclw;

    if-eqz v0, :cond_1

    .line 163
    const-class v0, Lclw;

    invoke-static {v0}, Lcom/bluelinelabs/logansquare/LoganSquare;->typeConverterFor(Ljava/lang/Class;)Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->H:Lclw;

    const-string/jumbo v2, "card"

    invoke-interface {v0, v1, v2, v5, p1}, Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;->serialize(Ljava/lang/Object;Ljava/lang/String;ZLcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->K:Lcom/twitter/model/core/cf;

    if-eqz v0, :cond_2

    .line 166
    const-class v0, Lcom/twitter/model/core/cf;

    invoke-static {v0}, Lcom/bluelinelabs/logansquare/LoganSquare;->typeConverterFor(Ljava/lang/Class;)Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->K:Lcom/twitter/model/core/cf;

    const-string/jumbo v2, "collection"

    invoke-interface {v0, v1, v2, v5, p1}, Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;->serialize(Ljava/lang/Object;Ljava/lang/String;ZLcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 168
    :cond_2
    const-string/jumbo v0, "conversation_muted"

    iget-boolean v1, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->M:Z

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Z)V

    .line 169
    iget-object v0, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->x:Lcom/twitter/model/json/core/JsonTwitterStatus$StatusCoordinateArray;

    if-eqz v0, :cond_3

    .line 170
    const-string/jumbo v0, "coordinates"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->x:Lcom/twitter/model/json/core/JsonTwitterStatus$StatusCoordinateArray;

    invoke-static {v0, p1, v5}, Lcom/twitter/model/json/core/JsonTwitterStatus$StatusCoordinateArray$$JsonObjectMapper;->_serialize(Lcom/twitter/model/json/core/JsonTwitterStatus$StatusCoordinateArray;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 173
    :cond_3
    const-string/jumbo v0, "created_at"

    iget-object v1, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->w:Lcom/twitter/model/json/core/JsonTwitterStatus$UserRetweetId;

    if-eqz v0, :cond_4

    .line 175
    const-string/jumbo v0, "current_user_retweet"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->w:Lcom/twitter/model/json/core/JsonTwitterStatus$UserRetweetId;

    invoke-static {v0, p1, v5}, Lcom/twitter/model/json/core/JsonTwitterStatus$UserRetweetId$$JsonObjectMapper;->_serialize(Lcom/twitter/model/json/core/JsonTwitterStatus$UserRetweetId;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 178
    :cond_4
    iget-object v0, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->h:Ljava/util/List;

    .line 179
    if-eqz v0, :cond_6

    .line 180
    const-string/jumbo v1, "display_text_range"

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a()V

    .line 182
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 183
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->b(I)V

    goto :goto_0

    .line 185
    :cond_5
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->b()V

    .line 187
    :cond_6
    iget-object v0, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->D:Lcom/twitter/model/core/bo;

    if-eqz v0, :cond_7

    .line 188
    const-class v0, Lcom/twitter/model/core/bo;

    invoke-static {v0}, Lcom/bluelinelabs/logansquare/LoganSquare;->typeConverterFor(Ljava/lang/Class;)Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->D:Lcom/twitter/model/core/bo;

    const-string/jumbo v2, "entities"

    invoke-interface {v0, v1, v2, v5, p1}, Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;->serialize(Ljava/lang/Object;Ljava/lang/String;ZLcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 190
    :cond_7
    iget-object v0, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->J:Lcom/twitter/model/stratostore/k;

    if-eqz v0, :cond_8

    .line 191
    const-class v0, Lcom/twitter/model/stratostore/k;

    invoke-static {v0}, Lcom/bluelinelabs/logansquare/LoganSquare;->typeConverterFor(Ljava/lang/Class;)Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->J:Lcom/twitter/model/stratostore/k;

    const-string/jumbo v2, "ext"

    invoke-interface {v0, v1, v2, v5, p1}, Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;->serialize(Ljava/lang/Object;Ljava/lang/String;ZLcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 193
    :cond_8
    iget-object v0, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->E:Lcom/twitter/model/json/core/JsonTwitterStatus$ExtendedTweetEntities;

    if-eqz v0, :cond_9

    .line 194
    const-string/jumbo v0, "extended_entities"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->E:Lcom/twitter/model/json/core/JsonTwitterStatus$ExtendedTweetEntities;

    invoke-static {v0, p1, v5}, Lcom/twitter/model/json/core/JsonTwitterStatus$ExtendedTweetEntities$$JsonObjectMapper;->_serialize(Lcom/twitter/model/json/core/JsonTwitterStatus$ExtendedTweetEntities;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 197
    :cond_9
    const-string/jumbo v0, "favorite_count"

    iget v1, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->p:I

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;I)V

    .line 198
    const-string/jumbo v0, "favorited"

    iget-boolean v1, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->r:Z

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Z)V

    .line 199
    const-string/jumbo v0, "full_text"

    iget-object v1, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string/jumbo v0, "id"

    iget-wide v2, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->b:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;J)V

    .line 201
    const-string/jumbo v0, "in_reply_to_screen_name"

    iget-object v1, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->n:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string/jumbo v0, "in_reply_to_status_id"

    iget-wide v2, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->m:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;J)V

    .line 203
    const-string/jumbo v0, "in_reply_to_user_id"

    iget-wide v2, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->l:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;J)V

    .line 204
    const-string/jumbo v0, "is_emergency"

    iget-boolean v1, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->u:Z

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Z)V

    .line 205
    const-string/jumbo v0, "is_quoted_status"

    iget-boolean v1, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->v:Z

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Z)V

    .line 206
    const-string/jumbo v0, "lang"

    iget-object v1, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->F:Lcom/twitter/model/search/m;

    if-eqz v0, :cond_a

    .line 208
    const-class v0, Lcom/twitter/model/search/m;

    invoke-static {v0}, Lcom/bluelinelabs/logansquare/LoganSquare;->typeConverterFor(Ljava/lang/Class;)Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->F:Lcom/twitter/model/search/m;

    const-string/jumbo v2, "metadata"

    invoke-interface {v0, v1, v2, v5, p1}, Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;->serialize(Ljava/lang/Object;Ljava/lang/String;ZLcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 210
    :cond_a
    iget-object v0, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->z:Lcom/twitter/model/geo/TwitterPlace;

    if-eqz v0, :cond_b

    .line 211
    const-class v0, Lcom/twitter/model/geo/TwitterPlace;

    invoke-static {v0}, Lcom/bluelinelabs/logansquare/LoganSquare;->typeConverterFor(Ljava/lang/Class;)Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->z:Lcom/twitter/model/geo/TwitterPlace;

    const-string/jumbo v2, "place"

    invoke-interface {v0, v1, v2, v5, p1}, Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;->serialize(Ljava/lang/Object;Ljava/lang/String;ZLcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 213
    :cond_b
    const-string/jumbo v0, "possibly_sensitive"

    iget-boolean v1, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->s:Z

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Z)V

    .line 214
    const-string/jumbo v0, "possibly_sensitive_appealable"

    iget-boolean v1, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->t:Z

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Z)V

    .line 215
    iget-object v0, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->G:Lcss;

    if-eqz v0, :cond_c

    .line 216
    const-class v0, Lcss;

    invoke-static {v0}, Lcom/bluelinelabs/logansquare/LoganSquare;->typeConverterFor(Ljava/lang/Class;)Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->G:Lcss;

    const-string/jumbo v2, "promoted_content"

    invoke-interface {v0, v1, v2, v5, p1}, Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;->serialize(Ljava/lang/Object;Ljava/lang/String;ZLcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 218
    :cond_c
    iget-object v0, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->C:Lcom/twitter/model/core/cs;

    if-eqz v0, :cond_d

    .line 219
    const-class v0, Lcom/twitter/model/core/cs;

    invoke-static {v0}, Lcom/bluelinelabs/logansquare/LoganSquare;->typeConverterFor(Ljava/lang/Class;)Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->C:Lcom/twitter/model/core/cs;

    const-string/jumbo v2, "quoted_status"

    invoke-interface {v0, v1, v2, v5, p1}, Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;->serialize(Ljava/lang/Object;Ljava/lang/String;ZLcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 221
    :cond_d
    const-string/jumbo v0, "quoted_status_id"

    iget-wide v2, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->o:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;J)V

    .line 222
    const-string/jumbo v0, "retweet_count"

    iget-object v1, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string/jumbo v0, "retweeted"

    iget-boolean v1, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->q:Z

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Z)V

    .line 224
    iget-object v0, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->A:Lcom/twitter/model/core/cs;

    if-eqz v0, :cond_e

    .line 225
    const-class v0, Lcom/twitter/model/core/cs;

    invoke-static {v0}, Lcom/bluelinelabs/logansquare/LoganSquare;->typeConverterFor(Ljava/lang/Class;)Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->A:Lcom/twitter/model/core/cs;

    const-string/jumbo v2, "retweeted_status"

    invoke-interface {v0, v1, v2, v5, p1}, Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;->serialize(Ljava/lang/Object;Ljava/lang/String;ZLcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 227
    :cond_e
    const-string/jumbo v0, "retweeted_status_id_str"

    iget-object v1, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->B:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string/jumbo v0, "source"

    iget-object v1, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string/jumbo v0, "supplemental_language"

    iget-object v1, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string/jumbo v0, "text"

    iget-object v1, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->I:Ljava/util/List;

    .line 232
    if-eqz v0, :cond_11

    .line 233
    const-string/jumbo v1, "tweet_pivots"

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a()V

    .line 235
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/bv;

    .line 236
    if-eqz v0, :cond_f

    .line 237
    const-class v2, Lcom/twitter/model/core/bv;

    invoke-static {v2}, Lcom/bluelinelabs/logansquare/LoganSquare;->typeConverterFor(Ljava/lang/Class;)Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;

    move-result-object v2

    const-string/jumbo v3, "lslocaltweet_pivotsElement"

    const/4 v4, 0x0

    invoke-interface {v2, v0, v3, v4, p1}, Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;->serialize(Ljava/lang/Object;Ljava/lang/String;ZLcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_1

    .line 240
    :cond_10
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->b()V

    .line 242
    :cond_11
    iget-object v0, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->y:Lcom/twitter/model/core/TwitterUser;

    if-eqz v0, :cond_12

    .line 243
    const-class v0, Lcom/twitter/model/core/TwitterUser;

    invoke-static {v0}, Lcom/bluelinelabs/logansquare/LoganSquare;->typeConverterFor(Ljava/lang/Class;)Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->y:Lcom/twitter/model/core/TwitterUser;

    const-string/jumbo v2, "user"

    invoke-interface {v0, v1, v2, v5, p1}, Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;->serialize(Ljava/lang/Object;Ljava/lang/String;ZLcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 245
    :cond_12
    const-string/jumbo v0, "user_id_str"

    iget-object v1, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->L:Lcom/twitter/model/json/core/d;

    if-eqz v0, :cond_13

    .line 247
    const-class v0, Lcom/twitter/model/json/core/d;

    invoke-static {v0}, Lcom/bluelinelabs/logansquare/LoganSquare;->typeConverterFor(Ljava/lang/Class;)Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->L:Lcom/twitter/model/json/core/d;

    const-string/jumbo v2, "withheld_scope"

    invoke-interface {v0, v1, v2, v5, p1}, Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;->serialize(Ljava/lang/Object;Ljava/lang/String;ZLcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 249
    :cond_13
    if-eqz p2, :cond_14

    .line 250
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->d()V

    .line 252
    :cond_14
    return-void
.end method

.method public static parseField(Lcom/twitter/model/json/core/JsonTwitterStatus;Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 50
    const-string/jumbo v0, "card"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    const-class v0, Lclw;

    invoke-static {v0}, Lcom/bluelinelabs/logansquare/LoganSquare;->typeConverterFor(Ljava/lang/Class;)Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;->parse(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lclw;

    iput-object v0, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->H:Lclw;

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    const-string/jumbo v0, "collection"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    const-class v0, Lcom/twitter/model/core/cf;

    invoke-static {v0}, Lcom/bluelinelabs/logansquare/LoganSquare;->typeConverterFor(Ljava/lang/Class;)Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;->parse(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/cf;

    iput-object v0, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->K:Lcom/twitter/model/core/cf;

    goto :goto_0

    .line 54
    :cond_2
    const-string/jumbo v0, "conversation_muted"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 55
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->r()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->M:Z

    goto :goto_0

    .line 56
    :cond_3
    const-string/jumbo v0, "coordinates"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 57
    invoke-static {p2}, Lcom/twitter/model/json/core/JsonTwitterStatus$StatusCoordinateArray$$JsonObjectMapper;->_parse(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/json/core/JsonTwitterStatus$StatusCoordinateArray;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->x:Lcom/twitter/model/json/core/JsonTwitterStatus$StatusCoordinateArray;

    goto :goto_0

    .line 58
    :cond_4
    const-string/jumbo v0, "created_at"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 59
    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/core/JsonParser;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->d:Ljava/lang/String;

    goto :goto_0

    .line 60
    :cond_5
    const-string/jumbo v0, "current_user_retweet"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 61
    invoke-static {p2}, Lcom/twitter/model/json/core/JsonTwitterStatus$UserRetweetId$$JsonObjectMapper;->_parse(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/json/core/JsonTwitterStatus$UserRetweetId;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->w:Lcom/twitter/model/json/core/JsonTwitterStatus$UserRetweetId;

    goto :goto_0

    .line 62
    :cond_6
    const-string/jumbo v0, "display_text_range"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 63
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->d()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->d:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v2, :cond_a

    .line 64
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 65
    :cond_7
    :goto_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->e:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v3, :cond_9

    .line 67
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->d()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->m:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v3, :cond_8

    move-object v0, v1

    .line 68
    :goto_2
    if-eqz v0, :cond_7

    .line 69
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 67
    :cond_8
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->o()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    .line 72
    :cond_9
    iput-object v2, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->h:Ljava/util/List;

    goto/16 :goto_0

    .line 74
    :cond_a
    iput-object v1, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->h:Ljava/util/List;

    goto/16 :goto_0

    .line 76
    :cond_b
    const-string/jumbo v0, "entities"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 77
    const-class v0, Lcom/twitter/model/core/bo;

    invoke-static {v0}, Lcom/bluelinelabs/logansquare/LoganSquare;->typeConverterFor(Ljava/lang/Class;)Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;->parse(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/bo;

    iput-object v0, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->D:Lcom/twitter/model/core/bo;

    goto/16 :goto_0

    .line 78
    :cond_c
    const-string/jumbo v0, "ext"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 79
    const-class v0, Lcom/twitter/model/stratostore/k;

    invoke-static {v0}, Lcom/bluelinelabs/logansquare/LoganSquare;->typeConverterFor(Ljava/lang/Class;)Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;->parse(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/stratostore/k;

    iput-object v0, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->J:Lcom/twitter/model/stratostore/k;

    goto/16 :goto_0

    .line 80
    :cond_d
    const-string/jumbo v0, "extended_entities"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 81
    invoke-static {p2}, Lcom/twitter/model/json/core/JsonTwitterStatus$ExtendedTweetEntities$$JsonObjectMapper;->_parse(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/json/core/JsonTwitterStatus$ExtendedTweetEntities;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->E:Lcom/twitter/model/json/core/JsonTwitterStatus$ExtendedTweetEntities;

    goto/16 :goto_0

    .line 82
    :cond_e
    const-string/jumbo v0, "favorite_count"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 83
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->o()I

    move-result v0

    iput v0, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->p:I

    goto/16 :goto_0

    .line 84
    :cond_f
    const-string/jumbo v0, "favorited"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 85
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->r()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->r:Z

    goto/16 :goto_0

    .line 86
    :cond_10
    const-string/jumbo v0, "full_text"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 87
    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/core/JsonParser;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->g:Ljava/lang/String;

    goto/16 :goto_0

    .line 88
    :cond_11
    const-string/jumbo v0, "id"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 89
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->p()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->b:J

    goto/16 :goto_0

    .line 90
    :cond_12
    const-string/jumbo v0, "in_reply_to_screen_name"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 91
    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/core/JsonParser;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->n:Ljava/lang/String;

    goto/16 :goto_0

    .line 92
    :cond_13
    const-string/jumbo v0, "in_reply_to_status_id"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 93
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->p()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->m:J

    goto/16 :goto_0

    .line 94
    :cond_14
    const-string/jumbo v0, "in_reply_to_user_id"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 95
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->p()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->l:J

    goto/16 :goto_0

    .line 96
    :cond_15
    const-string/jumbo v0, "is_emergency"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 97
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->r()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->u:Z

    goto/16 :goto_0

    .line 98
    :cond_16
    const-string/jumbo v0, "is_quoted_status"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 99
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->r()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->v:Z

    goto/16 :goto_0

    .line 100
    :cond_17
    const-string/jumbo v0, "lang"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 101
    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/core/JsonParser;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->j:Ljava/lang/String;

    goto/16 :goto_0

    .line 102
    :cond_18
    const-string/jumbo v0, "metadata"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 103
    const-class v0, Lcom/twitter/model/search/m;

    invoke-static {v0}, Lcom/bluelinelabs/logansquare/LoganSquare;->typeConverterFor(Ljava/lang/Class;)Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;->parse(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/search/m;

    iput-object v0, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->F:Lcom/twitter/model/search/m;

    goto/16 :goto_0

    .line 104
    :cond_19
    const-string/jumbo v0, "place"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 105
    const-class v0, Lcom/twitter/model/geo/TwitterPlace;

    invoke-static {v0}, Lcom/bluelinelabs/logansquare/LoganSquare;->typeConverterFor(Ljava/lang/Class;)Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;->parse(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/geo/TwitterPlace;

    iput-object v0, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->z:Lcom/twitter/model/geo/TwitterPlace;

    goto/16 :goto_0

    .line 106
    :cond_1a
    const-string/jumbo v0, "possibly_sensitive"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 107
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->r()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->s:Z

    goto/16 :goto_0

    .line 108
    :cond_1b
    const-string/jumbo v0, "possibly_sensitive_appealable"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 109
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->r()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->t:Z

    goto/16 :goto_0

    .line 110
    :cond_1c
    const-string/jumbo v0, "promoted_content"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 111
    const-class v0, Lcss;

    invoke-static {v0}, Lcom/bluelinelabs/logansquare/LoganSquare;->typeConverterFor(Ljava/lang/Class;)Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;->parse(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcss;

    iput-object v0, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->G:Lcss;

    goto/16 :goto_0

    .line 112
    :cond_1d
    const-string/jumbo v0, "quoted_status"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 113
    const-class v0, Lcom/twitter/model/core/cs;

    invoke-static {v0}, Lcom/bluelinelabs/logansquare/LoganSquare;->typeConverterFor(Ljava/lang/Class;)Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;->parse(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/cs;

    iput-object v0, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->C:Lcom/twitter/model/core/cs;

    goto/16 :goto_0

    .line 114
    :cond_1e
    const-string/jumbo v0, "quoted_status_id"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 115
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->p()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->o:J

    goto/16 :goto_0

    .line 116
    :cond_1f
    const-string/jumbo v0, "retweet_count"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 117
    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/core/JsonParser;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->i:Ljava/lang/String;

    goto/16 :goto_0

    .line 118
    :cond_20
    const-string/jumbo v0, "retweeted"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 119
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->r()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->q:Z

    goto/16 :goto_0

    .line 120
    :cond_21
    const-string/jumbo v0, "retweeted_status"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 121
    const-class v0, Lcom/twitter/model/core/cs;

    invoke-static {v0}, Lcom/bluelinelabs/logansquare/LoganSquare;->typeConverterFor(Ljava/lang/Class;)Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;->parse(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/cs;

    iput-object v0, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->A:Lcom/twitter/model/core/cs;

    goto/16 :goto_0

    .line 122
    :cond_22
    const-string/jumbo v0, "retweeted_status_id_str"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 123
    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/core/JsonParser;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->B:Ljava/lang/String;

    goto/16 :goto_0

    .line 124
    :cond_23
    const-string/jumbo v0, "source"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 125
    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/core/JsonParser;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->e:Ljava/lang/String;

    goto/16 :goto_0

    .line 126
    :cond_24
    const-string/jumbo v0, "supplemental_language"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 127
    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/core/JsonParser;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->k:Ljava/lang/String;

    goto/16 :goto_0

    .line 128
    :cond_25
    const-string/jumbo v0, "text"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 129
    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/core/JsonParser;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->f:Ljava/lang/String;

    goto/16 :goto_0

    .line 130
    :cond_26
    const-string/jumbo v0, "tweet_pivots"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 131
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->d()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->d:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v2, :cond_29

    .line 132
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 133
    :cond_27
    :goto_3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->e:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v2, :cond_28

    .line 135
    const-class v0, Lcom/twitter/model/core/bv;

    invoke-static {v0}, Lcom/bluelinelabs/logansquare/LoganSquare;->typeConverterFor(Ljava/lang/Class;)Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;->parse(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/bv;

    .line 136
    if-eqz v0, :cond_27

    .line 137
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 140
    :cond_28
    iput-object v1, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->I:Ljava/util/List;

    goto/16 :goto_0

    .line 142
    :cond_29
    iput-object v1, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->I:Ljava/util/List;

    goto/16 :goto_0

    .line 144
    :cond_2a
    const-string/jumbo v0, "user"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 145
    const-class v0, Lcom/twitter/model/core/TwitterUser;

    invoke-static {v0}, Lcom/bluelinelabs/logansquare/LoganSquare;->typeConverterFor(Ljava/lang/Class;)Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;->parse(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    iput-object v0, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->y:Lcom/twitter/model/core/TwitterUser;

    goto/16 :goto_0

    .line 146
    :cond_2b
    const-string/jumbo v0, "user_id_str"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 147
    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/core/JsonParser;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->c:Ljava/lang/String;

    goto/16 :goto_0

    .line 148
    :cond_2c
    const-string/jumbo v0, "withheld_scope"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    const-class v0, Lcom/twitter/model/json/core/d;

    invoke-static {v0}, Lcom/bluelinelabs/logansquare/LoganSquare;->typeConverterFor(Ljava/lang/Class;)Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;->parse(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/json/core/d;

    iput-object v0, p0, Lcom/twitter/model/json/core/JsonTwitterStatus;->L:Lcom/twitter/model/json/core/d;

    goto/16 :goto_0
.end method


# virtual methods
.method public parse(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/json/core/JsonTwitterStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-static {p1}, Lcom/twitter/model/json/core/JsonTwitterStatus$$JsonObjectMapper;->_parse(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/json/core/JsonTwitterStatus;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parse(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/twitter/model/json/core/JsonTwitterStatus$$JsonObjectMapper;->parse(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/json/core/JsonTwitterStatus;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/twitter/model/json/core/JsonTwitterStatus;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    invoke-static {p1, p2, p3}, Lcom/twitter/model/json/core/JsonTwitterStatus$$JsonObjectMapper;->_serialize(Lcom/twitter/model/json/core/JsonTwitterStatus;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 156
    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    check-cast p1, Lcom/twitter/model/json/core/JsonTwitterStatus;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/model/json/core/JsonTwitterStatus$$JsonObjectMapper;->serialize(Lcom/twitter/model/json/core/JsonTwitterStatus;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
