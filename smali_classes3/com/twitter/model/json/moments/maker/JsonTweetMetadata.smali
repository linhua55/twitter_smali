.class public Lcom/twitter/model/json/moments/maker/JsonTweetMetadata;
.super Lcom/twitter/model/json/common/b;
.source "Twttr"


# annotations
.annotation build Lcom/bluelinelabs/logansquare/annotation/JsonObject;
    fieldNamingPolicy = .enum Lcom/bluelinelabs/logansquare/annotation/JsonObject$FieldNamingPolicy;->LOWER_CASE_WITH_UNDERSCORES:Lcom/bluelinelabs/logansquare/annotation/JsonObject$FieldNamingPolicy;
.end annotation


# instance fields
.field public a:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public b:Lcom/twitter/model/json/moments/maker/JsonMediaData;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public c:Lcom/twitter/model/json/moments/JsonThemeData;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/twitter/model/json/common/b;-><init>()V

    return-void
.end method

.method public static a(Lcom/twitter/model/moments/maker/n;)Lcom/twitter/model/json/moments/maker/JsonTweetMetadata;
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lcom/twitter/model/json/moments/maker/JsonTweetMetadata;

    invoke-direct {v0}, Lcom/twitter/model/json/moments/maker/JsonTweetMetadata;-><init>()V

    .line 24
    iget-object v1, p0, Lcom/twitter/model/moments/maker/n;->b:Lcom/twitter/model/moments/ak;

    iget-object v1, v1, Lcom/twitter/model/moments/ak;->e:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/twitter/model/json/moments/maker/JsonTweetMetadata;->a:Ljava/lang/String;

    .line 25
    invoke-static {p0}, Lcom/twitter/model/json/moments/maker/JsonMediaData;->a(Lcom/twitter/model/moments/maker/n;)Lcom/twitter/model/json/moments/maker/JsonMediaData;

    move-result-object v1

    iput-object v1, v0, Lcom/twitter/model/json/moments/maker/JsonTweetMetadata;->b:Lcom/twitter/model/json/moments/maker/JsonMediaData;

    .line 26
    iget-object v1, p0, Lcom/twitter/model/moments/maker/n;->d:Lcom/twitter/model/moments/bd;

    if-eqz v1, :cond_0

    .line 27
    iget-object v1, p0, Lcom/twitter/model/moments/maker/n;->d:Lcom/twitter/model/moments/bd;

    invoke-static {v1}, Lcom/twitter/model/json/moments/JsonThemeData;->a(Lcom/twitter/model/moments/bd;)Lcom/twitter/model/json/moments/JsonThemeData;

    move-result-object v1

    iput-object v1, v0, Lcom/twitter/model/json/moments/maker/JsonTweetMetadata;->c:Lcom/twitter/model/json/moments/JsonThemeData;

    .line 29
    :cond_0
    return-object v0
.end method
