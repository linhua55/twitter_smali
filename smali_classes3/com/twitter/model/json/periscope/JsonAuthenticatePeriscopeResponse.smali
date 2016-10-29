.class public Lcom/twitter/model/json/periscope/JsonAuthenticatePeriscopeResponse;
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
        "Lcsw;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
        name = {
            "token"
        }
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
.method public a()Lcsy;
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lcsy;

    invoke-direct {v0}, Lcsy;-><init>()V

    iget-object v1, p0, Lcom/twitter/model/json/periscope/JsonAuthenticatePeriscopeResponse;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcsy;->a(Ljava/lang/String;)Lcsy;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/twitter/model/json/periscope/JsonAuthenticatePeriscopeResponse;->a()Lcsy;

    move-result-object v0

    return-object v0
.end method
