.class public Lcom/twitter/model/json/moments/JsonGuideSection;
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
        "Lcqk;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public b:Lcom/twitter/model/moments/MomentGuideSectionType;
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
            "Lcqq;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public e:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public f:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
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
.method public a()Lcqm;
    .locals 3

    .prologue
    .line 35
    new-instance v0, Lcqm;

    invoke-direct {v0}, Lcqm;-><init>()V

    iget-object v1, p0, Lcom/twitter/model/json/moments/JsonGuideSection;->a:Ljava/lang/String;

    .line 36
    invoke-virtual {v0, v1}, Lcqm;->a(Ljava/lang/String;)Lcqm;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/moments/JsonGuideSection;->d:Ljava/lang/String;

    .line 37
    invoke-virtual {v0, v1}, Lcqm;->b(Ljava/lang/String;)Lcqm;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/moments/JsonGuideSection;->e:Ljava/lang/String;

    .line 38
    invoke-virtual {v0, v1}, Lcqm;->c(Ljava/lang/String;)Lcqm;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/moments/JsonGuideSection;->f:Ljava/lang/String;

    .line 39
    invoke-virtual {v0, v1}, Lcqm;->d(Ljava/lang/String;)Lcqm;

    move-result-object v1

    iget-object v0, p0, Lcom/twitter/model/json/moments/JsonGuideSection;->b:Lcom/twitter/model/moments/MomentGuideSectionType;

    sget-object v2, Lcom/twitter/model/moments/MomentGuideSectionType;->c:Lcom/twitter/model/moments/MomentGuideSectionType;

    .line 40
    invoke-static {v0, v2}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/MomentGuideSectionType;

    invoke-virtual {v1, v0}, Lcqm;->a(Lcom/twitter/model/moments/MomentGuideSectionType;)Lcqm;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/moments/JsonGuideSection;->c:Ljava/util/List;

    .line 41
    invoke-static {v1}, Lcom/twitter/util/collection/ImmutableList;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcqm;->a(Ljava/lang/Iterable;)Lcqm;

    move-result-object v0

    .line 35
    return-object v0
.end method

.method public synthetic c()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/twitter/model/json/moments/JsonGuideSection;->a()Lcqm;

    move-result-object v0

    return-object v0
.end method
