.class public Lcom/twitter/model/json/moments/maker/JsonSetMediaIdAsCoverRequest;
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/twitter/model/json/common/b;-><init>()V

    return-void
.end method

.method public static a(J)Lcom/twitter/model/json/moments/maker/JsonSetMediaIdAsCoverRequest;
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lcom/twitter/model/json/moments/maker/JsonSetMediaIdAsCoverRequest;

    invoke-direct {v0}, Lcom/twitter/model/json/moments/maker/JsonSetMediaIdAsCoverRequest;-><init>()V

    .line 18
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/twitter/model/json/moments/maker/JsonSetMediaIdAsCoverRequest;->a:Ljava/lang/String;

    .line 19
    return-object v0
.end method
