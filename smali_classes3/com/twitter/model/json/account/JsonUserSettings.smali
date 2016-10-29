.class public Lcom/twitter/model/json/account/JsonUserSettings;
.super Lcom/twitter/model/json/common/f;
.source "Twttr"


# annotations
.annotation build Lcom/bluelinelabs/logansquare/annotation/JsonObject;
    fieldNamingPolicy = .enum Lcom/bluelinelabs/logansquare/annotation/JsonObject$FieldNamingPolicy;->LOWER_CASE_WITH_UNDERSCORES:Lcom/bluelinelabs/logansquare/annotation/JsonObject$FieldNamingPolicy;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/json/common/f",
        "<",
        "Lcom/twitter/model/account/UserSettings;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Z
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public b:Z
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public c:Z
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public d:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public e:Z
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
        name = {
            "protected"
        }
    .end annotation
.end field

.field public f:Z
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public g:Z
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public h:Z
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
        name = {
            "discoverable_by_mobile_phone"
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

.field public k:Z
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public l:Z
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public m:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public n:Z
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
        name = {
            "smart_mute"
        }
    .end annotation
.end field

.field public o:I
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public p:Z
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public q:Z
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public r:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public s:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public t:Z
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public u:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public v:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public w:Ljava/util/List;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/account/n;",
            ">;"
        }
    .end annotation
.end field

