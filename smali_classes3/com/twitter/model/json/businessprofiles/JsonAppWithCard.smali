.class public Lcom/twitter/model/json/businessprofiles/JsonAppWithCard;
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
        "Lcom/twitter/model/businessprofiles/e;",
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

.field public c:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public d:Lclw;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/twitter/model/json/common/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/model/businessprofiles/h;
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lcom/twitter/model/businessprofiles/h;

    invoke-direct {v0}, Lcom/twitter/model/businessprofiles/h;-><init>()V

    iget-object v1, p0, Lcom/twitter/model/json/businessprofiles/JsonAppWithCard;->a:Ljava/lang/String;

    .line 31
    invoke-virtual {v0, v1}, Lcom/twitter/model/businessprofiles/h;->a(Ljava/lang/String;)Lcom/twitter/model/businessprofiles/h;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/businessprofiles/JsonAppWithCard;->b:Ljava/lang/String;

    .line 32
    invoke-virtual {v0, v1}, Lcom/twitter/model/businessprofiles/h;->b(Ljava/lang/String;)Lcom/twitter/model/businessprofiles/h;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/businessprofiles/JsonAppWithCard;->c:Ljava/lang/String;

    .line 33
    invoke-virtual {v0, v1}, Lcom/twitter/model/businessprofiles/h;->c(Ljava/lang/String;)Lcom/twitter/model/businessprofiles/h;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/businessprofiles/JsonAppWithCard;->d:Lclw;

    .line 34
    invoke-virtual {v0, v1}, Lcom/twitter/model/businessprofiles/h;->a(Lclw;)Lcom/twitter/model/businessprofiles/h;

    move-result-object v0

    .line 30
    return-object v0
.end method

.method public synthetic c()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/twitter/model/json/businessprofiles/JsonAppWithCard;->a()Lcom/twitter/model/businessprofiles/h;

    move-result-object v0

    return-object v0
.end method
