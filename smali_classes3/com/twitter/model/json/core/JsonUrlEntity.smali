.class public Lcom/twitter/model/json/core/JsonUrlEntity;
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
        "Lcom/twitter/model/core/cx;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[I
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
        name = {
            "url_https"
        }
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public d:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public e:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
        name = {
            "url"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/twitter/model/json/common/e;-><init>()V

    .line 14
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/twitter/model/json/core/JsonUrlEntity;->a:[I

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method


# virtual methods
.method public a()Lcom/twitter/model/core/da;
    .locals 3

    .prologue
    .line 28
    new-instance v0, Lcom/twitter/model/core/da;

    invoke-direct {v0}, Lcom/twitter/model/core/da;-><init>()V

    iget-object v1, p0, Lcom/twitter/model/json/core/JsonUrlEntity;->a:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    .line 29
    invoke-virtual {v0, v1}, Lcom/twitter/model/core/da;->a(I)Lcom/twitter/model/core/f;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/da;

    iget-object v1, p0, Lcom/twitter/model/json/core/JsonUrlEntity;->a:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    .line 30
    invoke-virtual {v0, v1}, Lcom/twitter/model/core/da;->b(I)Lcom/twitter/model/core/f;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/da;

    iget-object v1, p0, Lcom/twitter/model/json/core/JsonUrlEntity;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/twitter/model/json/core/JsonUrlEntity;->b:Ljava/lang/String;

    .line 31
    :goto_0
    invoke-virtual {v0, v1}, Lcom/twitter/model/core/da;->e(Ljava/lang/String;)Lcom/twitter/model/core/cy;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/da;

    iget-object v1, p0, Lcom/twitter/model/json/core/JsonUrlEntity;->c:Ljava/lang/String;

    .line 32
    invoke-virtual {v0, v1}, Lcom/twitter/model/core/da;->f(Ljava/lang/String;)Lcom/twitter/model/core/cy;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/da;

    iget-object v1, p0, Lcom/twitter/model/json/core/JsonUrlEntity;->d:Ljava/lang/String;

    .line 33
    invoke-virtual {v0, v1}, Lcom/twitter/model/core/da;->g(Ljava/lang/String;)Lcom/twitter/model/core/cy;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/da;

    .line 28
    return-object v0

    .line 30
    :cond_0
    iget-object v1, p0, Lcom/twitter/model/json/core/JsonUrlEntity;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method public synthetic c()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/twitter/model/json/core/JsonUrlEntity;->a()Lcom/twitter/model/core/da;

    move-result-object v0

    return-object v0
.end method