.field public x:Lcom/twitter/model/account/m;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 15
    invoke-direct {p0}, Lcom/twitter/model/json/common/f;-><init>()V

    .line 18
    iput-boolean v0, p0, Lcom/twitter/model/json/account/JsonUserSettings;->b:Z

    .line 38
    iput-boolean v0, p0, Lcom/twitter/model/json/account/JsonUserSettings;->l:Z

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/twitter/model/json/account/JsonUserSettings;->o:I

    .line 56
    const-string/jumbo v0, "enabled"

    iput-object v0, p0, Lcom/twitter/model/json/account/JsonUserSettings;->u:Ljava/lang/String;

    .line 58
    const-string/jumbo v0, "unfiltered"

    iput-object v0, p0, Lcom/twitter/model/json/account/JsonUserSettings;->v:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/model/account/UserSettings;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Lcom/twitter/model/account/l;

    invoke-direct {v0}, Lcom/twitter/model/account/l;-><init>()V

    iget-boolean v1, p0, Lcom/twitter/model/json/account/JsonUserSettings;->a:Z

    .line 71
    invoke-virtual {v0, v1}, Lcom/twitter/model/account/l;->a(Z)Lcom/twitter/model/account/l;

    move-result-object v0

    iget-boolean v1, p0, Lcom/twitter/model/json/account/JsonUserSettings;->b:Z

    .line 72
    invoke-virtual {v0, v1}, Lcom/twitter/model/account/l;->b(Z)Lcom/twitter/model/account/l;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/account/JsonUserSettings;->d:Ljava/lang/String;

    .line 73
    invoke-virtual {v0, v1}, Lcom/twitter/model/account/l;->a(Ljava/lang/String;)Lcom/twitter/model/account/l;

    move-result-object v0

    iget-boolean v1, p0, Lcom/twitter/model/json/account/JsonUserSettings;->e:Z

    .line 74
    invoke-virtual {v0, v1}, Lcom/twitter/model/account/l;->c(Z)Lcom/twitter/model/account/l;

    move-result-object v0

    iget-boolean v1, p0, Lcom/twitter/model/json/account/JsonUserSettings;->f:Z

    .line 75
    invoke-virtual {v0, v1}, Lcom/twitter/model/account/l;->d(Z)Lcom/twitter/model/account/l;

    move-result-object v0

    iget-boolean v1, p0, Lcom/twitter/model/json/account/JsonUserSettings;->g:Z

    .line 76
    invoke-virtual {v0, v1}, Lcom/twitter/model/account/l;->e(Z)Lcom/twitter/model/account/l;

    move-result-object v0

    iget-boolean v1, p0, Lcom/twitter/model/json/account/JsonUserSettings;->h:Z

    .line 77
    invoke-virtual {v0, v1}, Lcom/twitter/model/account/l;->f(Z)Lcom/twitter/model/account/l;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/account/JsonUserSettings;->i:Ljava/lang/String;

    .line 78
    invoke-virtual {v0, v1}, Lcom/twitter/model/account/l;->b(Ljava/lang/String;)Lcom/twitter/model/account/l;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/account/JsonUserSettings;->j:Ljava/lang/String;

    .line 79
    invoke-virtual {v0, v1}, Lcom/twitter/model/account/l;->c(Ljava/lang/String;)Lcom/twitter/model/account/l;

    move-result-object v0

    iget-boolean v1, p0, Lcom/twitter/model/json/account/JsonUserSettings;->k:Z

    .line 80
    invoke-virtual {v0, v1}, Lcom/twitter/model/account/l;->g(Z)Lcom/twitter/model/account/l;

    move-result-object v0

    iget-boolean v1, p0, Lcom/twitter/model/json/account/JsonUserSettings;->c:Z

    .line 81
    invoke-virtual {v0, v1}, Lcom/twitter/model/account/l;->h(Z)Lcom/twitter/model/account/l;

    move-result-object v0

    iget-boolean v1, p0, Lcom/twitter/model/json/account/JsonUserSettings;->l:Z

    .line 82
    invoke-virtual {v0, v1}, Lcom/twitter/model/account/l;->i(Z)Lcom/twitter/model/account/l;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/account/JsonUserSettings;->m:Ljava/lang/String;

    .line 83
    invoke-virtual {v0, v1}, Lcom/twitter/model/account/l;->d(Ljava/lang/String;)Lcom/twitter/model/account/l;

    move-result-object v0

    iget-boolean v1, p0, Lcom/twitter/model/json/account/JsonUserSettings;->n:Z

    .line 84
    invoke-virtual {v0, v1}, Lcom/twitter/model/account/l;->j(Z)Lcom/twitter/model/account/l;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/account/JsonUserSettings;->r:Ljava/lang/String;

    .line 85
    invoke-virtual {v0, v1}, Lcom/twitter/model/account/l;->e(Ljava/lang/String;)Lcom/twitter/model/account/l;

    move-result-object v0

    iget v1, p0, Lcom/twitter/model/json/account/JsonUserSettings;->o:I

    .line 86
    invoke-virtual {v0, v1}, Lcom/twitter/model/account/l;->a(I)Lcom/twitter/model/account/l;

    move-result-object v0

    iget-boolean v1, p0, Lcom/twitter/model/json/account/JsonUserSettings;->p:Z

    .line 87
    invoke-virtual {v0, v1}, Lcom/twitter/model/account/l;->k(Z)Lcom/twitter/model/account/l;

    move-result-object v0

    iget-boolean v1, p0, Lcom/twitter/model/json/account/JsonUserSettings;->q:Z

    .line 88
    invoke-virtual {v0, v1}, Lcom/twitter/model/account/l;->l(Z)Lcom/twitter/model/account/l;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/account/JsonUserSettings;->s:Ljava/lang/String;

    .line 89
    invoke-virtual {v0, v1}, Lcom/twitter/model/account/l;->f(Ljava/lang/String;)Lcom/twitter/model/account/l;

    move-result-object v0

    iget-boolean v1, p0, Lcom/twitter/model/json/account/JsonUserSettings;->t:Z

    .line 90
    invoke-virtual {v0, v1}, Lcom/twitter/model/account/l;->m(Z)Lcom/twitter/model/account/l;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/account/JsonUserSettings;->u:Ljava/lang/String;

    .line 91
    invoke-virtual {v0, v1}, Lcom/twitter/model/account/l;->g(Ljava/lang/String;)Lcom/twitter/model/account/l;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/account/JsonUserSettings;->v:Ljava/lang/String;

    .line 92
    invoke-virtual {v0, v1}, Lcom/twitter/model/account/l;->h(Ljava/lang/String;)Lcom/twitter/model/account/l;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/account/JsonUserSettings;->w:Ljava/util/List;

    .line 93
    invoke-static {v1}, Lcom/twitter/util/collection/ImmutableList;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/account/l;->a(Ljava/util/List;)Lcom/twitter/model/account/l;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/account/JsonUserSettings;->x:Lcom/twitter/model/account/m;

    .line 94
    invoke-virtual {v0, v1}, Lcom/twitter/model/account/l;->a(Lcom/twitter/model/account/m;)Lcom/twitter/model/account/l;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lcom/twitter/model/account/l;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/account/UserSettings;

    .line 70
    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/twitter/model/json/account/JsonUserSettings;->a()Lcom/twitter/model/account/UserSettings;

    move-result-object v0

    return-object v0
.end method
