.class public Lcom/twitter/model/json/stratostore/d;
.super Lcom/twitter/model/json/common/m;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/json/common/m",
        "<",
        "Lcom/twitter/model/stratostore/k;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/twitter/model/stratostore/i;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    invoke-static {}, Lcom/twitter/util/collection/v;->e()Lcom/twitter/util/collection/v;

    move-result-object v0

    const-string/jumbo v1, "tweet_views"

    const-class v2, Lcom/twitter/model/stratostore/m;

    .line 30
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    const-string/jumbo v1, "stickerInfo"

    const-class v2, Lcom/twitter/model/stratostore/f;

    .line 31
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    const-string/jumbo v1, "altText"

    const-class v2, Lcom/twitter/model/stratostore/c;

    .line 32
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    const-string/jumbo v1, "mediaRestrictions"

    const-class v2, Lcom/twitter/model/stratostore/d;

    .line 33
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    const-string/jumbo v1, "mediaStats"

    const-class v2, Lcom/twitter/model/stratostore/e;

    .line 34
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    const-string/jumbo v1, "mediaColor"

    const-class v2, Lcom/twitter/model/stratostore/a;

    .line 35
    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/twitter/util/collection/v;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lcom/twitter/model/json/stratostore/d;->a:Ljava/util/Map;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/twitter/model/json/common/m;-><init>()V

    return-void
.end method

.method private static a(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Class;)Lcom/twitter/model/stratostore/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/twitter/model/stratostore/i;",
            ">(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/twitter/model/stratostore/g;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    new-instance v0, Lcom/twitter/model/stratostore/h;

    invoke-direct {v0, p1}, Lcom/twitter/model/stratostore/h;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->d()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    if-nez v1, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->d()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->b:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_1

    .line 71
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    .line 72
    const/4 v0, 0x0

    .line 84
    :goto_0
    return-object v0

    .line 74
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_4

    .line 75
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    .line 77
    const-string/jumbo v2, "r"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 78
    invoke-static {p0, v0, p2}, Lcom/twitter/model/json/stratostore/d;->a(Lcom/fasterxml/jackson/core/JsonParser;Lcom/twitter/model/stratostore/h;Ljava/lang/Class;)V

    .line 82
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 79
    :cond_3
    const-string/jumbo v2, "ttl"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 80
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->o()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/stratostore/h;->a(I)Lcom/twitter/model/stratostore/h;

    goto :goto_2

    .line 84
    :cond_4
    invoke-virtual {v0}, Lcom/twitter/model/stratostore/h;->a()Lcom/twitter/model/stratostore/g;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Lcom/fasterxml/jackson/core/JsonParser;Lcom/twitter/model/stratostore/h;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/twitter/model/stratostore/h;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/twitter/model/stratostore/i;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->d()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    if-nez v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->d()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->b:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_2

    .line 93
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    .line 111
    :cond_1
    return-void

    .line 96
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_1

    .line 97
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    .line 99
    const-string/jumbo v1, "err"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 101
    const-class v0, Lcom/twitter/model/stratostore/j;

    invoke-static {v0}, Lcom/bluelinelabs/logansquare/LoganSquare;->typeConverterFor(Ljava/lang/Class;)Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;->parse(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/stratostore/j;

    invoke-virtual {p1, v0}, Lcom/twitter/model/stratostore/h;->a(Lcom/twitter/model/stratostore/j;)Lcom/twitter/model/stratostore/h;

    .line 102
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/twitter/model/stratostore/h;->b(I)Lcom/twitter/model/stratostore/h;

    .line 109
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_0

    .line 103
    :cond_4
    const-string/jumbo v1, "missing"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 104
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/twitter/model/stratostore/h;->b(I)Lcom/twitter/model/stratostore/h;

    goto :goto_1

    .line 105
    :cond_5
    const-string/jumbo v1, "ok"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 106
    invoke-static {p0, p2}, Lcom/twitter/model/json/common/g;->c(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/stratostore/i;

    invoke-virtual {p1, v0}, Lcom/twitter/model/stratostore/h;->a(Lcom/twitter/model/stratostore/i;)Lcom/twitter/model/stratostore/h;

    .line 107
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/twitter/model/stratostore/h;->b(I)Lcom/twitter/model/stratostore/h;

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/stratostore/k;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    new-instance v2, Lcom/twitter/model/stratostore/l;

    invoke-direct {v2}, Lcom/twitter/model/stratostore/l;-><init>()V

    .line 42
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->d()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    if-nez v0, :cond_0

    .line 43
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    .line 45
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->d()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->b:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_1

    .line 46
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    .line 47
    const/4 v0, 0x0

    .line 59
    :goto_0
    return-object v0

    .line 49
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_3

    .line 50
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v3

    .line 51
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    .line 52
    sget-object v0, Lcom/twitter/model/json/stratostore/d;->a:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    sget-object v0, Lcom/twitter/model/json/stratostore/d;->a:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    sget-object v1, Lcom/twitter/model/json/stratostore/d;->a:Ljava/util/Map;

    .line 54
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-static {p1, v3, v1}, Lcom/twitter/model/json/stratostore/d;->a(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Class;)Lcom/twitter/model/stratostore/g;

    move-result-object v1

    .line 53
    invoke-virtual {v2, v0, v1}, Lcom/twitter/model/stratostore/l;->a(Ljava/lang/Class;Lcom/twitter/model/stratostore/g;)Lcom/twitter/model/stratostore/l;

    .line 57
    :cond_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 59
    :cond_3
    invoke-virtual {v2}, Lcom/twitter/model/stratostore/l;->a()Lcom/twitter/model/stratostore/k;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic parse(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/twitter/model/json/stratostore/d;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/stratostore/k;

    move-result-object v0

    return-object v0
.end method
