.class public Lcom/twitter/model/json/moments/JsonCTA;
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
        "Lcqc;",
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

.field public c:Lcom/twitter/model/moments/x;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/twitter/model/json/common/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcqe;
    .locals 2

    .prologue
    .line 25
    new-instance v1, Lcqe;

    invoke-direct {v1}, Lcqe;-><init>()V

    iget-object v0, p0, Lcom/twitter/model/json/moments/JsonCTA;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcqe;->a(Ljava/lang/String;)Lcqe;

    move-result-object v1

    iget-object v0, p0, Lcom/twitter/model/json/moments/JsonCTA;->b:Ljava/lang/String;

    .line 26
    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcqe;->b(Ljava/lang/String;)Lcqe;

    move-result-object v1

    iget-object v0, p0, Lcom/twitter/model/json/moments/JsonCTA;->c:Lcom/twitter/model/moments/x;

    .line 27
    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/x;

    invoke-virtual {v1, v0}, Lcqe;->a(Lcom/twitter/model/moments/x;)Lcqe;

    move-result-object v0

    .line 25
    return-object v0
.end method

.method public synthetic c()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/twitter/model/json/moments/JsonCTA;->a()Lcqe;

    move-result-object v0

    return-object v0
.end method
