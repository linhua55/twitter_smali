.class public Lcom/twitter/model/json/moments/JsonMomentModule;
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
        "Lcqq;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/twitter/model/json/moments/JsonMoment;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public b:Ljava/util/Map;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/model/core/cs;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcqt;",
            ">;"
        }
    .end annotation
.end field

.field public d:I
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public e:Lcom/twitter/model/json/moments/JsonMomentPage;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public f:Lcom/twitter/model/moments/DisplayStyle;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public g:Lcom/twitter/model/json/moments/JsonMomentModule$JsonMomentContext;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public h:Lcqc;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/twitter/model/json/common/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcqs;
    .locals 4

    .prologue
    .line 48
    iget-object v0, p0, Lcom/twitter/model/json/moments/JsonMomentModule;->a:Lcom/twitter/model/json/moments/JsonMoment;

    invoke-virtual {v0}, Lcom/twitter/model/json/moments/JsonMoment;->a()Lcom/twitter/model/moments/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/model/moments/af;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/ad;

    .line 50
    invoke-static {}, Lcom/twitter/util/collection/v;->e()Lcom/twitter/util/collection/v;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/model/json/moments/JsonMomentModule;->e:Lcom/twitter/model/json/moments/JsonMomentPage;

    .line 51
    invoke-virtual {v2}, Lcom/twitter/model/json/moments/JsonMomentPage;->d()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/util/Map;)Lcom/twitter/util/collection/v;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/model/json/moments/JsonMomentModule;->b:Ljava/util/Map;

    .line 52
    invoke-virtual {v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/util/Map;)Lcom/twitter/util/collection/v;

    move-result-object v1

    .line 53
    invoke-virtual {v1}, Lcom/twitter/util/collection/v;->q()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 54
    iget-object v2, p0, Lcom/twitter/model/json/moments/JsonMomentModule;->e:Lcom/twitter/model/json/moments/JsonMomentPage;

    invoke-virtual {v2}, Lcom/twitter/model/json/moments/JsonMomentPage;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcqt;

    .line 55
    new-instance v3, Lcqs;

    invoke-direct {v3}, Lcqs;-><init>()V

    .line 56
    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/ad;

    invoke-virtual {v3, v0}, Lcqs;->a(Lcom/twitter/model/moments/ad;)Lcqs;

    move-result-object v0

    .line 57
    invoke-static {v1}, Lcom/twitter/model/json/common/j;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcqs;->a(Ljava/util/Map;)Lcqs;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/moments/JsonMomentModule;->a:Lcom/twitter/model/json/moments/JsonMoment;

    iget-object v1, v1, Lcom/twitter/model/json/moments/JsonMoment;->r:Ljava/util/Map;

    .line 58
    invoke-static {v1}, Lcom/twitter/util/object/g;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/model/json/common/j;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcqs;->b(Ljava/util/Map;)Lcqs;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/moments/JsonMomentModule;->c:Ljava/util/List;

    .line 59
    invoke-virtual {v0, v1}, Lcqs;->a(Ljava/util/List;)Lcqs;

    move-result-object v0

    iget v1, p0, Lcom/twitter/model/json/moments/JsonMomentModule;->d:I

    .line 60
    invoke-virtual {v0, v1}, Lcqs;->a(I)Lcqs;

    move-result-object v0

    .line 61
    invoke-virtual {v0, v2}, Lcqs;->a(Lcqt;)Lcqs;

    move-result-object v1

    iget-object v0, p0, Lcom/twitter/model/json/moments/JsonMomentModule;->f:Lcom/twitter/model/moments/DisplayStyle;

    sget-object v2, Lcom/twitter/model/moments/DisplayStyle;->a:Lcom/twitter/model/moments/DisplayStyle;

    .line 62
    invoke-static {v0, v2}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/DisplayStyle;

    invoke-virtual {v1, v0}, Lcqs;->a(Lcom/twitter/model/moments/DisplayStyle;)Lcqs;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/moments/JsonMomentModule;->h:Lcqc;

    .line 63
    invoke-virtual {v0, v1}, Lcqs;->a(Lcqc;)Lcqs;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/twitter/model/json/moments/JsonMomentModule;->g:Lcom/twitter/model/json/moments/JsonMomentModule$JsonMomentContext;

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/twitter/model/json/moments/JsonMomentModule;->g:Lcom/twitter/model/json/moments/JsonMomentModule$JsonMomentContext;

    iget-object v1, v1, Lcom/twitter/model/json/moments/JsonMomentModule$JsonMomentContext;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcqs;->a(Ljava/lang/String;)Lcqs;

    move-result-object v1

    new-instance v2, Lcom/twitter/model/moments/ap;

    iget-object v3, p0, Lcom/twitter/model/json/moments/JsonMomentModule;->g:Lcom/twitter/model/json/moments/JsonMomentModule$JsonMomentContext;

    iget-object v3, v3, Lcom/twitter/model/json/moments/JsonMomentModule$JsonMomentContext;->b:Ljava/util/Map;

    .line 66
    invoke-static {v3}, Lcom/twitter/util/object/g;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/twitter/model/moments/ap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcqs;->a(Lcom/twitter/model/moments/ap;)Lcqs;

    .line 68
    :cond_0
    return-object v0
.end method

.method public synthetic c()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/twitter/model/json/moments/JsonMomentModule;->a()Lcqs;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/twitter/model/moments/ah;
    .locals 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/twitter/model/json/moments/JsonMomentModule;->e:Lcom/twitter/model/json/moments/JsonMomentPage;

    invoke-virtual {v0}, Lcom/twitter/model/json/moments/JsonMomentPage;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcqt;

    .line 74
    if-eqz v0, :cond_0

    .line 75
    new-instance v2, Lcom/twitter/model/moments/ah;

    iget-object v1, p0, Lcom/twitter/model/json/moments/JsonMomentModule;->a:Lcom/twitter/model/json/moments/JsonMoment;

    invoke-virtual {v1}, Lcom/twitter/model/json/moments/JsonMoment;->a()Lcom/twitter/model/moments/af;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/model/moments/af;->q()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/moments/ad;

    invoke-direct {v2, v1, v0}, Lcom/twitter/model/moments/ah;-><init>(Lcom/twitter/model/moments/ad;Lcqt;)V

    move-object v0, v2

    .line 77
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
