.class public final Lcom/twitter/model/moments/af;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcom/twitter/model/moments/ad;",
        ">;"
    }
.end annotation


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Lcom/twitter/model/moments/a;

.field private o:Lcss;

.field private p:Lcom/twitter/model/moments/o;

.field private q:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/twitter/model/moments/af;)J
    .locals 2

    .prologue
    .line 134
    iget-wide v0, p0, Lcom/twitter/model/moments/af;->a:J

    return-wide v0
.end method

.method public static a(Lcom/twitter/model/moments/ad;)Lcom/twitter/model/moments/af;
    .locals 4

    .prologue
    .line 155
    new-instance v0, Lcom/twitter/model/moments/af;

    invoke-direct {v0}, Lcom/twitter/model/moments/af;-><init>()V

    iget-wide v2, p0, Lcom/twitter/model/moments/ad;->b:J

    .line 156
    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/moments/af;->a(J)Lcom/twitter/model/moments/af;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/moments/ad;->c:Ljava/lang/String;

    .line 157
    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/af;->a(Ljava/lang/String;)Lcom/twitter/model/moments/af;

    move-result-object v0

    iget-boolean v1, p0, Lcom/twitter/model/moments/ad;->d:Z

    .line 158
    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/af;->a(Z)Lcom/twitter/model/moments/af;

    move-result-object v0

    iget-boolean v1, p0, Lcom/twitter/model/moments/ad;->e:Z

    .line 159
    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/af;->b(Z)Lcom/twitter/model/moments/af;

    move-result-object v0

    iget-boolean v1, p0, Lcom/twitter/model/moments/ad;->f:Z

    .line 160
    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/af;->c(Z)Lcom/twitter/model/moments/af;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/moments/ad;->g:Ljava/lang/String;

    .line 161
    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/af;->b(Ljava/lang/String;)Lcom/twitter/model/moments/af;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/moments/ad;->h:Ljava/lang/String;

    .line 162
    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/af;->c(Ljava/lang/String;)Lcom/twitter/model/moments/af;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/moments/ad;->i:Ljava/lang/String;

    .line 163
    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/af;->d(Ljava/lang/String;)Lcom/twitter/model/moments/af;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/moments/ad;->j:Ljava/lang/String;

    .line 164
    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/af;->e(Ljava/lang/String;)Lcom/twitter/model/moments/af;

    move-result-object v0

    iget-boolean v1, p0, Lcom/twitter/model/moments/ad;->k:Z

    .line 165
    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/af;->d(Z)Lcom/twitter/model/moments/af;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/moments/ad;->l:Ljava/lang/String;

    .line 166
    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/af;->f(Ljava/lang/String;)Lcom/twitter/model/moments/af;

    move-result-object v0

    iget v1, p0, Lcom/twitter/model/moments/ad;->m:I

    .line 167
    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/af;->a(I)Lcom/twitter/model/moments/af;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/moments/ad;->n:Ljava/lang/String;

    .line 168
    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/af;->g(Ljava/lang/String;)Lcom/twitter/model/moments/af;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/moments/ad;->o:Lcom/twitter/model/moments/a;

    .line 169
    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/af;->a(Lcom/twitter/model/moments/a;)Lcom/twitter/model/moments/af;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/moments/ad;->p:Lcss;

    .line 170
    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/af;->a(Lcss;)Lcom/twitter/model/moments/af;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/moments/ad;->q:Lcom/twitter/model/moments/o;

    .line 171
    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/af;->a(Lcom/twitter/model/moments/o;)Lcom/twitter/model/moments/af;

    move-result-object v0

    iget-wide v2, p0, Lcom/twitter/model/moments/ad;->r:J

    .line 172
    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/moments/af;->b(J)Lcom/twitter/model/moments/af;

    move-result-object v0

    .line 155
    return-object v0
.end method

.method static synthetic b(Lcom/twitter/model/moments/af;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/twitter/model/moments/af;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/twitter/model/moments/af;)Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/twitter/model/moments/af;->c:Z

    return v0
.end method

.method static synthetic d(Lcom/twitter/model/moments/af;)Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/twitter/model/moments/af;->d:Z

    return v0
.end method

.method static synthetic e(Lcom/twitter/model/moments/af;)Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/twitter/model/moments/af;->e:Z

    return v0
.end method

.method static synthetic f(Lcom/twitter/model/moments/af;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/twitter/model/moments/af;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/twitter/model/moments/af;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/twitter/model/moments/af;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/twitter/model/moments/af;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/twitter/model/moments/af;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/twitter/model/moments/af;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/twitter/model/moments/af;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/twitter/model/moments/af;)Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/twitter/model/moments/af;->j:Z

    return v0
.end method

