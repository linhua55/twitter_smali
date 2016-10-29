.class public Lcom/twitter/model/json/moments/maker/JsonCurateMetadataRequest;
.super Lcom/twitter/model/json/common/b;
.source "Twttr"


# annotations
.annotation build Lcom/bluelinelabs/logansquare/annotation/JsonObject;
    fieldNamingPolicy = .enum Lcom/bluelinelabs/logansquare/annotation/JsonObject$FieldNamingPolicy;->LOWER_CASE_WITH_UNDERSCORES:Lcom/bluelinelabs/logansquare/annotation/JsonObject$FieldNamingPolicy;
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/json/moments/maker/JsonTweetMetadata;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/twitter/model/json/common/b;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;)Lcom/twitter/model/json/moments/maker/JsonCurateMetadataRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/moments/maker/q;",
            ">;)",
            "Lcom/twitter/model/json/moments/maker/JsonCurateMetadataRequest;"
        }
    .end annotation

    .prologue
    .line 21
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v1

    .line 22
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/maker/q;

    .line 23
    iget-object v0, v0, Lcom/twitter/model/moments/maker/q;->a:Lcom/twitter/model/moments/maker/n;

    invoke-static {v0}, Lcom/twitter/model/json/moments/maker/JsonTweetMetadata;->a(Lcom/twitter/model/moments/maker/n;)Lcom/twitter/model/json/moments/maker/JsonTweetMetadata;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    goto :goto_0

    .line 25
    :cond_0
    new-instance v2, Lcom/twitter/model/json/moments/maker/JsonCurateMetadataRequest;

    invoke-direct {v2}, Lcom/twitter/model/json/moments/maker/JsonCurateMetadataRequest;-><init>()V

    .line 26
    invoke-virtual {v1}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, v2, Lcom/twitter/model/json/moments/maker/JsonCurateMetadataRequest;->a:Ljava/util/List;

    .line 27
    return-object v2
.end method
