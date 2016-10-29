.class public final Lclg;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcle;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:J

.field private c:J

.field private d:J

.field private e:I

.field private f:I

.field private g:Lckj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lckj",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:I

.field private j:Lckj;

.field private k:I

.field private l:I

.field private m:Lckj;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    .line 141
    const/4 v0, 0x0

    iput v0, p0, Lclg;->f:I

    return-void
.end method

.method static synthetic a(Lclg;)J
    .locals 2

    .prologue
    .line 134
    iget-wide v0, p0, Lclg;->b:J

    return-wide v0
.end method

.method static synthetic b(Lclg;)J
    .locals 2

    .prologue
    .line 134
    iget-wide v0, p0, Lclg;->c:J

    return-wide v0
.end method

.method static synthetic c(Lclg;)J
    .locals 2

    .prologue
    .line 134
    iget-wide v0, p0, Lclg;->d:J

    return-wide v0
.end method

.method static synthetic d(Lclg;)I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lclg;->a:I

    return v0
.end method

.method static synthetic e(Lclg;)I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lclg;->e:I

    return v0
.end method

.method static synthetic f(Lclg;)I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lclg;->f:I

    return v0
.end method

.method static synthetic g(Lclg;)I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lclg;->h:I

    return v0
.end method

.method static synthetic h(Lclg;)I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lclg;->i:I

    return v0
.end method

.method static synthetic i(Lclg;)I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lclg;->k:I

    return v0
.end method

.method static synthetic j(Lclg;)I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lclg;->l:I

    return v0
.end method

.method static synthetic k(Lclg;)Lckj;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lclg;->g:Lckj;

    return-object v0
.end method

.method static synthetic l(Lclg;)Lckj;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lclg;->j:Lckj;

    return-object v0
.end method

.method static synthetic m(Lclg;)Lckj;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lclg;->m:Lckj;

    return-object v0
.end method


# virtual methods
.method public a(I)Lclg;
    .locals 0

    .prologue
    .line 158
    iput p1, p0, Lclg;->a:I

    .line 159
    return-object p0
.end method

.method public a(J)Lclg;
    .locals 1

    .prologue
    .line 164
    iput-wide p1, p0, Lclg;->b:J

    .line 165
    return-object p0
.end method

.method public a(Ljava/util/List;)Lclg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;)",
            "Lclg;"
        }
    .end annotation

    .prologue
    .line 194
    if-eqz p1, :cond_0

    .line 195
    new-instance v0, Lckj;

    invoke-direct {v0, p1}, Lckj;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lclg;->g:Lckj;

    .line 197
    :cond_0
    return-object p0
.end method

.method public b(I)Lclg;
    .locals 0

    .prologue
    .line 182
    iput p1, p0, Lclg;->e:I

    .line 183
    return-object p0
.end method

.method public b(J)Lclg;
    .locals 1

    .prologue
    .line 170
    iput-wide p1, p0, Lclg;->c:J

    .line 171
    return-object p0
.end method

.method public b(Ljava/util/List;)Lclg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/twitter/model/core/w;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Lclg;"
        }
    .end annotation

    .prologue
    .line 214
    if-eqz p1, :cond_0

    .line 215
    new-instance v0, Lckj;

    invoke-direct {v0, p1}, Lckj;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lclg;->j:Lckj;

    .line 217
    :cond_0
    return-object p0
.end method

.method public bq_()Z
    .locals 2

    .prologue
    .line 249
    iget v0, p0, Lclg;->a:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lclg;->f:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lclg;->g:Lckj;

    if-eqz v0, :cond_1

    iget v0, p0, Lclg;->i:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lclg;->j:Lckj;

    if-eqz v0, :cond_1

    iget v0, p0, Lclg;->l:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lclg;->m:Lckj;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(I)Lclg;
    .locals 0

    .prologue
    .line 188
    iput p1, p0, Lclg;->f:I

    .line 189
    return-object p0
.end method

.method public c(J)Lclg;
    .locals 1

    .prologue
    .line 176
    iput-wide p1, p0, Lclg;->d:J

    .line 177
    return-object p0
.end method

.method public c(Ljava/util/List;)Lclg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/twitter/model/core/w;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Lclg;"
        }
    .end annotation

    .prologue
    .line 234
    if-eqz p1, :cond_0

    .line 235
    new-instance v0, Lckj;

    invoke-direct {v0, p1}, Lckj;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lclg;->m:Lckj;

    .line 237
    :cond_0
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0}, Lclg;->e()Lcle;

    move-result-object v0

    return-object v0
.end method

.method public d(I)Lclg;
    .locals 0

    .prologue
    .line 202
    iput p1, p0, Lclg;->h:I

    .line 203
    return-object p0
.end method

.method protected e()Lcle;
    .locals 2

    .prologue
    .line 243
    new-instance v0, Lcle;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcle;-><init>(Lclg;Lclf;)V

    return-object v0
.end method

.method public e(I)Lclg;
    .locals 0

    .prologue
    .line 208
    iput p1, p0, Lclg;->i:I

    .line 209
    return-object p0
.end method

.method public f(I)Lclg;
    .locals 0

    .prologue
    .line 222
    iput p1, p0, Lclg;->k:I

    .line 223
    return-object p0
.end method

.method public g(I)Lclg;
    .locals 0

    .prologue
    .line 228
    iput p1, p0, Lclg;->l:I

    .line 229
    return-object p0
.end method
