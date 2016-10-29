.class public Lcom/twitter/model/json/core/JsonTwitterAccountUser;
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
        "Lcom/twitter/model/core/TwitterUser;",
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

.field public g:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
        name = {
            "url_https"
        }
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

.field public j:I
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public k:I
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public l:I
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public m:I
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public n:I
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public o:Z
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
        name = {
            "protected"
        }
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

.field public r:Z
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public s:Z
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public t:Z
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public u:Z
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public v:Z
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
        name = {
            "has_extended_profile"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/twitter/model/json/common/e;-><init>()V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/twitter/model/json/core/JsonTwitterAccountUser;->n:I

    return-void
.end method

.method public static a(Lcom/twitter/model/core/TwitterUser;)Lcom/twitter/model/json/core/JsonTwitterAccountUser;
    .locals 4

    .prologue
    .line 105
    new-instance v1, Lcom/twitter/model/json/core/JsonTwitterAccountUser;

    invoke-direct {v1}, Lcom/twitter/model/json/core/JsonTwitterAccountUser;-><init>()V

    .line 106
    invoke-virtual {p0}, Lcom/twitter/model/core/TwitterUser;->a()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/twitter/model/json/core/JsonTwitterAccountUser;->a:J

    .line 107
    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->d:Ljava/lang/String;

    iput-object v0, v1, Lcom/twitter/model/json/core/JsonTwitterAccountUser;->b:Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->k:Ljava/lang/String;

    iput-object v0, v1, Lcom/twitter/model/json/core/JsonTwitterAccountUser;->c:Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->e:Ljava/lang/String;

    iput-object v0, v1, Lcom/twitter/model/json/core/JsonTwitterAccountUser;->d:Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->G:Ljava/lang/String;

    iput-object v0, v1, Lcom/twitter/model/json/core/JsonTwitterAccountUser;->e:Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->g:Ljava/lang/String;

    iput-object v0, v1, Lcom/twitter/model/json/core/JsonTwitterAccountUser;->f:Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->h:Ljava/lang/String;

    iput-object v0, v1, Lcom/twitter/model/json/core/JsonTwitterAccountUser;->g:Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lcom/twitter/model/core/TwitterUser;->q:Ljava/lang/String;

    iput-object v0, v1, Lcom/twitter/model/json/core/JsonTwitterAccountUser;->h:Ljava/lang/String;

    .line 114
    iget-wide v2, p0, Lcom/twitter/model/core/TwitterUser;->R:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/twitter/model/json/core/JsonTwitterAccountUser;->i:Ljava/lang/String;

    .line 115
    iget v0, p0, Lcom/twitter/model/core/TwitterUser;->v:I

    iput v0, v1, Lcom/twitter/model/json/core/JsonTwitterAccountUser;->l:I

    .line 116
    iget v0, p0, Lcom/twitter/model/core/TwitterUser;->Q:I

    iput v0, v1, Lcom/twitter/model/json/core/JsonTwitterAccountUser;->j:I

    .line 117
    iget v0, p0, Lcom/twitter/model/core/TwitterUser;->u:I

    iput v0, v1, Lcom/twitter/model/json/core/JsonTwitterAccountUser;->k:I

    .line 118
    iget v0, p0, Lcom/twitter/model/core/TwitterUser;->w:I

    iput v0, v1, Lcom/twitter/model/json/core/JsonTwitterAccountUser;->m:I

    .line 119
    iget v0, p0, Lcom/twitter/model/core/TwitterUser;->x:I

    iput v0, v1, Lcom/twitter/model/json/core/JsonTwitterAccountUser;->n:I

    .line 120
    iget-boolean v0, p0, Lcom/twitter/model/core/TwitterUser;->y:Z

    iput-boolean v0, v1, Lcom/twitter/model/json/core/JsonTwitterAccountUser;->p:Z

    .line 121
    iget-boolean v0, p0, Lcom/twitter/model/core/TwitterUser;->m:Z

    iput-boolean v0, v1, Lcom/twitter/model/json/core/JsonTwitterAccountUser;->o:Z

    .line 122
    iget-boolean v0, p0, Lcom/twitter/model/core/TwitterUser;->p:Z

    iput-boolean v0, v1, Lcom/twitter/model/json/core/JsonTwitterAccountUser;->s:Z

    .line 123
    iget-boolean v0, p0, Lcom/twitter/model/core/TwitterUser;->n:Z

    iput-boolean v0, v1, Lcom/twitter/model/json/core/JsonTwitterAccountUser;->q:Z

    .line 124
    iget-boolean v0, p0, Lcom/twitter/model/core/TwitterUser;->o:Z

    iput-boolean v0, v1, Lcom/twitter/model/json/core/JsonTwitterAccountUser;->r:Z

    .line 125
    iget-boolean v0, p0, Lcom/twitter/model/core/TwitterUser;->l:Z

    iput-boolean v0, v1, Lcom/twitter/model/json/core/JsonTwitterAccountUser;->t:Z

    .line 126
    iget-boolean v0, p0, Lcom/twitter/model/core/TwitterUser;->I:Z

    iput-boolean v0, v1, Lcom/twitter/model/json/core/JsonTwitterAccountUser;->u:Z

    .line 127
    iget-boolean v0, p0, Lcom/twitter/model/core/TwitterUser;->s:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lcom/twitter/model/json/core/JsonTwitterAccountUser;->v:Z

    .line 128
    return-object v1

    .line 127
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public c()Lcom/twitter/util/object/h;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/util/object/h",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Lcom/twitter/model/core/cv;

    invoke-direct {v0}, Lcom/twitter/model/core/cv;-><init>()V

    iget-wide v2, p0, Lcom/twitter/model/json/core/JsonTwitterAccountUser;->a:J

    .line 73
    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/core/cv;->a(J)Lcom/twitter/model/core/cv;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/core/JsonTwitterAccountUser;->b:Ljava/lang/String;

    .line 74
    invoke-virtual {v0, v1}, Lcom/twitter/model/core/cv;->b(Ljava/lang/String;)Lcom/twitter/model/core/cv;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/core/JsonTwitterAccountUser;->c:Ljava/lang/String;

    .line 75
    invoke-virtual {v0, v1}, Lcom/twitter/model/core/cv;->g(Ljava/lang/String;)Lcom/twitter/model/core/cv;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/core/JsonTwitterAccountUser;->d:Ljava/lang/String;

    .line 76
    invoke-virtual {v0, v1}, Lcom/twitter/model/core/cv;->c(Ljava/lang/String;)Lcom/twitter/model/core/cv;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/core/JsonTwitterAccountUser;->e:Ljava/lang/String;

    .line 77
    invoke-virtual {v0, v1}, Lcom/twitter/model/core/cv;->i(Ljava/lang/String;)Lcom/twitter/model/core/cv;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/core/JsonTwitterAccountUser;->f:Ljava/lang/String;

    .line 78
    invoke-virtual {v0, v1}, Lcom/twitter/model/core/cv;->e(Ljava/lang/String;)Lcom/twitter/model/core/cv;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/core/JsonTwitterAccountUser;->g:Ljava/lang/String;

    .line 79
    invoke-virtual {v0, v1}, Lcom/twitter/model/core/cv;->f(Ljava/lang/String;)Lcom/twitter/model/core/cv;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/core/JsonTwitterAccountUser;->h:Ljava/lang/String;

    .line 80
    invoke-virtual {v0, v1}, Lcom/twitter/model/core/cv;->h(Ljava/lang/String;)Lcom/twitter/model/core/cv;

    move-result-object v0

    iget v1, p0, Lcom/twitter/model/json/core/JsonTwitterAccountUser;->l:I

    .line 81
    invoke-virtual {v0, v1}, Lcom/twitter/model/core/cv;->e(I)Lcom/twitter/model/core/cv;

    move-result-object v0

    iget v1, p0, Lcom/twitter/model/json/core/JsonTwitterAccountUser;->j:I

    .line 82
    invoke-virtual {v0, v1}, Lcom/twitter/model/core/cv;->c(I)Lcom/twitter/model/core/cv;

    move-result-object v0

    iget v1, p0, Lcom/twitter/model/json/core/JsonTwitterAccountUser;->k:I

    .line 83
    invoke-virtual {v0, v1}, Lcom/twitter/model/core/cv;->d(I)Lcom/twitter/model/core/cv;

    move-result-object v0

    iget v1, p0, Lcom/twitter/model/json/core/JsonTwitterAccountUser;->m:I

    .line 84
    invoke-virtual {v0, v1}, Lcom/twitter/model/core/cv;->f(I)Lcom/twitter/model/core/cv;

    move-result-object v0

    iget v1, p0, Lcom/twitter/model/json/core/JsonTwitterAccountUser;->n:I

    .line 85
    invoke-virtual {v0, v1}, Lcom/twitter/model/core/cv;->g(I)Lcom/twitter/model/core/cv;

    move-result-object v0

    iget-boolean v1, p0, Lcom/twitter/model/json/core/JsonTwitterAccountUser;->p:Z

    .line 86
    invoke-virtual {v0, v1}, Lcom/twitter/model/core/cv;->g(Z)Lcom/twitter/model/core/cv;

    move-result-object v0

    iget-boolean v1, p0, Lcom/twitter/model/json/core/JsonTwitterAccountUser;->o:Z

    .line 87
    invoke-virtual {v0, v1}, Lcom/twitter/model/core/cv;->b(Z)Lcom/twitter/model/core/cv;

    move-result-object v0

    iget-boolean v1, p0, Lcom/twitter/model/json/core/JsonTwitterAccountUser;->s:Z

    .line 88
    invoke-virtual {v0, v1}, Lcom/twitter/model/core/cv;->e(Z)Lcom/twitter/model/core/cv;

    move-result-object v0

    iget-boolean v1, p0, Lcom/twitter/model/json/core/JsonTwitterAccountUser;->q:Z

    .line 89
    invoke-virtual {v0, v1}, Lcom/twitter/model/core/cv;->c(Z)Lcom/twitter/model/core/cv;

    move-result-object v0

    iget-boolean v1, p0, Lcom/twitter/model/json/core/JsonTwitterAccountUser;->r:Z

    .line 90
    invoke-virtual {v0, v1}, Lcom/twitter/model/core/cv;->d(Z)Lcom/twitter/model/core/cv;

    move-result-object v0

    iget-boolean v1, p0, Lcom/twitter/model/json/core/JsonTwitterAccountUser;->t:Z

    .line 91
    invoke-virtual {v0, v1}, Lcom/twitter/model/core/cv;->a(Z)Lcom/twitter/model/core/cv;

    move-result-object v0

    iget-boolean v1, p0, Lcom/twitter/model/json/core/JsonTwitterAccountUser;->u:Z

    .line 92
    invoke-virtual {v0, v1}, Lcom/twitter/model/core/cv;->h(Z)Lcom/twitter/model/core/cv;

    move-result-object v1

    iget-boolean v0, p0, Lcom/twitter/model/json/core/JsonTwitterAccountUser;->v:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 93
    :goto_0
    invoke-virtual {v1, v0}, Lcom/twitter/model/core/cv;->f(Z)Lcom/twitter/model/core/cv;

    move-result-object v0

    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/twitter/model/json/core/JsonTwitterAccountUser;->i:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/core/cv;->b(J)Lcom/twitter/model/core/cv;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_1
    return-object v0

    .line 92
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v1

    .line 98
    sget-object v1, Lcom/twitter/util/al;->b:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/twitter/model/json/core/JsonTwitterAccountUser;->i:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/twitter/util/al;->a(Ljava/text/SimpleDateFormat;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/core/cv;->b(J)Lcom/twitter/model/core/cv;

    goto :goto_1
.end method
