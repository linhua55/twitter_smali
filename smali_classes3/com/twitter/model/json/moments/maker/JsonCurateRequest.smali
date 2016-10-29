.class public Lcom/twitter/model/json/moments/maker/JsonCurateRequest;
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
            "Lcom/twitter/model/json/moments/maker/JsonCurateOperation;",
            ">;"
        }
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

.method public static a(Ljava/util/List;)Lcom/twitter/model/json/moments/maker/JsonCurateRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/json/moments/maker/JsonCurateOperation;",
            ">;)",
            "Lcom/twitter/model/json/moments/maker/JsonCurateRequest;"
        }
    .end annotation

    .prologue
    .line 19
    new-instance v0, Lcom/twitter/model/json/moments/maker/JsonCurateRequest;

    invoke-direct {v0}, Lcom/twitter/model/json/moments/maker/JsonCurateRequest;-><init>()V

    .line 20
    iput-object p0, v0, Lcom/twitter/model/json/moments/maker/JsonCurateRequest;->a:Ljava/util/List;

    .line 21
    return-object v0
.end method
