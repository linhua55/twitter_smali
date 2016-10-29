.class public Lcom/twitter/model/json/core/JsonTweetEntities;
.super Lcom/twitter/model/json/common/e;
.source "Twttr"


# annotations
.annotation build Lcom/bluelinelabs/logansquare/annotation/JsonObject;
    fieldNamingPolicy = .enum Lcom/bluelinelabs/logansquare/annotation/JsonObject$FieldNamingPolicy;->LOWER_CASE_WITH_UNDERSCORES:Lcom/bluelinelabs/logansquare/annotation/JsonObject$FieldNamingPolicy;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/json/common/e",
        "<",
        "Lcom/twitter/model/core/bm;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/cx;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/MediaEntity;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/av;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/List;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/q;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/List;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/twitter/model/json/common/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/model/core/bo;
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lcom/twitter/model/core/bo;

    invoke-direct {v0}, Lcom/twitter/model/core/bo;-><init>()V

    iget-object v1, p0, Lcom/twitter/model/json/core/JsonTweetEntities;->a:Ljava/util/List;

    .line 39
    invoke-static {v1}, Lcom/twitter/util/collection/ImmutableList;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/model/core/j;->a(Ljava/util/List;)Lcom/twitter/model/core/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/core/bo;->a(Lcom/twitter/model/core/j;)Lcom/twitter/model/core/bo;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/core/JsonTweetEntities;->b:Ljava/util/List;

    .line 40
    invoke-static {v1}, Lcom/twitter/util/collection/ImmutableList;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/model/core/ac;->b(Ljava/util/List;)Lcom/twitter/model/core/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/core/bo;->a(Lcom/twitter/model/core/ac;)Lcom/twitter/model/core/bo;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/core/JsonTweetEntities;->c:Ljava/util/List;

    .line 41
    invoke-static {v1}, Lcom/twitter/util/collection/ImmutableList;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/model/core/j;->a(Ljava/util/List;)Lcom/twitter/model/core/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/core/bo;->b(Lcom/twitter/model/core/j;)Lcom/twitter/model/core/bo;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/core/JsonTweetEntities;->d:Ljava/util/List;

    .line 42
    invoke-static {v1}, Lcom/twitter/util/collection/ImmutableList;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/model/core/j;->a(Ljava/util/List;)Lcom/twitter/model/core/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/core/bo;->c(Lcom/twitter/model/core/j;)Lcom/twitter/model/core/bo;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/core/JsonTweetEntities;->e:Ljava/util/List;

    .line 43
    invoke-static {v1}, Lcom/twitter/util/collection/ImmutableList;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/model/core/j;->a(Ljava/util/List;)Lcom/twitter/model/core/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/core/bo;->d(Lcom/twitter/model/core/j;)Lcom/twitter/model/core/bo;

    move-result-object v0

    .line 38
    return-object v0
.end method

.method public synthetic c()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/twitter/model/json/core/JsonTweetEntities;->a()Lcom/twitter/model/core/bo;

    move-result-object v0

    return-object v0
.end method
