.class public final Lcom/twitter/model/json/core/JsonTwitterCollection$$JsonObjectMapper;
.super Lcom/bluelinelabs/logansquare/JsonMapper;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bluelinelabs/logansquare/JsonMapper",
        "<",
        "Lcom/twitter/model/json/core/JsonTwitterCollection;",
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

.method public static _parse(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/json/core/JsonTwitterCollection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22
    new-instance v0, Lcom/twitter/model/json/core/JsonTwitterCollection;

    invoke-direct {v0}, Lcom/twitter/model/json/core/JsonTwitterCollection;-><init>()V

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
    invoke-static {v0, v1, p0}, Lcom/twitter/model/json/core/JsonTwitterCollection$$JsonObjectMapper;->parseField(Lcom/twitter/model/json/core/JsonTwitterCollection;Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 34
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_0
.end method

.method public static _serialize(Lcom/twitter/model/json/core/JsonTwitterCollection;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    if-eqz p2, :cond_0

    .line 68
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->c()V

    .line 70
    :cond_0
    const-string/jumbo v0, "id"

    iget-wide v2, p0, Lcom/twitter/model/json/core/JsonTwitterCollection;->a:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;J)V

    .line 71
    iget-object v0, p0, Lcom/twitter/model/json/core/JsonTwitterCollection;->c:Ljava/util/List;

    .line 72
    if-eqz v0, :cond_3

    .line 73
    const-string/jumbo v1, "items"

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a()V

    .line 75
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/cs;

    .line 76
    if-eqz v0, :cond_1

    .line 77
    const-class v2, Lcom/twitter/model/core/cs;

    invoke-static {v2}, Lcom/bluelinelabs/logansquare/LoganSquare;->typeConverterFor(Ljava/lang/Class;)Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;

    move-result-object v2

    const-string/jumbo v3, "lslocalitemsElement"

    const/4 v4, 0x0

    invoke-interface {v2, v0, v3, v4, p1}, Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;->serialize(Ljava/lang/Object;Ljava/lang/String;ZLcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->b()V

    .line 82
    :cond_3
    const-string/jumbo v0, "url"

    iget-object v1, p0, Lcom/twitter/model/json/core/JsonTwitterCollection;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    if-eqz p2, :cond_4

    .line 84
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->d()V

    .line 86
    :cond_4
    return-void
.end method

.method public static parseField(Lcom/twitter/model/json/core/JsonTwitterCollection;Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 40
    const-string/jumbo v0, "id"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->p()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/model/json/core/JsonTwitterCollection;->a:J

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    const-string/jumbo v0, "items"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 43
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->d()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->d:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_4

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 45
    :cond_2
    :goto_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->e:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v2, :cond_3

    .line 47
    const-class v0, Lcom/twitter/model/core/cs;

    invoke-static {v0}, Lcom/bluelinelabs/logansquare/LoganSquare;->typeConverterFor(Ljava/lang/Class;)Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;->parse(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/cs;

    .line 48
    if-eqz v0, :cond_2

    .line 49
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 52
    :cond_3
    iput-object v1, p0, Lcom/twitter/model/json/core/JsonTwitterCollection;->c:Ljava/util/List;

    goto :goto_0

    .line 54
    :cond_4
    iput-object v2, p0, Lcom/twitter/model/json/core/JsonTwitterCollection;->c:Ljava/util/List;

    goto :goto_0

    .line 56
    :cond_5
    const-string/jumbo v0, "url"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p2, v2}, Lcom/fasterxml/jackson/core/JsonParser;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/json/core/JsonTwitterCollection;->b:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public parse(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/json/core/JsonTwitterCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-static {p1}, Lcom/twitter/model/json/core/JsonTwitterCollection$$JsonObjectMapper;->_parse(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/json/core/JsonTwitterCollection;

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
    invoke-virtual {p0, p1}, Lcom/twitter/model/json/core/JsonTwitterCollection$$JsonObjectMapper;->parse(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/json/core/JsonTwitterCollection;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/twitter/model/json/core/JsonTwitterCollection;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-static {p1, p2, p3}, Lcom/twitter/model/json/core/JsonTwitterCollection$$JsonObjectMapper;->_serialize(Lcom/twitter/model/json/core/JsonTwitterCollection;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 64
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
    check-cast p1, Lcom/twitter/model/json/core/JsonTwitterCollection;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/model/json/core/JsonTwitterCollection$$JsonObjectMapper;->serialize(Lcom/twitter/model/json/core/JsonTwitterCollection;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
