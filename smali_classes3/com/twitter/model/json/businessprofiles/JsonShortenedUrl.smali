.class public Lcom/twitter/model/json/businessprofiles/JsonShortenedUrl;
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
        "Lcom/twitter/model/businessprofiles/an;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/twitter/model/json/common/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/model/businessprofiles/an;
    .locals 3

    .prologue
    .line 24
    new-instance v0, Lcom/twitter/model/businessprofiles/an;

    iget-object v1, p0, Lcom/twitter/model/json/businessprofiles/JsonShortenedUrl;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/twitter/util/object/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/model/json/businessprofiles/JsonShortenedUrl;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/twitter/util/object/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/twitter/model/businessprofiles/an;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/twitter/model/json/businessprofiles/JsonShortenedUrl;->a()Lcom/twitter/model/businessprofiles/an;

    move-result-object v0

    return-object v0
.end method
