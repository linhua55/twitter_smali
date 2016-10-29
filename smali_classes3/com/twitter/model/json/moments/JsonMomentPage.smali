.class public Lcom/twitter/model/json/moments/JsonMomentPage;
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
        "Lcqt;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public b:J
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public c:Lcqn;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public d:Lcom/twitter/model/json/moments/JsonRenderData;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public e:Lcom/twitter/model/moments/z;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public f:Lcom/twitter/model/moments/MomentPageType;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public g:Lcom/twitter/model/moments/u;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public h:Lcom/twitter/model/json/moments/JsonMomentModule;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/twitter/model/json/common/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcqv;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 43
    new-instance v0, Lcqv;

    invoke-direct {v0}, Lcqv;-><init>()V

    iget-object v2, p0, Lcom/twitter/model/json/moments/JsonMomentPage;->a:Ljava/lang/String;

    .line 44
    invoke-virtual {v0, v2}, Lcqv;->a(Ljava/lang/String;)Lcqv;

    move-result-object v2

    iget-object v0, p0, Lcom/twitter/model/json/moments/JsonMomentPage;->f:Lcom/twitter/model/moments/MomentPageType;

    sget-object v3, Lcom/twitter/model/moments/MomentPageType;->a:Lcom/twitter/model/moments/MomentPageType;

    .line 45
    invoke-static {v0, v3}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/MomentPageType;

    invoke-virtual {v2, v0}, Lcqv;->a(Lcom/twitter/model/moments/MomentPageType;)Lcqv;

    move-result-object v0

    iget-object v2, p0, Lcom/twitter/model/json/moments/JsonMomentPage;->c:Lcqn;

    .line 46
    invoke-virtual {v0, v2}, Lcqv;->a(Lcqn;)Lcqv;

    move-result-object v2

    iget-object v0, p0, Lcom/twitter/model/json/moments/JsonMomentPage;->d:Lcom/twitter/model/json/moments/JsonRenderData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/model/json/moments/JsonMomentPage;->c:Lcqn;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/model/json/moments/JsonMomentPage;->d:Lcom/twitter/model/json/moments/JsonRenderData;

    iget-object v3, p0, Lcom/twitter/model/json/moments/JsonMomentPage;->c:Lcqn;

    iget-object v3, v3, Lcqn;->c:Lcom/twitter/util/math/Size;

    .line 48
    invoke-virtual {v0, v3}, Lcom/twitter/model/json/moments/JsonRenderData;->a(Lcom/twitter/util/math/Size;)Lcom/twitter/model/moments/k;

    move-result-object v0

    .line 47
    :goto_0
    invoke-virtual {v2, v0}, Lcqv;->a(Lcom/twitter/model/moments/k;)Lcqv;

    move-result-object v2

    iget-object v0, p0, Lcom/twitter/model/json/moments/JsonMomentPage;->d:Lcom/twitter/model/json/moments/JsonRenderData;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/twitter/model/json/moments/JsonMomentPage;->d:Lcom/twitter/model/json/moments/JsonRenderData;

    iget-object v0, v0, Lcom/twitter/model/json/moments/JsonRenderData;->b:Lcom/twitter/model/moments/bd;

    .line 49
    :goto_1
    invoke-virtual {v2, v0}, Lcqv;->a(Lcom/twitter/model/moments/bd;)Lcqv;

    move-result-object v0

    iget-wide v2, p0, Lcom/twitter/model/json/moments/JsonMomentPage;->b:J

    .line 50
    invoke-virtual {v0, v2, v3}, Lcqv;->a(J)Lcqv;

    move-result-object v0

    iget-object v2, p0, Lcom/twitter/model/json/moments/JsonMomentPage;->e:Lcom/twitter/model/moments/z;

    .line 51
    invoke-virtual {v0, v2}, Lcqv;->a(Lcom/twitter/model/moments/z;)Lcqv;

    move-result-object v0

    iget-object v2, p0, Lcom/twitter/model/json/moments/JsonMomentPage;->g:Lcom/twitter/model/moments/u;

    .line 52
    invoke-virtual {v0, v2}, Lcqv;->a(Lcom/twitter/model/moments/u;)Lcqv;

    move-result-object v0

    iget-object v2, p0, Lcom/twitter/model/json/moments/JsonMomentPage;->h:Lcom/twitter/model/json/moments/JsonMomentModule;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/twitter/model/json/moments/JsonMomentPage;->h:Lcom/twitter/model/json/moments/JsonMomentModule;

    .line 53
    invoke-virtual {v1}, Lcom/twitter/model/json/moments/JsonMomentModule;->d()Lcom/twitter/model/moments/ah;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Lcqv;->a(Lcom/twitter/model/moments/ah;)Lcqv;

    move-result-object v0

    .line 43
    return-object v0

    :cond_1
    move-object v0, v1

    .line 48
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 47
    goto :goto_1
.end method

.method public synthetic c()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/twitter/model/json/moments/JsonMomentPage;->a()Lcqv;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/model/core/cs;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/twitter/model/json/moments/JsonMomentPage;->h:Lcom/twitter/model/json/moments/JsonMomentModule;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/twitter/model/json/moments/JsonMomentPage;->h:Lcom/twitter/model/json/moments/JsonMomentModule;

    iget-object v0, v0, Lcom/twitter/model/json/moments/JsonMomentModule;->b:Ljava/util/Map;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 61
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/twitter/util/collection/v;->f()Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method
