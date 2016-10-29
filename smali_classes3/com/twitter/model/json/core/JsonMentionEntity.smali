.class public Lcom/twitter/model/json/core/JsonMentionEntity;
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
        "Lcom/twitter/model/core/av;",
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
    .end annotation
.end field

.field public c:J
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
        name = {
            "id"
        }
    .end annotation
.end field

.field public d:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
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

    iput-object v0, p0, Lcom/twitter/model/json/core/JsonMentionEntity;->a:[I

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method


# virtual methods
.method public a()Lcom/twitter/model/core/aw;
    .locals 4

    .prologue
    .line 26
    new-instance v0, Lcom/twitter/model/core/aw;

    invoke-direct {v0}, Lcom/twitter/model/core/aw;-><init>()V

    iget-object v1, p0, Lcom/twitter/model/json/core/JsonMentionEntity;->a:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    .line 27
    invoke-virtual {v0, v1}, Lcom/twitter/model/core/aw;->a(I)Lcom/twitter/model/core/f;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/aw;

    iget-object v1, p0, Lcom/twitter/model/json/core/JsonMentionEntity;->a:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    .line 28
    invoke-virtual {v0, v1}, Lcom/twitter/model/core/aw;->b(I)Lcom/twitter/model/core/f;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/aw;

    iget-object v1, p0, Lcom/twitter/model/json/core/JsonMentionEntity;->b:Ljava/lang/String;

    .line 29
    invoke-virtual {v0, v1}, Lcom/twitter/model/core/aw;->a(Ljava/lang/String;)Lcom/twitter/model/core/aw;

    move-result-object v0

    iget-wide v2, p0, Lcom/twitter/model/json/core/JsonMentionEntity;->c:J

    .line 30
    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/core/aw;->a(J)Lcom/twitter/model/core/aw;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/core/JsonMentionEntity;->d:Ljava/lang/String;

    .line 31
    invoke-virtual {v0, v1}, Lcom/twitter/model/core/aw;->b(Ljava/lang/String;)Lcom/twitter/model/core/aw;

    move-result-object v0

    .line 26
    return-object v0
.end method

.method public synthetic c()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/twitter/model/json/core/JsonMentionEntity;->a()Lcom/twitter/model/core/aw;

    move-result-object v0

    return-object v0
.end method
