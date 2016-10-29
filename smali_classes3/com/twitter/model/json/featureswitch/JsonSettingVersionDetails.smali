.class public Lcom/twitter/model/json/featureswitch/JsonSettingVersionDetails;
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
        "Lcoo;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
        name = {
            "experiments"
        }
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
        name = {
            "feature_switches"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/twitter/model/json/common/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcoo;
    .locals 3

    .prologue
    .line 22
    iget-object v0, p0, Lcom/twitter/model/json/featureswitch/JsonSettingVersionDetails;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/json/featureswitch/JsonSettingVersionDetails;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 23
    new-instance v0, Lcoo;

    iget-object v1, p0, Lcom/twitter/model/json/featureswitch/JsonSettingVersionDetails;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/twitter/model/json/featureswitch/JsonSettingVersionDetails;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcoo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/twitter/model/json/featureswitch/JsonSettingVersionDetails;->a()Lcoo;

    move-result-object v0

    return-object v0
.end method
