.class public Lcom/twitter/model/json/moments/maker/JsonUpdateMomentResponse;
.super Lcom/twitter/model/json/common/f;
.source "Twttr"


# annotations
.annotation build Lcom/bluelinelabs/logansquare/annotation/JsonObject;
    fieldNamingPolicy = .enum Lcom/bluelinelabs/logansquare/annotation/JsonObject$FieldNamingPolicy;->LOWER_CASE_WITH_UNDERSCORES:Lcom/bluelinelabs/logansquare/annotation/JsonObject$FieldNamingPolicy;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/json/common/f",
        "<",
        "Lcom/twitter/model/moments/maker/ar;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcqq;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/json/moments/maker/JsonOperationError;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/twitter/model/json/common/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/model/moments/maker/ar;
    .locals 3

    .prologue
    .line 26
    iget-object v0, p0, Lcom/twitter/model/json/moments/maker/JsonUpdateMomentResponse;->b:Ljava/util/List;

    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 27
    :goto_0
    new-instance v1, Lcom/twitter/model/moments/maker/ar;

    iget-object v2, p0, Lcom/twitter/model/json/moments/maker/JsonUpdateMomentResponse;->a:Lcqq;

    invoke-direct {v1, v2, v0}, Lcom/twitter/model/moments/maker/ar;-><init>(Lcqq;Z)V

    return-object v1

    .line 26
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/twitter/model/json/moments/maker/JsonUpdateMomentResponse;->a()Lcom/twitter/model/moments/maker/ar;

    move-result-object v0

    return-object v0
.end method
