.class public Lcga;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private a:I

.field private b:Z

.field private c:J

.field private d:J

.field private e:J

.field private f:J

.field private g:J

.field private h:J

.field private i:J

.field private j:J

.field private k:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    const/4 v0, -0x1

    iput v0, p0, Lcga;->a:I

    .line 200
    iput-wide v2, p0, Lcga;->c:J

    .line 201
    iput-wide v2, p0, Lcga;->d:J

    .line 202
    iput-wide v2, p0, Lcga;->e:J

    .line 203
    iput-wide v2, p0, Lcga;->f:J

    .line 204
    iput-wide v2, p0, Lcga;->g:J

    .line 205
    iput-wide v2, p0, Lcga;->h:J

    .line 206
    iput-wide v2, p0, Lcga;->i:J

    .line 207
    iput-wide v2, p0, Lcga;->j:J

    .line 208
    iput-wide v2, p0, Lcga;->k:J

    return-void
.end method

.method static synthetic a(Lcga;)Z
    .locals 1

    .prologue
    .line 197
    iget-boolean v0, p0, Lcga;->b:Z

    return v0
.end method

.method static synthetic b(Lcga;)I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcga;->a:I

    return v0
.end method

.method static synthetic c(Lcga;)J
    .locals 2

    .prologue
    .line 197
    iget-wide v0, p0, Lcga;->c:J

    return-wide v0
.end method

.method static synthetic d(Lcga;)J
    .locals 2

    .prologue
    .line 197
    iget-wide v0, p0, Lcga;->d:J

    return-wide v0
.end method

.method static synthetic e(Lcga;)J
    .locals 2

    .prologue
    .line 197
    iget-wide v0, p0, Lcga;->i:J

    return-wide v0
.end method

.method static synthetic f(Lcga;)J
    .locals 2

    .prologue
    .line 197
    iget-wide v0, p0, Lcga;->e:J

    return-wide v0
.end method

.method static synthetic g(Lcga;)J
    .locals 2

    .prologue
    .line 197
    iget-wide v0, p0, Lcga;->f:J

    return-wide v0
.end method

.method static synthetic h(Lcga;)J
    .locals 2

    .prologue
    .line 197
    iget-wide v0, p0, Lcga;->g:J

    return-wide v0
.end method

.method static synthetic i(Lcga;)J
    .locals 2

    .prologue
    .line 197
    iget-wide v0, p0, Lcga;->h:J

    return-wide v0
.end method

.method static synthetic j(Lcga;)J
    .locals 2

    .prologue
    .line 197
    iget-wide v0, p0, Lcga;->j:J

    return-wide v0
.end method

.method static synthetic k(Lcga;)J
    .locals 2

    .prologue
    .line 197
    iget-wide v0, p0, Lcga;->k:J

    return-wide v0
.end method


# virtual methods
.method public a()Lcfy;
    .locals 2

    .prologue
    .line 321
    new-instance v0, Lcfy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcfy;-><init>(Lcga;Lcfz;)V

    return-object v0
.end method

.method public a(I)Lcga;
    .locals 0

    .prologue
    .line 216
    iput p1, p0, Lcga;->a:I

    .line 217
    return-object p0
.end method

.method public a(J)Lcga;
    .locals 1

    .prologue
    .line 236
    iput-wide p1, p0, Lcga;->c:J

    .line 237
    return-object p0
.end method

.method public a(Z)Lcga;
    .locals 0

    .prologue
    .line 226
    iput-boolean p1, p0, Lcga;->b:Z

    .line 227
    return-object p0
.end method

.method public b(J)Lcga;
    .locals 1

    .prologue
    .line 246
    iput-wide p1, p0, Lcga;->d:J

    .line 247
    return-object p0
.end method

.method public c(J)Lcga;
    .locals 1

    .prologue
    .line 256
    iput-wide p1, p0, Lcga;->e:J

    .line 257
    return-object p0
.end method

.method public d(J)Lcga;
    .locals 1

    .prologue
    .line 266
    iput-wide p1, p0, Lcga;->f:J

    .line 267
    return-object p0
.end method

.method public e(J)Lcga;
    .locals 1

    .prologue
    .line 276
    iput-wide p1, p0, Lcga;->g:J

    .line 277
    return-object p0
.end method

.method public f(J)Lcga;
    .locals 1

    .prologue
    .line 286
    iput-wide p1, p0, Lcga;->h:J

    .line 287
    return-object p0
.end method

.method public g(J)Lcga;
    .locals 1

    .prologue
    .line 296
    iput-wide p1, p0, Lcga;->i:J

    .line 297
    return-object p0
.end method

.method public h(J)Lcga;
    .locals 1

    .prologue
    .line 306
    iput-wide p1, p0, Lcga;->j:J

    .line 307
    return-object p0
.end method

.method public i(J)Lcga;
    .locals 1

    .prologue
    .line 316
    iput-wide p1, p0, Lcga;->k:J

    .line 317
    return-object p0
.end method
