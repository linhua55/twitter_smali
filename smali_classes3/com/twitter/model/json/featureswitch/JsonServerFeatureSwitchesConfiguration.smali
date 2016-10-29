.class public Lcom/twitter/model/json/featureswitch/JsonServerFeatureSwitchesConfiguration;
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
        "Lcoj;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcnl;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public b:Ljava/util/Set;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcnx;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/Set;
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

.field public d:Lcoo;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/twitter/model/json/common/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcol;
    .locals 3

    .prologue
    .line 34
    iget-object v0, p0, Lcom/twitter/model/json/featureswitch/JsonServerFeatureSwitchesConfiguration;->a:Lcnl;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/twitter/model/json/common/InvalidJsonFormatException;

    const-string/jumbo v1, "Invalid feature switch Configs"

    invoke-direct {v0, v1}, Lcom/twitter/model/json/common/InvalidJsonFormatException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 36
    new-instance v0, Lcol;

    invoke-direct {v0}, Lcol;-><init>()V

    .line 49
    :goto_0
    return-object v0

    .line 39
    :cond_0
    new-instance v0, Lcoc;

    invoke-direct {v0}, Lcoc;-><init>()V

    iget-object v1, p0, Lcom/twitter/model/json/featureswitch/JsonServerFeatureSwitchesConfiguration;->a:Lcnl;

    iget-object v1, v1, Lcnl;->a:Ljava/util/Map;

    .line 40
    invoke-virtual {v0, v1}, Lcoc;->a(Ljava/util/Map;)Lcoc;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/featureswitch/JsonServerFeatureSwitchesConfiguration;->b:Ljava/util/Set;

    .line 41
    invoke-virtual {v0, v1}, Lcoc;->a(Ljava/util/Set;)Lcoc;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/twitter/model/json/featureswitch/JsonServerFeatureSwitchesConfiguration;->d:Lcoo;

    if-eqz v1, :cond_1

    .line 44
    iget-object v1, p0, Lcom/twitter/model/json/featureswitch/JsonServerFeatureSwitchesConfiguration;->d:Lcoo;

    iget-object v1, v1, Lcoo;->b:Ljava/lang/String;

    .line 45
    invoke-virtual {v0, v1}, Lcoc;->a(Ljava/lang/String;)Lcoc;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/model/json/featureswitch/JsonServerFeatureSwitchesConfiguration;->d:Lcoo;

    iget-object v2, v2, Lcoo;->c:Ljava/lang/String;

    .line 46
    invoke-virtual {v1, v2}, Lcoc;->b(Ljava/lang/String;)Lcoc;

    .line 49
    :cond_1
    new-instance v1, Lcol;

    invoke-direct {v1}, Lcol;-><init>()V

    .line 50
    invoke-virtual {v0}, Lcoc;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcoa;

    invoke-virtual {v1, v0}, Lcol;->a(Lcoa;)Lcol;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/featureswitch/JsonServerFeatureSwitchesConfiguration;->c:Ljava/util/Set;

    .line 51
    invoke-static {v1}, Lcom/twitter/util/collection/au;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcol;->a(Ljava/util/Set;)Lcol;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic c()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/twitter/model/json/featureswitch/JsonServerFeatureSwitchesConfiguration;->a()Lcol;

    move-result-object v0

    return-object v0
.end method
