.class public Lcom/twitter/model/json/common/g;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcom/fasterxml/jackson/core/JsonFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/JsonFactory;-><init>()V

    sput-object v0, Lcom/twitter/model/json/common/g;->a:Lcom/fasterxml/jackson/core/JsonFactory;

    return-void
.end method

.method private static a(Ljava/io/InputStream;)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 1

    .prologue
    .line 1176
    :try_start_0
    sget-object v0, Lcom/bluelinelabs/logansquare/LoganSquare;->JSON_FACTORY:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/core/JsonFactory;->a(Ljava/io/InputStream;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    .line 1177
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1182
    :goto_0
    return-object v0

    .line 1179
    :catch_0
    move-exception v0

    .line 1180
    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 1182
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 1

    .prologue
    .line 1188
    :try_start_0
    sget-object v0, Lcom/bluelinelabs/logansquare/LoganSquare;->JSON_FACTORY:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/core/JsonFactory;->a(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    .line 1189
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1194
    :goto_0
    return-object v0

    .line 1191
    :catch_0
    move-exception v0

    .line 1192
    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 1194
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Ljava/lang/Object;",
            "J:",
            "Lcom/twitter/model/json/common/f",
            "<TM;>;>(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Ljava/lang/Class",
            "<TJ;>;)TM;"
        }
    .end annotation

    .prologue
    .line 133
    invoke-static {p0, p1}, Lcom/twitter/model/json/common/g;->g(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Lcom/twitter/model/json/common/b;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/json/common/f;

    invoke-static {v0}, Lcom/twitter/model/json/common/j;->a(Lcom/twitter/model/json/common/f;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 534
    invoke-static {p0}, Lcom/twitter/model/json/common/g;->a(Ljava/io/InputStream;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    .line 535
    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/twitter/model/json/common/g;->c(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 543
    invoke-static {p0}, Lcom/twitter/model/json/common/g;->a(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    .line 544
    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/twitter/model/json/common/g;->c(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;Lcom/twitter/util/collection/d;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "C::",
            "Ljava/util/Collection",
            "<TT;>;>(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/twitter/util/collection/d",
            "<TT;TC;>;)TC;"
        }
    .end annotation

    .prologue
    .line 647
    invoke-static {p1}, Lcom/twitter/model/json/common/j;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 649
    invoke-static {p0, p1, p2}, Lcom/twitter/model/json/common/g;->b(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;Lcom/twitter/util/collection/d;)Ljava/util/Collection;

    move-result-object v0

    .line 651
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/twitter/model/json/common/g;->c(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;Lcom/twitter/util/collection/d;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;Lcom/twitter/util/collection/v;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/twitter/util/collection/v",
            "<",
            "Ljava/lang/String;",
            "TT;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .prologue
    .line 711
    invoke-static {p1}, Lcom/twitter/model/json/common/j;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 713
    invoke-static {p0, p1, p2}, Lcom/twitter/model/json/common/g;->b(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;Lcom/twitter/util/collection/v;)Ljava/util/Map;

    move-result-object v0

    .line 716
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/twitter/model/json/common/g;->c(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;Lcom/twitter/util/collection/v;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/Class;Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TM;>;",
            "Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter",
            "<TM;>;)V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {p0, p1}, Lcom/bluelinelabs/logansquare/LoganSquare;->registerTypeConverter(Ljava/lang/Class;Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;)V

    .line 46
    return-void
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Ljava/lang/Object;",
            "J:",
            "Lcom/twitter/model/json/common/f",
            "<TM;>;>(",
            "Ljava/lang/Class",
            "<TM;>;",
            "Ljava/lang/Class",
            "<TJ;>;)V"
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Lcom/twitter/model/json/common/h;

    invoke-direct {v0, p1}, Lcom/twitter/model/json/common/h;-><init>(Ljava/lang/Class;)V

    invoke-static {p0, v0}, Lcom/twitter/model/json/common/g;->a(Ljava/lang/Class;Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;)V

    .line 87
    return-void
.end method

.method public static b(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Lcom/twitter/util/object/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Ljava/lang/Object;",
            "J:",
            "Lcom/twitter/model/json/common/e",
            "<TM;>;>(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Ljava/lang/Class",
            "<TJ;>;)",
            "Lcom/twitter/util/object/h",
            "<TM;>;"
        }
    .end annotation

    .prologue
    .line 160
    invoke-static {p0, p1}, Lcom/twitter/model/json/common/g;->g(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Lcom/twitter/model/json/common/b;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/json/common/e;

    invoke-static {v0}, Lcom/twitter/model/json/common/j;->a(Lcom/twitter/model/json/common/e;)Lcom/twitter/util/object/h;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;Lcom/twitter/util/collection/d;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<J:",
            "Lcom/twitter/model/json/common/b;",
            "C::",
            "Ljava/util/Collection",
            "<TJ;>;>(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Ljava/lang/Class",
            "<TJ;>;",
            "Lcom/twitter/util/collection/d",
            "<TJ;TC;>;)TC;"
        }
    .end annotation

    .prologue
    .line 879
    invoke-static {}, Lcom/twitter/model/json/common/JsonModelRegistry;->a()V

    .line 880
    invoke-static {p1}, Lcom/bluelinelabs/logansquare/LoganSquare;->mapperFor(Ljava/lang/Class;)Lcom/bluelinelabs/logansquare/JsonMapper;

    move-result-object v0

    .line 882
    :try_start_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->d()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->d:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_0

    .line 883
    :goto_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->e:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_0

    .line 884
    invoke-virtual {v0, p0}, Lcom/bluelinelabs/logansquare/JsonMapper;->parse(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/twitter/util/collection/d;->a(Ljava/lang/Object;)Lcom/twitter/util/collection/d;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 887
    :catch_0
    move-exception v0

    .line 888
    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 890
    :cond_0
    invoke-interface {p2}, Lcom/twitter/util/collection/d;->a()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 576
    invoke-static {p0}, Lcom/twitter/model/json/common/g;->a(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    .line 577
    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/twitter/model/json/common/g;->d(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/twitter/util/collection/r;->g()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private static b(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;Lcom/twitter/util/collection/v;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<J:",
            "Lcom/twitter/model/json/common/b;",
            ">(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Ljava/lang/Class",
            "<TJ;>;",
            "Lcom/twitter/util/collection/v",
            "<",
            "Ljava/lang/String;",
            "TJ;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TJ;>;"
        }
    .end annotation

    .prologue
    .line 952
    invoke-static {}, Lcom/twitter/model/json/common/JsonModelRegistry;->a()V

    .line 953
    invoke-static {p1}, Lcom/bluelinelabs/logansquare/LoganSquare;->mapperFor(Ljava/lang/Class;)Lcom/bluelinelabs/logansquare/JsonMapper;

    move-result-object v0

    .line 955
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_1

    .line 956
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v1

    .line 957
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    .line 958
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->d()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->m:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v3, :cond_0

    .line 959
    invoke-virtual {v0, p0}, Lcom/bluelinelabs/logansquare/JsonMapper;->parse(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 962
    :catch_0
    move-exception v0

    .line 963
    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 965
    :cond_1
    invoke-virtual {p2}, Lcom/twitter/util/collection/v;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public static b(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Ljava/lang/Object;",
            "B:",
            "Lcom/twitter/util/object/h",
            "<TM;>;J:",
            "Lcom/twitter/model/json/common/e",
            "<TM;>;>(",
            "Ljava/lang/Class",
            "<TB;>;",
            "Ljava/lang/Class",
            "<TJ;>;)V"
        }
    .end annotation

    .prologue
    .line 95
    new-instance v0, Lcom/twitter/model/json/common/i;

    invoke-direct {v0, p1}, Lcom/twitter/model/json/common/i;-><init>(Ljava/lang/Class;)V

    invoke-static {p0, v0}, Lcom/twitter/model/json/common/g;->a(Ljava/lang/Class;Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;)V

    .line 107
    return-void
.end method

.method public static c(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 552
    invoke-static {p1}, Lcom/twitter/model/json/common/j;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    invoke-static {p0, p1}, Lcom/twitter/model/json/common/g;->g(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Lcom/twitter/model/json/common/b;

    move-result-object v0

    .line 556
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lcom/twitter/model/json/common/g;->h(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private static c(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;Lcom/twitter/util/collection/d;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "C::",
            "Ljava/util/Collection",
            "<TT;>;>(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/twitter/util/collection/d",
            "<TT;TC;>;)TC;"
        }
    .end annotation

    .prologue
    .line 1087
    invoke-static {}, Lcom/twitter/model/json/common/JsonModelRegistry;->a()V

    .line 1088
    invoke-static {p1}, Lcom/bluelinelabs/logansquare/LoganSquare;->typeConverterFor(Ljava/lang/Class;)Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;

    move-result-object v0

    .line 1090
    :try_start_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->d()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->d:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_0

    .line 1091
    :goto_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->e:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_0

    .line 1092
    invoke-interface {v0, p0}, Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;->parse(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/twitter/util/collection/d;->a(Ljava/lang/Object;)Lcom/twitter/util/collection/d;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1095
    :catch_0
    move-exception v0

    .line 1096
    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 1098
    :cond_0
    invoke-interface {p2}, Lcom/twitter/util/collection/d;->a()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private static c(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;Lcom/twitter/util/collection/v;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/twitter/util/collection/v",
            "<",
            "Ljava/lang/String;",
            "TT;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .prologue
    .line 1157
    invoke-static {}, Lcom/twitter/model/json/common/JsonModelRegistry;->a()V

    .line 1158
    invoke-static {p1}, Lcom/bluelinelabs/logansquare/LoganSquare;->typeConverterFor(Ljava/lang/Class;)Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;

    move-result-object v0

    .line 1160
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_1

    .line 1161
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v1

    .line 1162
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    .line 1163
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->d()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->m:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v3, :cond_0

    .line 1164
    invoke-interface {v0, p0}, Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;->parse(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1167
    :catch_0
    move-exception v0

    .line 1168
    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 1170
    :cond_1
    invoke-virtual {p2}, Lcom/twitter/util/collection/v;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public static d(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 586
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/twitter/model/json/common/g;->a(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;Lcom/twitter/util/collection/d;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static e(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .prologue
    .line 701
    invoke-static {}, Lcom/twitter/util/collection/v;->e()Lcom/twitter/util/collection/v;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/twitter/model/json/common/g;->a(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;Lcom/twitter/util/collection/v;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static f(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 725
    invoke-static {p0, p1}, Lcom/twitter/model/json/common/g;->e(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private static g(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Lcom/twitter/model/json/common/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<J:",
            "Lcom/twitter/model/json/common/b;",
            ">(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Ljava/lang/Class",
            "<TJ;>;)TJ;"
        }
    .end annotation

    .prologue
    .line 780
    invoke-static {}, Lcom/twitter/model/json/common/JsonModelRegistry;->a()V

    .line 782
    :try_start_0
    invoke-static {p1}, Lcom/bluelinelabs/logansquare/LoganSquare;->mapperFor(Ljava/lang/Class;)Lcom/bluelinelabs/logansquare/JsonMapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bluelinelabs/logansquare/JsonMapper;->parse(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/json/common/b;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 786
    :goto_0
    return-object v0

    .line 783
    :catch_0
    move-exception v0

    .line 784
    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 786
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static h(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 991
    invoke-static {}, Lcom/twitter/model/json/common/JsonModelRegistry;->a()V

    .line 993
    :try_start_0
    invoke-static {p1}, Lcom/bluelinelabs/logansquare/LoganSquare;->typeConverterFor(Ljava/lang/Class;)Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/bluelinelabs/logansquare/typeconverters/TypeConverter;->parse(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 997
    :goto_0
    return-object v0

    .line 994
    :catch_0
    move-exception v0

    .line 995
    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 997
    const/4 v0, 0x0

    goto :goto_0
.end method
