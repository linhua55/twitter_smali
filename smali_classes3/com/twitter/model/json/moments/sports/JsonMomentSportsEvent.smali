.class public Lcom/twitter/model/json/moments/sports/JsonMomentSportsEvent;
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
        "Lcrc;",
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

.field public c:Ljava/util/List;
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

.field public d:J
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
            "Lcrg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/twitter/model/json/common/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcre;
    .locals 4

    .prologue
    .line 34
    new-instance v0, Lcre;

    invoke-direct {v0}, Lcre;-><init>()V

    iget-object v1, p0, Lcom/twitter/model/json/moments/sports/JsonMomentSportsEvent;->a:Ljava/lang/String;

    .line 35
    invoke-virtual {v0, v1}, Lcre;->a(Ljava/lang/String;)Lcre;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/moments/sports/JsonMomentSportsEvent;->b:Ljava/lang/String;

    .line 36
    invoke-virtual {v0, v1}, Lcre;->b(Ljava/lang/String;)Lcre;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/moments/sports/JsonMomentSportsEvent;->c:Ljava/util/List;

    .line 37
    invoke-virtual {v0, v1}, Lcre;->a(Ljava/util/List;)Lcre;

    move-result-object v0

    iget-wide v2, p0, Lcom/twitter/model/json/moments/sports/JsonMomentSportsEvent;->d:J

    .line 38
    invoke-virtual {v0, v2, v3}, Lcre;->a(J)Lcre;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/moments/sports/JsonMomentSportsEvent;->e:Ljava/util/List;

    .line 39
    invoke-virtual {v0, v1}, Lcre;->b(Ljava/util/List;)Lcre;

    move-result-object v0

    .line 34
    return-object v0
.end method

.method public synthetic c()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/twitter/model/json/moments/sports/JsonMomentSportsEvent;->a()Lcre;

    move-result-object v0

    return-object v0
.end method
