.class public final Lcom/twitter/model/json/media/stickers/JsonStickerCategory$$JsonObjectMapper;
.super Lcom/bluelinelabs/logansquare/JsonMapper;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bluelinelabs/logansquare/JsonMapper",
        "<",
        "Lcom/twitter/model/json/media/stickers/JsonStickerCategory;",
        ">;"
    }
.end annotation


# static fields
.field protected static final JSON_STICKER_DATE_TYPE_CONVERTER:Lcom/twitter/model/json/media/stickers/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/twitter/model/json/media/stickers/b;

    invoke-direct {v0}, Lcom/twitter/model/json/media/stickers/b;-><init>()V

    sput-object v0, Lcom/twitter/model/json/media/stickers/JsonStickerCategory$$JsonObjectMapper;->JSON_STICKER_DATE_TYPE_CONVERTER:Lcom/twitter/model/json/media/stickers/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/bluelinelabs/logansquare/JsonMapper;-><init>()V

    return-void
.end method

.method public static _parse(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/json/media/stickers/JsonStickerCategory;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    new-instance v0, Lcom/twitter/model/json/media/stickers/JsonStickerCategory;

    invoke-direct {v0}, Lcom/twitter/model/json/media/stickers/JsonStickerCategory;-><init>()V

    .line 26
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->d()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    if-nez v1, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->d()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->b:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_2

    .line 30
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    .line 31
    const/4 v0, 0x0

    .line 39
    :cond_1
    return-object v0

    .line 33
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_1

    .line 34
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    .line 36
    invoke-static {v0, v1, p0}, Lcom/twitter/model/json/media/stickers/JsonStickerCategory$$JsonObjectMapper;->parseField(Lcom/twitter/model/json/media/stickers/JsonStickerCategory;Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 37
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_0
.end method

.method public static _serialize(Lcom/twitter/model/json/media/stickers/JsonStickerCategory;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 82
    if-eqz p2, :cond_0

    .line 83
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->c()V

    .line 85
    :cond_0
    const-string/jumbo v0, "annotation_id"

    iget-wide v2, p0, Lcom/twitter/model/json/media/stickers/JsonStickerCategory;->a:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;J)V

    .line 86
    const-string/jumbo v0, "display_name"

    iget-object v1, p0, Lcom/twitter/model/json/media/stickers/JsonStickerCategory;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/twitter/model/json/media/stickers/JsonStickerCategory;->i:Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 88
    sget-object v0, Lcom/twitter/model/json/media/stickers/JsonStickerCategory$$JsonObjectMapper;->JSON_STICKER_DATE_TYPE_CONVERTER:Lcom/twitter/model/json/media/stickers/b;

    iget-object v1, p0, Lcom/twitter/model/json/media/stickers/JsonStickerCategory;->i:Ljava/util/Date;

    const-string/jumbo v2, "end_time"

    invoke-virtual {v0, v1, v2, v5, p1}, Lcom/twitter/model/json/media/stickers/b;->serialize(Ljava/util/Date;Ljava/lang/String;ZLcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/twitter/model/json/media/stickers/JsonStickerCategory;->c:Lcpk;

    if-eqz v0, :cond_2

    .line 91
    const-class v0, Lcpk;

    invoke-static {v0}, Lcom/bluelinelabs/logansquare/LoganSquare;->typeConverterFor(Ljava/lang/Class;)Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/media/stickers/JsonStickerCategory;->c:Lcpk;

    const-string/jumbo v2, "icon_image"

    invoke-interface {v0, v1, v2, v5, p1}, Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;->serialize(Ljava/lang/Object;Ljava/lang/String;ZLcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 93
    :cond_2
    const-string/jumbo v0, "id"

    iget-wide v2, p0, Lcom/twitter/model/json/media/stickers/JsonStickerCategory;->d:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;J)V

    .line 94
    iget-object v0, p0, Lcom/twitter/model/json/media/stickers/JsonStickerCategory;->e:Ljava/util/List;

    .line 95
    if-eqz v0, :cond_5

    .line 96
    const-string/jumbo v1, "items"

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a()V

    .line 98
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcqa;

    .line 99
    if-eqz v0, :cond_3

    .line 100
    const-class v2, Lcqa;

    invoke-static {v2}, Lcom/bluelinelabs/logansquare/LoganSquare;->typeConverterFor(Ljava/lang/Class;)Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;

    move-result-object v2

    const-string/jumbo v3, "lslocalitemsElement"

    const/4 v4, 0x0

    invoke-interface {v2, v0, v3, v4, p1}, Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;->serialize(Ljava/lang/Object;Ljava/lang/String;ZLcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_0

    .line 103
    :cond_4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->b()V

    .line 105
    :cond_5
    const-string/jumbo v0, "promoted_by"

    iget-object v1, p0, Lcom/twitter/model/json/media/stickers/JsonStickerCategory;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/twitter/model/json/media/stickers/JsonStickerCategory;->h:Ljava/util/Date;

    if-eqz v0, :cond_6

    .line 107
    sget-object v0, Lcom/twitter/model/json/media/stickers/JsonStickerCategory$$JsonObjectMapper;->JSON_STICKER_DATE_TYPE_CONVERTER:Lcom/twitter/model/json/media/stickers/b;

    iget-object v1, p0, Lcom/twitter/model/json/media/stickers/JsonStickerCategory;->h:Ljava/util/Date;

    const-string/jumbo v2, "start_time"

    invoke-virtual {v0, v1, v2, v5, p1}, Lcom/twitter/model/json/media/stickers/b;->serialize(Ljava/util/Date;Ljava/lang/String;ZLcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 109
    :cond_6
    const-string/jumbo v0, "type"

    iget-object v1, p0, Lcom/twitter/model/json/media/stickers/JsonStickerCategory;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    if-eqz p2, :cond_7

    .line 111
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->d()V

    .line 113
    :cond_7
    return-void
.end method

.method public static parseField(Lcom/twitter/model/json/media/stickers/JsonStickerCategory;Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 43
    const-string/jumbo v0, "annotation_id"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->p()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/model/json/media/stickers/JsonStickerCategory;->a:J

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    const-string/jumbo v0, "display_name"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46
    invoke-virtual {p2, v2}, Lcom/fasterxml/jackson/core/JsonParser;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/json/media/stickers/JsonStickerCategory;->b:Ljava/lang/String;

    goto :goto_0

    .line 47
    :cond_2
    const-string/jumbo v0, "end_time"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 48
    sget-object v0, Lcom/twitter/model/json/media/stickers/JsonStickerCategory$$JsonObjectMapper;->JSON_STICKER_DATE_TYPE_CONVERTER:Lcom/twitter/model/json/media/stickers/b;

    invoke-virtual {v0, p2}, Lcom/twitter/model/json/media/stickers/b;->parse(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/json/media/stickers/JsonStickerCategory;->i:Ljava/util/Date;

    goto :goto_0

    .line 49
    :cond_3
    const-string/jumbo v0, "icon_image"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 50
    const-class v0, Lcpk;

    invoke-static {v0}, Lcom/bluelinelabs/logansquare/LoganSquare;->typeConverterFor(Ljava/lang/Class;)Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;->parse(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcpk;

    iput-object v0, p0, Lcom/twitter/model/json/media/stickers/JsonStickerCategory;->c:Lcpk;

    goto :goto_0

    .line 51
    :cond_4
    const-string/jumbo v0, "id"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 52
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->p()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/model/json/media/stickers/JsonStickerCategory;->d:J

    goto :goto_0

    .line 53
    :cond_5
    const-string/jumbo v0, "items"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 54
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->d()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->d:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_8

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 56
    :cond_6
    :goto_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->e:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v2, :cond_7

    .line 58
    const-class v0, Lcqa;

    invoke-static {v0}, Lcom/bluelinelabs/logansquare/LoganSquare;->typeConverterFor(Ljava/lang/Class;)Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;->parse(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcqa;

    .line 59
    if-eqz v0, :cond_6

    .line 60
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 63
    :cond_7
    iput-object v1, p0, Lcom/twitter/model/json/media/stickers/JsonStickerCategory;->e:Ljava/util/List;

    goto :goto_0

    .line 65
    :cond_8
    iput-object v2, p0, Lcom/twitter/model/json/media/stickers/JsonStickerCategory;->e:Ljava/util/List;

    goto :goto_0

    .line 67
    :cond_9
    const-string/jumbo v0, "promoted_by"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 68
    invoke-virtual {p2, v2}, Lcom/fasterxml/jackson/core/JsonParser;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/json/media/stickers/JsonStickerCategory;->g:Ljava/lang/String;

    goto/16 :goto_0

    .line 69
    :cond_a
    const-string/jumbo v0, "start_time"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 70
    sget-object v0, Lcom/twitter/model/json/media/stickers/JsonStickerCategory$$JsonObjectMapper;->JSON_STICKER_DATE_TYPE_CONVERTER:Lcom/twitter/model/json/media/stickers/b;

    invoke-virtual {v0, p2}, Lcom/twitter/model/json/media/stickers/b;->parse(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/json/media/stickers/JsonStickerCategory;->h:Ljava/util/Date;

    goto/16 :goto_0

    .line 71
    :cond_b
    const-string/jumbo v0, "type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p2, v2}, Lcom/fasterxml/jackson/core/JsonParser;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/json/media/stickers/JsonStickerCategory;->f:Ljava/lang/String;

    goto/16 :goto_0
.end method


# virtual methods
.method public parse(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/json/media/stickers/JsonStickerCategory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    invoke-static {p1}, Lcom/twitter/model/json/media/stickers/JsonStickerCategory$$JsonObjectMapper;->_parse(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/json/media/stickers/JsonStickerCategory;

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
    .line 16
    invoke-virtual {p0, p1}, Lcom/twitter/model/json/media/stickers/JsonStickerCategory$$JsonObjectMapper;->parse(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/json/media/stickers/JsonStickerCategory;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/twitter/model/json/media/stickers/JsonStickerCategory;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-static {p1, p2, p3}, Lcom/twitter/model/json/media/stickers/JsonStickerCategory$$JsonObjectMapper;->_serialize(Lcom/twitter/model/json/media/stickers/JsonStickerCategory;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 79
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
    .line 16
    check-cast p1, Lcom/twitter/model/json/media/stickers/JsonStickerCategory;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/model/json/media/stickers/JsonStickerCategory$$JsonObjectMapper;->serialize(Lcom/twitter/model/json/media/stickers/JsonStickerCategory;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
