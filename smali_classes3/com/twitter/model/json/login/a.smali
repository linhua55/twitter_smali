.class public Lcom/twitter/model/json/login/a;
.super Lcom/twitter/model/json/common/n;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/json/common/n",
        "<",
        "Lcom/twitter/model/login/OneFactorEligibleFactor$FactorType;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 10
    sget-object v0, Lcom/twitter/model/login/OneFactorEligibleFactor$FactorType;->c:Lcom/twitter/model/login/OneFactorEligibleFactor$FactorType;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/util/Map$Entry;

    const/4 v2, 0x0

    const-string/jumbo v3, "sms"

    sget-object v4, Lcom/twitter/model/login/OneFactorEligibleFactor$FactorType;->a:Lcom/twitter/model/login/OneFactorEligibleFactor$FactorType;

    .line 11
    invoke-static {v3, v4}, Lcom/twitter/model/json/login/a;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "email"

    sget-object v4, Lcom/twitter/model/login/OneFactorEligibleFactor$FactorType;->b:Lcom/twitter/model/login/OneFactorEligibleFactor$FactorType;

    .line 12
    invoke-static {v3, v4}, Lcom/twitter/model/json/login/a;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    aput-object v3, v1, v2

    .line 10
    invoke-direct {p0, v0, v1}, Lcom/twitter/model/json/common/n;-><init>(Ljava/lang/Object;[Ljava/util/Map$Entry;)V

    .line 13
    return-void
.end method
