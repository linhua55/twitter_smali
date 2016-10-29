.class public final Lcom/twitter/library/database/dm/f;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcom/twitter/library/database/dm/d;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:J

.field private h:Z

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;"
        }
    .end annotation
.end field

.field private j:Z

.field private k:Z

.field private l:Lbnt;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/twitter/library/database/dm/f;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/twitter/library/database/dm/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/library/database/dm/f;)J
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/twitter/library/database/dm/f;->b:J

    return-wide v0
.end method

.method static synthetic c(Lcom/twitter/library/database/dm/f;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/twitter/library/database/dm/f;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/twitter/library/database/dm/f;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/twitter/library/database/dm/f;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/twitter/library/database/dm/f;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/twitter/library/database/dm/f;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/twitter/library/database/dm/f;)Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/twitter/library/database/dm/f;->f:Z

    return v0
.end method

.method static synthetic g(Lcom/twitter/library/database/dm/f;)J
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/twitter/library/database/dm/f;->g:J

    return-wide v0
.end method

.method static synthetic h(Lcom/twitter/library/database/dm/f;)Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/twitter/library/database/dm/f;->h:Z

    return v0
.end method

.method static synthetic i(Lcom/twitter/library/database/dm/f;)Ljava/util/List;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/twitter/library/database/dm/f;->i:Ljava/util/List;

    return-object v0
.end method

.method static synthetic j(Lcom/twitter/library/database/dm/f;)Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/twitter/library/database/dm/f;->j:Z

    return v0
.end method

.method static synthetic k(Lcom/twitter/library/database/dm/f;)Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/twitter/library/database/dm/f;->k:Z

    return v0
.end method

.method static synthetic l(Lcom/twitter/library/database/dm/f;)Lbnt;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/twitter/library/database/dm/f;->l:Lbnt;

    return-object v0
.end method


# virtual methods
.method public a(J)Lcom/twitter/library/database/dm/f;
    .locals 1

    .prologue
    .line 116
    iput-wide p1, p0, Lcom/twitter/library/database/dm/f;->b:J

    .line 117
    return-object p0
.end method

.method public a(Lbnt;)Lcom/twitter/library/database/dm/f;
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/twitter/library/database/dm/f;->l:Lbnt;

    .line 177
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/twitter/library/database/dm/f;
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/twitter/library/database/dm/f;->a:Ljava/lang/String;

    .line 111
    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/twitter/library/database/dm/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;)",
            "Lcom/twitter/library/database/dm/f;"
        }
    .end annotation

    .prologue
    .line 158
    iput-object p1, p0, Lcom/twitter/library/database/dm/f;->i:Ljava/util/List;

    .line 159
    return-object p0
.end method

.method public a(Z)Lcom/twitter/library/database/dm/f;
    .locals 0

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/twitter/library/database/dm/f;->f:Z

    .line 141
    return-object p0
.end method

.method public b(J)Lcom/twitter/library/database/dm/f;
    .locals 1

    .prologue
    .line 146
    iput-wide p1, p0, Lcom/twitter/library/database/dm/f;->g:J

    .line 147
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/twitter/library/database/dm/f;
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/twitter/library/database/dm/f;->c:Ljava/lang/String;

    .line 123
    return-object p0
.end method

.method public b(Z)Lcom/twitter/library/database/dm/f;
    .locals 0

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/twitter/library/database/dm/f;->h:Z

    .line 153
    return-object p0
.end method

.method public bq_()Z
    .locals 1

    .prologue
    .line 182
    invoke-super {p0}, Lcom/twitter/util/object/h;->bq_()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/database/dm/f;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/database/dm/f;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/database/dm/f;->i:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Lcom/twitter/library/database/dm/f;
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/twitter/library/database/dm/f;->d:Ljava/lang/String;

    .line 129
    return-object p0
.end method

.method public c(Z)Lcom/twitter/library/database/dm/f;
    .locals 0

    .prologue
    .line 164
    iput-boolean p1, p0, Lcom/twitter/library/database/dm/f;->j:Z

    .line 165
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/twitter/library/database/dm/f;->e()Lcom/twitter/library/database/dm/d;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcom/twitter/library/database/dm/f;
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/twitter/library/database/dm/f;->e:Ljava/lang/String;

    .line 135
    return-object p0
.end method

.method public d(Z)Lcom/twitter/library/database/dm/f;
    .locals 0

    .prologue
    .line 170
    iput-boolean p1, p0, Lcom/twitter/library/database/dm/f;->k:Z

    .line 171
    return-object p0
.end method

.method protected e()Lcom/twitter/library/database/dm/d;
    .locals 2

    .prologue
    .line 188
    new-instance v0, Lcom/twitter/library/database/dm/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/library/database/dm/d;-><init>(Lcom/twitter/library/database/dm/f;Lcom/twitter/library/database/dm/e;)V

    return-object v0
.end method
