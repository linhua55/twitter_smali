.class public Lcom/twitter/model/json/featureswitch/JsonLocalFeatureSwitchesConfiguration;
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
        "Lcof;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcnn;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
        name = {
            "default"
        }
    .end annotation
.end field

.field public b:Ljava/util/Set;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/Set;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
        name = {
            "experiment_names"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lcnm;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public e:Ljava/util/List;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcno;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lcoo;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/twitter/model/json/common/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcoh;
    .locals 4

    .prologue
    .line 47
    iget-object v0, p0, Lcom/twitter/model/json/featureswitch/JsonLocalFeatureSwitchesConfiguration;->a:Lcnn;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/twitter/model/json/common/InvalidJsonFormatException;

    const-string/jumbo v1, "\'default\' does not exist in manifest."

    invoke-direct {v0, v1}, Lcom/twitter/model/json/common/InvalidJsonFormatException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 49
    new-instance v0, Lcoh;

    invoke-direct {v0}, Lcoh;-><init>()V

    .line 72
    :goto_0
    return-object v0

    .line 52
    :cond_0
    invoke-static {}, Lcom/twitter/util/collection/v;->e()Lcom/twitter/util/collection/v;

    move-result-object v2

    .line 53
    iget-object v0, p0, Lcom/twitter/model/json/featureswitch/JsonLocalFeatureSwitchesConfiguration;->e:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/twitter/model/json/featureswitch/JsonLocalFeatureSwitchesConfiguration;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcno;

    .line 55
    iget-object v3, v0, Lcno;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    goto :goto_1

    .line 59
    :cond_1
    new-instance v0, Lcoc;

    invoke-direct {v0}, Lcoc;-><init>()V

    iget-object v1, p0, Lcom/twitter/model/json/featureswitch/JsonLocalFeatureSwitchesConfiguration;->a:Lcnn;

    iget-object v1, v1, Lcnn;->a:Lcnl;

    iget-object v1, v1, Lcnl;->a:Ljava/util/Map;

    .line 60
    invoke-virtual {v0, v1}, Lcoc;->a(Ljava/util/Map;)Lcoc;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/featureswitch/JsonLocalFeatureSwitchesConfiguration;->a:Lcnn;

    iget-object v1, v1, Lcnn;->b:Ljava/util/Set;

    .line 61
    invoke-virtual {v0, v1}, Lcoc;->a(Ljava/util/Set;)Lcoc;

    move-result-object v3

    .line 63
    iget-object v0, p0, Lcom/twitter/model/json/featureswitch/JsonLocalFeatureSwitchesConfiguration;->f:Lcoo;

    if-eqz v0, :cond_2

    .line 64
    iget-object v0, p0, Lcom/twitter/model/json/featureswitch/JsonLocalFeatureSwitchesConfiguration;->f:Lcoo;

    iget-object v0, v0, Lcoo;->b:Ljava/lang/String;

    .line 65
    invoke-virtual {v3, v0}, Lcoc;->a(Ljava/lang/String;)Lcoc;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/featureswitch/JsonLocalFeatureSwitchesConfiguration;->f:Lcoo;

    iget-object v1, v1, Lcoo;->c:Ljava/lang/String;

    .line 66
    invoke-virtual {v0, v1}, Lcoc;->b(Ljava/lang/String;)Lcoc;

    .line 69
    :cond_2
    iget-object v0, p0, Lcom/twitter/model/json/featureswitch/JsonLocalFeatureSwitchesConfiguration;->d:Lcnm;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/twitter/model/json/featureswitch/JsonLocalFeatureSwitchesConfiguration;->d:Lcnm;

    iget-object v0, v0, Lcnm;->a:Ljava/util/Map;

    move-object v1, v0

    .line 72
    :goto_2
    new-instance v0, Lcoh;

    invoke-direct {v0}, Lcoh;-><init>()V

    .line 73
    invoke-virtual {v0, v3}, Lcoh;->a(Lcoc;)Lcoh;

    move-result-object v0

    iget-object v3, p0, Lcom/twitter/model/json/featureswitch/JsonLocalFeatureSwitchesConfiguration;->a:Lcnn;

    iget-object v3, v3, Lcnn;->c:Ljava/lang/String;

    .line 74
    invoke-virtual {v0, v3}, Lcoh;->a(Ljava/lang/String;)Lcoh;

    move-result-object v3

    .line 75
    invoke-virtual {v2}, Lcom/twitter/util/collection/v;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v3, v0}, Lcoh;->a(Ljava/util/Map;)Lcoh;

    move-result-object v0

    iget-object v2, p0, Lcom/twitter/model/json/featureswitch/JsonLocalFeatureSwitchesConfiguration;->b:Ljava/util/Set;

    .line 76
    invoke-static {v2}, Lcom/twitter/util/collection/ImmutableSet;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcoh;->a(Ljava/util/Set;)Lcoh;

    move-result-object v0

    iget-object v2, p0, Lcom/twitter/model/json/featureswitch/JsonLocalFeatureSwitchesConfiguration;->c:Ljava/util/Set;

    .line 77
    invoke-static {v2}, Lcom/twitter/util/collection/ImmutableSet;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcoh;->a(Ljava/util/Map;Ljava/util/Set;)Lcoh;

    move-result-object v0

    goto/16 :goto_0

    .line 70
    :cond_3
    invoke-static {}, Lcom/twitter/util/collection/v;->f()Ljava/util/Map;

    move-result-object v0

    move-object v1, v0

    goto :goto_2
.end method

.method public synthetic c()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/twitter/model/json/featureswitch/JsonLocalFeatureSwitchesConfiguration;->a()Lcoh;

    move-result-object v0

    return-object v0
.end method
