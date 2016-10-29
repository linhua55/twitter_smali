.class public Lcom/twitter/model/json/livevideo/JsonLiveVideoEvent;
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
        "Lcom/twitter/model/livevideo/d;",
        ">;"
    }
.end annotation


# instance fields
.field public a:J
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public b:J
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
        name = {
            "owner_user_id"
        }
    .end annotation
.end field

.field public c:J
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
        name = {
            "start_time"
        }
    .end annotation
.end field

.field public d:J
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
        name = {
            "end_time"
        }
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

.field public g:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public h:Lcom/twitter/model/livevideo/a;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public i:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
        name = {
            "compose_semantic_core_id"
        }
    .end annotation
.end field

.field public j:Ljava/util/List;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
        name = {
            "placeholder_variants"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/json/card/JsonImageSpec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/twitter/model/json/common/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/model/livevideo/e;
    .locals 4

    .prologue
    .line 55
    iget-object v0, p0, Lcom/twitter/model/json/livevideo/JsonLiveVideoEvent;->j:Ljava/util/List;

    .line 56
    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/twitter/model/json/livevideo/b;

    invoke-direct {v1, p0}, Lcom/twitter/model/json/livevideo/b;-><init>(Lcom/twitter/model/json/livevideo/JsonLiveVideoEvent;)V

    .line 55
    invoke-static {v0, v1}, Lcom/twitter/util/collection/CollectionUtils;->a(Ljava/util/List;Lczn;)Ljava/util/List;

    move-result-object v0

    .line 63
    new-instance v1, Lcom/twitter/model/livevideo/e;

    invoke-direct {v1}, Lcom/twitter/model/livevideo/e;-><init>()V

    iget-wide v2, p0, Lcom/twitter/model/json/livevideo/JsonLiveVideoEvent;->a:J

    .line 64
    invoke-virtual {v1, v2, v3}, Lcom/twitter/model/livevideo/e;->a(J)Lcom/twitter/model/livevideo/e;

    move-result-object v1

    iget-wide v2, p0, Lcom/twitter/model/json/livevideo/JsonLiveVideoEvent;->b:J

    .line 65
    invoke-virtual {v1, v2, v3}, Lcom/twitter/model/livevideo/e;->b(J)Lcom/twitter/model/livevideo/e;

    move-result-object v1

    iget-wide v2, p0, Lcom/twitter/model/json/livevideo/JsonLiveVideoEvent;->c:J

    .line 66
    invoke-virtual {v1, v2, v3}, Lcom/twitter/model/livevideo/e;->c(J)Lcom/twitter/model/livevideo/e;

    move-result-object v1

    iget-wide v2, p0, Lcom/twitter/model/json/livevideo/JsonLiveVideoEvent;->d:J

    .line 67
    invoke-virtual {v1, v2, v3}, Lcom/twitter/model/livevideo/e;->d(J)Lcom/twitter/model/livevideo/e;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/model/json/livevideo/JsonLiveVideoEvent;->e:Ljava/lang/String;

    .line 68
    invoke-virtual {v1, v2}, Lcom/twitter/model/livevideo/e;->b(Ljava/lang/String;)Lcom/twitter/model/livevideo/e;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/model/json/livevideo/JsonLiveVideoEvent;->f:Ljava/lang/String;

    .line 69
    invoke-virtual {v1, v2}, Lcom/twitter/model/livevideo/e;->c(Ljava/lang/String;)Lcom/twitter/model/livevideo/e;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/model/json/livevideo/JsonLiveVideoEvent;->g:Ljava/lang/String;

    .line 70
    invoke-virtual {v1, v2}, Lcom/twitter/model/livevideo/e;->a(Ljava/lang/String;)Lcom/twitter/model/livevideo/e;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/model/json/livevideo/JsonLiveVideoEvent;->h:Lcom/twitter/model/livevideo/a;

    .line 71
    invoke-virtual {v1, v2}, Lcom/twitter/model/livevideo/e;->a(Lcom/twitter/model/livevideo/a;)Lcom/twitter/model/livevideo/e;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/model/json/livevideo/JsonLiveVideoEvent;->i:Ljava/lang/String;

    .line 72
    invoke-virtual {v1, v2}, Lcom/twitter/model/livevideo/e;->d(Ljava/lang/String;)Lcom/twitter/model/livevideo/e;

    move-result-object v1

    .line 73
    invoke-virtual {v1, v0}, Lcom/twitter/model/livevideo/e;->a(Ljava/util/List;)Lcom/twitter/model/livevideo/e;

    move-result-object v0

    .line 63
    return-object v0
.end method

.method public synthetic c()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/twitter/model/json/livevideo/JsonLiveVideoEvent;->a()Lcom/twitter/model/livevideo/e;

    move-result-object v0

    return-object v0
.end method
