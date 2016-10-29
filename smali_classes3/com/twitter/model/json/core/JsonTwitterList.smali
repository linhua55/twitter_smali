.class public Lcom/twitter/model/json/core/JsonTwitterList;
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
        "Lcom/twitter/model/core/cm;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public b:I
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public c:J
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public d:Z
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public e:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
        name = {
            "name"
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
        name = {
            "profile_image_url"
        }
    .end annotation
.end field

.field public i:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public j:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public k:Lcom/twitter/model/core/TwitterUser;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
        name = {
            "user"
        }
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
.method public a()Lcom/twitter/model/core/cn;
    .locals 4

    .prologue
    .line 41
    new-instance v0, Lcom/twitter/model/core/cn;

    invoke-direct {v0}, Lcom/twitter/model/core/cn;-><init>()V

    iget-boolean v1, p0, Lcom/twitter/model/json/core/JsonTwitterList;->d:Z

    .line 42
    invoke-virtual {v0, v1}, Lcom/twitter/model/core/cn;->a(Z)Lcom/twitter/model/core/cn;

    move-result-object v1

    const-string/jumbo v0, "public"

    iget-object v2, p0, Lcom/twitter/model/json/core/JsonTwitterList;->i:Ljava/lang/String;

    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/twitter/model/core/cn;->b(Z)Lcom/twitter/model/core/cn;

    move-result-object v0

    iget v1, p0, Lcom/twitter/model/json/core/JsonTwitterList;->a:I

    .line 44
    invoke-virtual {v0, v1}, Lcom/twitter/model/core/cn;->a(I)Lcom/twitter/model/core/cn;

    move-result-object v0

    iget v1, p0, Lcom/twitter/model/json/core/JsonTwitterList;->b:I

    .line 45
    invoke-virtual {v0, v1}, Lcom/twitter/model/core/cn;->b(I)Lcom/twitter/model/core/cn;

    move-result-object v0

    iget-wide v2, p0, Lcom/twitter/model/json/core/JsonTwitterList;->c:J

    .line 46
    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/core/cn;->a(J)Lcom/twitter/model/core/cn;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/core/JsonTwitterList;->e:Ljava/lang/String;

    .line 47
    invoke-virtual {v0, v1}, Lcom/twitter/model/core/cn;->b(Ljava/lang/String;)Lcom/twitter/model/core/cn;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/core/JsonTwitterList;->f:Ljava/lang/String;

    .line 48
    invoke-virtual {v0, v1}, Lcom/twitter/model/core/cn;->c(Ljava/lang/String;)Lcom/twitter/model/core/cn;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/core/JsonTwitterList;->g:Ljava/lang/String;

    .line 49
    invoke-virtual {v0, v1}, Lcom/twitter/model/core/cn;->d(Ljava/lang/String;)Lcom/twitter/model/core/cn;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/core/JsonTwitterList;->h:Ljava/lang/String;

    .line 50
    invoke-virtual {v0, v1}, Lcom/twitter/model/core/cn;->e(Ljava/lang/String;)Lcom/twitter/model/core/cn;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/core/JsonTwitterList;->j:Ljava/lang/String;

    .line 51
    invoke-virtual {v0, v1}, Lcom/twitter/model/core/cn;->f(Ljava/lang/String;)Lcom/twitter/model/core/cn;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/core/JsonTwitterList;->k:Lcom/twitter/model/core/TwitterUser;

    .line 52
    invoke-virtual {v0, v1}, Lcom/twitter/model/core/cn;->a(Lcom/twitter/model/core/TwitterUser;)Lcom/twitter/model/core/cn;

    move-result-object v0

    .line 41
    return-object v0

    .line 43
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic c()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/twitter/model/json/core/JsonTwitterList;->a()Lcom/twitter/model/core/cn;

    move-result-object v0

    return-object v0
.end method