.method static synthetic k(Lcom/twitter/model/moments/af;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/twitter/model/moments/af;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/twitter/model/moments/af;)I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/twitter/model/moments/af;->l:I

    return v0
.end method

.method static synthetic m(Lcom/twitter/model/moments/af;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/twitter/model/moments/af;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lcom/twitter/model/moments/af;)Lcom/twitter/model/moments/a;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/twitter/model/moments/af;->n:Lcom/twitter/model/moments/a;

    return-object v0
.end method

.method static synthetic o(Lcom/twitter/model/moments/af;)Lcss;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/twitter/model/moments/af;->o:Lcss;

    return-object v0
.end method

.method static synthetic p(Lcom/twitter/model/moments/af;)Lcom/twitter/model/moments/o;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/twitter/model/moments/af;->p:Lcom/twitter/model/moments/o;

    return-object v0
.end method

.method static synthetic q(Lcom/twitter/model/moments/af;)J
    .locals 2

    .prologue
    .line 134
    iget-wide v0, p0, Lcom/twitter/model/moments/af;->q:J

    return-wide v0
.end method


# virtual methods
.method public a(I)Lcom/twitter/model/moments/af;
    .locals 0

    .prologue
    .line 243
    iput p1, p0, Lcom/twitter/model/moments/af;->l:I

    .line 244
    return-object p0
.end method

.method public a(J)Lcom/twitter/model/moments/af;
    .locals 1

    .prologue
    .line 177
    iput-wide p1, p0, Lcom/twitter/model/moments/af;->a:J

    .line 178
    return-object p0
.end method

.method public a(Lcom/twitter/model/moments/a;)Lcom/twitter/model/moments/af;
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/twitter/model/moments/af;->n:Lcom/twitter/model/moments/a;

    .line 262
    return-object p0
.end method

.method public a(Lcom/twitter/model/moments/o;)Lcom/twitter/model/moments/af;
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/twitter/model/moments/af;->p:Lcom/twitter/model/moments/o;

    .line 268
    return-object p0
.end method

.method public a(Lcss;)Lcom/twitter/model/moments/af;
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/twitter/model/moments/af;->o:Lcss;

    .line 256
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/twitter/model/moments/af;
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/twitter/model/moments/af;->b:Ljava/lang/String;

    .line 184
    return-object p0
.end method

.method public a(Z)Lcom/twitter/model/moments/af;
    .locals 0

    .prologue
    .line 189
    iput-boolean p1, p0, Lcom/twitter/model/moments/af;->c:Z

    .line 190
    return-object p0
.end method

.method public b(J)Lcom/twitter/model/moments/af;
    .locals 1

    .prologue
    .line 273
    iput-wide p1, p0, Lcom/twitter/model/moments/af;->q:J

    .line 274
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/twitter/model/moments/af;
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/twitter/model/moments/af;->f:Ljava/lang/String;

    .line 208
    return-object p0
.end method

.method public b(Z)Lcom/twitter/model/moments/af;
    .locals 0

    .prologue
    .line 195
    iput-boolean p1, p0, Lcom/twitter/model/moments/af;->d:Z

    .line 196
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/twitter/model/moments/af;
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/twitter/model/moments/af;->g:Ljava/lang/String;

    .line 214
    return-object p0
.end method

.method public c(Z)Lcom/twitter/model/moments/af;
    .locals 0

    .prologue
    .line 201
    iput-boolean p1, p0, Lcom/twitter/model/moments/af;->e:Z

    .line 202
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/twitter/model/moments/af;->e()Lcom/twitter/model/moments/ad;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcom/twitter/model/moments/af;
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/twitter/model/moments/af;->h:Ljava/lang/String;

    .line 220
    return-object p0
.end method

.method public d(Z)Lcom/twitter/model/moments/af;
    .locals 0

    .prologue
    .line 231
    iput-boolean p1, p0, Lcom/twitter/model/moments/af;->j:Z

    .line 232
    return-object p0
.end method

.method protected e()Lcom/twitter/model/moments/ad;
    .locals 2

    .prologue
    .line 280
    new-instance v0, Lcom/twitter/model/moments/ad;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/model/moments/ad;-><init>(Lcom/twitter/model/moments/af;Lcom/twitter/model/moments/ae;)V

    return-object v0
.end method

.method public e(Ljava/lang/String;)Lcom/twitter/model/moments/af;
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/twitter/model/moments/af;->i:Ljava/lang/String;

    .line 226
    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/twitter/model/moments/af;
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/twitter/model/moments/af;->k:Ljava/lang/String;

    .line 238
    return-object p0
.end method

.method public g(Ljava/lang/String;)Lcom/twitter/model/moments/af;
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/twitter/model/moments/af;->m:Ljava/lang/String;

    .line 250
    return-object p0
.end method
