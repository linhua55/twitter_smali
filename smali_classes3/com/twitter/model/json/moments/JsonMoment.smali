.class public Lcom/twitter/model/json/moments/JsonMoment;
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
        "Lcom/twitter/model/moments/ad;",
        ">;"
    }
.end annotation


# instance fields
.field public a:J
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public d:Z
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public e:Z
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
        name = {
            "sensitive"
        }
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

.field public h:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public i:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public j:Z
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public k:Z
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public l:I
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public m:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public n:Lcom/twitter/model/moments/a;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public o:Lcss;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public p:Lcom/twitter/model/moments/o;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public q:J
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public r:Ljava/util/Map;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/twitter/model/json/common/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/model/moments/af;
    .locals 4

    .prologue
    .line 60
    new-instance v0, Lcom/twitter/model/moments/af;

    invoke-direct {v0}, Lcom/twitter/model/moments/af;-><init>()V

    iget-wide v2, p0, Lcom/twitter/model/json/moments/JsonMoment;->a:J

    .line 61
    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/moments/af;->a(J)Lcom/twitter/model/moments/af;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/moments/JsonMoment;->b:Ljava/lang/String;

    .line 62
    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/af;->a(Ljava/lang/String;)Lcom/twitter/model/moments/af;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/moments/JsonMoment;->c:Ljava/lang/String;

    .line 63
    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/af;->f(Ljava/lang/String;)Lcom/twitter/model/moments/af;

    move-result-object v0

    iget-boolean v1, p0, Lcom/twitter/model/json/moments/JsonMoment;->d:Z

    .line 64
    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/af;->b(Z)Lcom/twitter/model/moments/af;

    move-result-object v0

    iget-boolean v1, p0, Lcom/twitter/model/json/moments/JsonMoment;->e:Z

    .line 65
    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/af;->c(Z)Lcom/twitter/model/moments/af;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/moments/JsonMoment;->f:Ljava/lang/String;

    .line 66
    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/af;->b(Ljava/lang/String;)Lcom/twitter/model/moments/af;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/moments/JsonMoment;->g:Ljava/lang/String;

    .line 67
    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/af;->c(Ljava/lang/String;)Lcom/twitter/model/moments/af;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/moments/JsonMoment;->h:Ljava/lang/String;

    .line 68
    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/af;->d(Ljava/lang/String;)Lcom/twitter/model/moments/af;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/moments/JsonMoment;->i:Ljava/lang/String;

    .line 69
    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/af;->e(Ljava/lang/String;)Lcom/twitter/model/moments/af;

    move-result-object v0

    iget-boolean v1, p0, Lcom/twitter/model/json/moments/JsonMoment;->j:Z

    .line 70
    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/af;->a(Z)Lcom/twitter/model/moments/af;

    move-result-object v0

    iget-boolean v1, p0, Lcom/twitter/model/json/moments/JsonMoment;->k:Z

    .line 71
    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/af;->d(Z)Lcom/twitter/model/moments/af;

    move-result-object v0

    iget v1, p0, Lcom/twitter/model/json/moments/JsonMoment;->l:I

    .line 72
    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/af;->a(I)Lcom/twitter/model/moments/af;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/moments/JsonMoment;->m:Ljava/lang/String;

    .line 73
    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/af;->g(Ljava/lang/String;)Lcom/twitter/model/moments/af;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/moments/JsonMoment;->n:Lcom/twitter/model/moments/a;

    .line 74
    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/af;->a(Lcom/twitter/model/moments/a;)Lcom/twitter/model/moments/af;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/moments/JsonMoment;->o:Lcss;

    .line 75
    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/af;->a(Lcss;)Lcom/twitter/model/moments/af;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/moments/JsonMoment;->p:Lcom/twitter/model/moments/o;

    .line 76
    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/af;->a(Lcom/twitter/model/moments/o;)Lcom/twitter/model/moments/af;

    move-result-object v0

    iget-wide v2, p0, Lcom/twitter/model/json/moments/JsonMoment;->q:J

    .line 77
    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/moments/af;->b(J)Lcom/twitter/model/moments/af;

    move-result-object v0

    .line 60
    return-object v0
.end method

.method public synthetic c()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/twitter/model/json/moments/JsonMoment;->a()Lcom/twitter/model/moments/af;

    move-result-object v0

    return-object v0
.end method
