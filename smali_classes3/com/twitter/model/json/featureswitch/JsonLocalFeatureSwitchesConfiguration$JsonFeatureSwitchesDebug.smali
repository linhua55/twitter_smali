.class public Lcom/twitter/model/json/featureswitch/JsonLocalFeatureSwitchesConfiguration$JsonFeatureSwitchesDebug;
.super Lcom/twitter/model/json/common/f;
.source "Twttr"


# annotations
.annotation build Lcom/bluelinelabs/logansquare/annotation/JsonObject;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/json/common/f",
        "<",
        "Lcnm;",
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
            "Lcnt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/twitter/model/json/common/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcnm;
    .locals 4

    .prologue
    .line 108
    invoke-static {}, Lcom/twitter/util/collection/v;->e()Lcom/twitter/util/collection/v;

    move-result-object v1

    .line 109
    iget-object v0, p0, Lcom/twitter/model/json/featureswitch/JsonLocalFeatureSwitchesConfiguration$JsonFeatureSwitchesDebug;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/twitter/model/json/featureswitch/JsonLocalFeatureSwitchesConfiguration$JsonFeatureSwitchesDebug;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcnt;

    .line 111
    iget-object v3, v0, Lcnt;->a:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    goto :goto_0

    .line 114
    :cond_0
    new-instance v2, Lcnm;

    invoke-virtual {v1}, Lcom/twitter/util/collection/v;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {v2, v0}, Lcnm;-><init>(Ljava/util/Map;)V

    return-object v2
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/twitter/model/json/featureswitch/JsonLocalFeatureSwitchesConfiguration$JsonFeatureSwitchesDebug;->a()Lcnm;

    move-result-object v0

    return-object v0
.end method
