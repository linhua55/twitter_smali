.class public Lcom/twitter/model/json/businessprofiles/JsonTweetList;
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
        "Lcom/twitter/model/businessprofiles/as;",
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
            "Ljava/lang/String;",
            ">;"
        }
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
    .line 14
    invoke-direct {p0}, Lcom/twitter/model/json/common/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/model/businessprofiles/au;
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lcom/twitter/model/businessprofiles/au;

    invoke-direct {v0}, Lcom/twitter/model/businessprofiles/au;-><init>()V

    iget-object v1, p0, Lcom/twitter/model/json/businessprofiles/JsonTweetList;->a:Ljava/util/List;

    .line 26
    invoke-virtual {v0, v1}, Lcom/twitter/model/businessprofiles/au;->a(Ljava/util/List;)Lcom/twitter/model/businessprofiles/au;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/businessprofiles/JsonTweetList;->b:Ljava/lang/String;

    .line 27
    invoke-virtual {v0, v1}, Lcom/twitter/model/businessprofiles/au;->a(Ljava/lang/String;)Lcom/twitter/model/businessprofiles/au;

    move-result-object v0

    .line 25
    return-object v0
.end method

.method public synthetic c()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/twitter/model/json/businessprofiles/JsonTweetList;->a()Lcom/twitter/model/businessprofiles/au;

    move-result-object v0

    return-object v0
.end method
