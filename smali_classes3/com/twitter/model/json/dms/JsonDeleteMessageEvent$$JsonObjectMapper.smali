.class public final Lcom/twitter/model/json/dms/JsonDeleteMessageEvent$$JsonObjectMapper;
.super Lcom/bluelinelabs/logansquare/JsonMapper;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bluelinelabs/logansquare/JsonMapper",
        "<",
        "Lcom/twitter/model/json/dms/JsonDeleteMessageEvent;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/bluelinelabs/logansquare/JsonMapper;-><init>()V

    return-void
.end method

.method public static _parse(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/json/dms/JsonDeleteMessageEvent;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22
    new-instance v0, Lcom/twitter/model/json/dms/JsonDeleteMessageEvent;

    invoke-direct {v0}, Lcom/twitter/model/json/dms/JsonDeleteMessageEvent;-><init>()V

    .line 23
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->d()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    if-nez v1, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->d()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->b:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_2

    .line 27
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    .line 28
    const/4 v0, 0x0

    .line 36
    :cond_1
    return-object v0

    .line 30
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_1

    .line 31
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    .line 33
    invoke-static {v0, v1, p0}, Lcom/twitter/model/json/dms/JsonDeleteMessageEvent$$JsonObjectMapper;->parseField(Lcom/twitter/model/json/dms/JsonDeleteMessageEvent;Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 34
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_0
.end method

.method public static _serialize(Lcom/twitter/model/json/dms/JsonDeleteMessageEvent;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    if-eqz p2, :cond_0

    .line 74
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->c()V

    .line 76
    :cond_0
    const-string/jumbo v0, "affects_sort"

    iget-boolean v1, p0, Lcom/twitter/model/json/dms/JsonDeleteMessageEvent;->d:Z

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Z)V

    .line 77
    const-string/jumbo v0, "conversation_id"

    iget-object v1, p0, Lcom/twitter/model/json/dms/JsonDeleteMessageEvent;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string/jumbo v0, "time"

    iget-wide v2, p0, Lcom/twitter/model/json/dms/JsonDeleteMessageEvent;->b:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;J)V

    .line 79
    const-string/jumbo v0, "id"

    iget-wide v2, p0, Lcom/twitter/model/json/dms/JsonDeleteMessageEvent;->a:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;J)V

    .line 80
    iget-object v0, p0, Lcom/twitter/model/json/dms/JsonDeleteMessageEvent;->f:Ljava/util/List;

    .line 81
    if-eqz v0, :cond_3

    .line 82
    const-string/jumbo v1, "messages"

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a()V

    .line 84
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/dj;

    .line 85
    if-eqz v0, :cond_1

    .line 86
    const-class v2, Lcom/twitter/model/dms/dj;

    invoke-static {v2}, Lcom/bluelinelabs/logansquare/LoganSquare;->typeConverterFor(Ljava/lang/Class;)Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;

    move-result-object v2

    const-string/jumbo v3, "lslocalmessagesElement"

    const/4 v4, 0x0

    invoke-interface {v2, v0, v3, v4, p1}, Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;->serialize(Ljava/lang/Object;Ljava/lang/String;ZLcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_0

    .line 89
    :cond_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->b()V

    .line 91
    :cond_3
    const-string/jumbo v0, "request_id"

    iget-object v1, p0, Lcom/twitter/model/json/dms/JsonDeleteMessageEvent;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    if-eqz p2, :cond_4

    .line 93
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->d()V

    .line 95
    :cond_4
    return-void
.end method

.method public static parseField(Lcom/twitter/model/json/dms/JsonDeleteMessageEvent;Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 40
    const-string/jumbo v0, "affects_sort"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->r()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/model/json/dms/JsonDeleteMessageEvent;->d:Z

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    const-string/jumbo v0, "conversation_id"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 43
    invoke-virtual {p2, v2}, Lcom/fasterxml/jackson/core/JsonParser;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/json/dms/JsonDeleteMessageEvent;->c:Ljava/lang/String;

    goto :goto_0

    .line 44
    :cond_2
    const-string/jumbo v0, "time"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 45
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->p()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/model/json/dms/JsonDeleteMessageEvent;->b:J

    goto :goto_0

    .line 46
    :cond_3
    const-string/jumbo v0, "id"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 47
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->p()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/model/json/dms/JsonDeleteMessageEvent;->a:J

    goto :goto_0

    .line 48
    :cond_4
    const-string/jumbo v0, "messages"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 49
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->d()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->d:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_7

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 51
    :cond_5
    :goto_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->e:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v2, :cond_6

    .line 53
    const-class v0, Lcom/twitter/model/dms/dj;

    invoke-static {v0}, Lcom/bluelinelabs/logansquare/LoganSquare;->typeConverterFor(Ljava/lang/Class;)Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;->parse(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/dj;

    .line 54
    if-eqz v0, :cond_5

    .line 55
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 58
    :cond_6
    iput-object v1, p0, Lcom/twitter/model/json/dms/JsonDeleteMessageEvent;->f:Ljava/util/List;

    goto :goto_0

    .line 60
    :cond_7
    iput-object v2, p0, Lcom/twitter/model/json/dms/JsonDeleteMessageEvent;->f:Ljava/util/List;

    goto :goto_0

    .line 62
    :cond_8
    const-string/jumbo v0, "request_id"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p2, v2}, Lcom/fasterxml/jackson/core/JsonParser;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/json/dms/JsonDeleteMessageEvent;->e:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public parse(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/json/dms/JsonDeleteMessageEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-static {p1}, Lcom/twitter/model/json/dms/JsonDeleteMessageEvent$$JsonObjectMapper;->_parse(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/json/dms/JsonDeleteMessageEvent;

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
    .line 15
    invoke-virtual {p0, p1}, Lcom/twitter/model/json/dms/JsonDeleteMessageEvent$$JsonObjectMapper;->parse(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/json/dms/JsonDeleteMessageEvent;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/twitter/model/json/dms/JsonDeleteMessageEvent;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-static {p1, p2, p3}, Lcom/twitter/model/json/dms/JsonDeleteMessageEvent$$JsonObjectMapper;->_serialize(Lcom/twitter/model/json/dms/JsonDeleteMessageEvent;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 70
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
    .line 15
    check-cast p1, Lcom/twitter/model/json/dms/JsonDeleteMessageEvent;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/model/json/dms/JsonDeleteMessageEvent$$JsonObjectMapper;->serialize(Lcom/twitter/model/json/dms/JsonDeleteMessageEvent;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
