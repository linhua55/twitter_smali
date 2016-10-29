.class public Lcom/twitter/model/json/core/JsonRecommendationReason;
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
        "Lcom/twitter/model/core/bb;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public c:Z
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public d:Z
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/twitter/model/json/common/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/model/core/bd;
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/twitter/model/core/bd;

    invoke-direct {v0}, Lcom/twitter/model/core/bd;-><init>()V

    iget-object v1, p0, Lcom/twitter/model/json/core/JsonRecommendationReason;->a:Ljava/lang/String;

    .line 30
    invoke-virtual {v0, v1}, Lcom/twitter/model/core/bd;->a(Ljava/lang/String;)Lcom/twitter/model/core/bd;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/core/JsonRecommendationReason;->b:Ljava/lang/String;

    .line 31
    invoke-virtual {v0, v1}, Lcom/twitter/model/core/bd;->b(Ljava/lang/String;)Lcom/twitter/model/core/bd;

    move-result-object v0

    iget-boolean v1, p0, Lcom/twitter/model/json/core/JsonRecommendationReason;->c:Z

    .line 32
    invoke-virtual {v0, v1}, Lcom/twitter/model/core/bd;->a(Z)Lcom/twitter/model/core/bd;

    move-result-object v0

    iget-boolean v1, p0, Lcom/twitter/model/json/core/JsonRecommendationReason;->d:Z

    .line 33
    invoke-virtual {v0, v1}, Lcom/twitter/model/core/bd;->b(Z)Lcom/twitter/model/core/bd;

    move-result-object v0

    .line 29
    return-object v0
.end method

.method public synthetic c()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/twitter/model/json/core/JsonRecommendationReason;->a()Lcom/twitter/model/core/bd;

    move-result-object v0

    return-object v0
.end method
