.class public final Lcom/twitter/model/json/av/JsonVideoAdResponse$$JsonObjectMapper;
.super Lcom/bluelinelabs/logansquare/JsonMapper;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bluelinelabs/logansquare/JsonMapper",
        "<",
        "Lcom/twitter/model/json/av/JsonVideoAdResponse;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/bluelinelabs/logansquare/JsonMapper;-><init>()V

    return-void
.end method

.method public static _parse(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/json/av/JsonVideoAdResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    new-instance v0, Lcom/twitter/model/json/av/JsonVideoAdResponse;

    invoke-direct {v0}, Lcom/twitter/model/json/av/JsonVideoAdResponse;-><init>()V

    .line 24
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->d()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    if-nez v1, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->d()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->b:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_2

    .line 28
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    .line 29
    const/4 v0, 0x0

    .line 37
    :cond_1
    return-object v0

    .line 31
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_1

    .line 32
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    .line 34
    invoke-static {v0, v1, p0}, Lcom/twitter/model/json/av/JsonVideoAdResponse$$JsonObjectMapper;->parseField(Lcom/twitter/model/json/av/JsonVideoAdResponse;Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 35
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_0
.end method

.method public static _serialize(Lcom/twitter/model/json/av/JsonVideoAdResponse;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 92
    if-eqz p2, :cond_0

    .line 93
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->c()V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/twitter/model/json/av/JsonVideoAdResponse;->c:Ljava/util/List;

    .line 96
    if-eqz v0, :cond_2

    .line 97
    const-string/jumbo v1, "autoplay_blacklist"

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a()V

    .line 99
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 100
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->b()V

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/twitter/model/json/av/JsonVideoAdResponse;->a:Ljava/util/List;

    .line 105
    if-eqz v0, :cond_5

    .line 106
    const-string/jumbo v1, "prerolls"

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a()V

    .line 108
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/av/i;

    .line 109
    if-eqz v0, :cond_3

    .line 110
    const-class v2, Lcom/twitter/model/av/i;

    invoke-static {v2}, Lcom/bluelinelabs/logansquare/LoganSquare;->typeConverterFor(Ljava/lang/Class;)Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;

    move-result-object v2

    const-string/jumbo v3, "lslocalprerollsElement"

    invoke-interface {v2, v0, v3, v4, p1}, Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;->serialize(Ljava/lang/Object;Ljava/lang/String;ZLcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_1

    .line 113
    :cond_4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->b()V

    .line 115
    :cond_5
    iget-object v0, p0, Lcom/twitter/model/json/av/JsonVideoAdResponse;->b:Ljava/util/List;

    .line 116
    if-eqz v0, :cond_8

    .line 117
    const-string/jumbo v1, "video_analytics_scribe"

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a()V

    .line 119
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/av/d;

    .line 120
    if-eqz v0, :cond_6

    .line 121
    const-class v2, Lcom/twitter/model/av/d;

    invoke-static {v2}, Lcom/bluelinelabs/logansquare/LoganSquare;->typeConverterFor(Ljava/lang/Class;)Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;

    move-result-object v2

    const-string/jumbo v3, "lslocalvideo_analytics_scribeElement"

    invoke-interface {v2, v0, v3, v4, p1}, Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;->serialize(Ljava/lang/Object;Ljava/lang/String;ZLcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_2

    .line 124
    :cond_7
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->b()V

    .line 126
    :cond_8
    if-eqz p2, :cond_9

    .line 127
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->d()V

    .line 129
    :cond_9
    return-void
.end method

.method public static parseField(Lcom/twitter/model/json/av/JsonVideoAdResponse;Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 41
    const-string/jumbo v0, "autoplay_blacklist"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 42
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->d()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->d:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_3

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->e:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_1

    .line 46
    invoke-virtual {p2, v3}, Lcom/fasterxml/jackson/core/JsonParser;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    if-eqz v1, :cond_0

    .line 48
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 51
    :cond_1
    iput-object v0, p0, Lcom/twitter/model/json/av/JsonVideoAdResponse;->c:Ljava/util/List;

    .line 84
    :cond_2
    :goto_1
    return-void

    .line 53
    :cond_3
    iput-object v3, p0, Lcom/twitter/model/json/av/JsonVideoAdResponse;->c:Ljava/util/List;

    goto :goto_1

    .line 55
    :cond_4
    const-string/jumbo v0, "prerolls"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 56
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->d()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->d:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_7

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 58
    :cond_5
    :goto_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->e:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v2, :cond_6

    .line 60
    const-class v0, Lcom/twitter/model/av/i;

    invoke-static {v0}, Lcom/bluelinelabs/logansquare/LoganSquare;->typeConverterFor(Ljava/lang/Class;)Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;->parse(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/av/i;

    .line 61
    if-eqz v0, :cond_5

    .line 62
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 65
    :cond_6
    iput-object v1, p0, Lcom/twitter/model/json/av/JsonVideoAdResponse;->a:Ljava/util/List;

    goto :goto_1

    .line 67
    :cond_7
    iput-object v3, p0, Lcom/twitter/model/json/av/JsonVideoAdResponse;->a:Ljava/util/List;

    goto :goto_1

    .line 69
    :cond_8
    const-string/jumbo v0, "video_analytics_scribe"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->d()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->d:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_b

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 72
    :cond_9
    :goto_3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->e:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v2, :cond_a

    .line 74
    const-class v0, Lcom/twitter/model/av/d;

    invoke-static {v0}, Lcom/bluelinelabs/logansquare/LoganSquare;->typeConverterFor(Ljava/lang/Class;)Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;->parse(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/av/d;

    .line 75
    if-eqz v0, :cond_9

    .line 76
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 79
    :cond_a
    iput-object v1, p0, Lcom/twitter/model/json/av/JsonVideoAdResponse;->b:Ljava/util/List;

    goto :goto_1

    .line 81
    :cond_b
    iput-object v3, p0, Lcom/twitter/model/json/av/JsonVideoAdResponse;->b:Ljava/util/List;

    goto :goto_1
.end method


# virtual methods
.method public parse(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/json/av/JsonVideoAdResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    invoke-static {p1}, Lcom/twitter/model/json/av/JsonVideoAdResponse$$JsonObjectMapper;->_parse(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/json/av/JsonVideoAdResponse;

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
    invoke-virtual {p0, p1}, Lcom/twitter/model/json/av/JsonVideoAdResponse$$JsonObjectMapper;->parse(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/json/av/JsonVideoAdResponse;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/twitter/model/json/av/JsonVideoAdResponse;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-static {p1, p2, p3}, Lcom/twitter/model/json/av/JsonVideoAdResponse$$JsonObjectMapper;->_serialize(Lcom/twitter/model/json/av/JsonVideoAdResponse;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 89
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
    check-cast p1, Lcom/twitter/model/json/av/JsonVideoAdResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/model/json/av/JsonVideoAdResponse$$JsonObjectMapper;->serialize(Lcom/twitter/model/json/av/JsonVideoAdResponse;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
