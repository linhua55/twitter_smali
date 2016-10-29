.class public Lcom/twitter/library/network/ao;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private a:I

.field private b:J

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/util/network/h;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Ljava/lang/String;

.field private f:J

.field private g:Z

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    const/4 v0, 0x0

    iput v0, p0, Lcom/twitter/library/network/ao;->a:I

    .line 247
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/twitter/library/network/ao;->b:J

    .line 248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/library/network/ao;->c:Ljava/util/List;

    .line 251
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/twitter/library/network/ao;->f:J

    .line 253
    const/4 v0, -0x1

    iput v0, p0, Lcom/twitter/library/network/ao;->h:I

    return-void
.end method

.method static synthetic a(Lcom/twitter/library/network/ao;)J
    .locals 2

    .prologue
    .line 245
    iget-wide v0, p0, Lcom/twitter/library/network/ao;->b:J

    return-wide v0
.end method

.method static synthetic b(Lcom/twitter/library/network/ao;)I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/twitter/library/network/ao;->d:I

    return v0
.end method

.method static synthetic c(Lcom/twitter/library/network/ao;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/twitter/library/network/ao;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/twitter/library/network/ao;)Ljava/util/List;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/twitter/library/network/ao;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/twitter/library/network/ao;)I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/twitter/library/network/ao;->a:I

    return v0
.end method

.method static synthetic f(Lcom/twitter/library/network/ao;)J
    .locals 2

    .prologue
    .line 245
    iget-wide v0, p0, Lcom/twitter/library/network/ao;->f:J

    return-wide v0
.end method

.method static synthetic g(Lcom/twitter/library/network/ao;)Z
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/twitter/library/network/ao;->g:Z

    return v0
.end method

.method static synthetic h(Lcom/twitter/library/network/ao;)I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/twitter/library/network/ao;->h:I

    return v0
.end method


# virtual methods
.method public a()Lcom/twitter/library/network/SecurityScribeLog;
    .locals 2

    .prologue
    .line 257
    new-instance v0, Lcom/twitter/library/network/SecurityScribeLog;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/library/network/SecurityScribeLog;-><init>(Lcom/twitter/library/network/ao;Lcom/twitter/library/network/an;)V

    return-object v0
.end method

.method public a(I)Lcom/twitter/library/network/ao;
    .locals 0

    .prologue
    .line 262
    iput p1, p0, Lcom/twitter/library/network/ao;->a:I

    .line 263
    return-object p0
.end method

.method public a(J)Lcom/twitter/library/network/ao;
    .locals 1

    .prologue
    .line 274
    iput-wide p1, p0, Lcom/twitter/library/network/ao;->b:J

    .line 275
    return-object p0
.end method

.method public a(Lcom/twitter/util/network/h;)Lcom/twitter/library/network/ao;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/twitter/library/network/ao;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/twitter/library/network/ao;
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lcom/twitter/library/network/ao;->e:Ljava/lang/String;

    .line 287
    return-object p0
.end method

.method public a(Z)Lcom/twitter/library/network/ao;
    .locals 0

    .prologue
    .line 296
    iput-boolean p1, p0, Lcom/twitter/library/network/ao;->g:Z

    .line 297
    return-object p0
.end method

.method public b(I)Lcom/twitter/library/network/ao;
    .locals 0

    .prologue
    .line 280
    iput p1, p0, Lcom/twitter/library/network/ao;->d:I

    .line 281
    return-object p0
.end method

.method public b(J)Lcom/twitter/library/network/ao;
    .locals 1

    .prologue
    .line 291
    iput-wide p1, p0, Lcom/twitter/library/network/ao;->f:J

    .line 292
    return-object p0
.end method

.method public c(I)Lcom/twitter/library/network/ao;
    .locals 0

    .prologue
    .line 301
    iput p1, p0, Lcom/twitter/library/network/ao;->h:I

    .line 302
    return-object p0
.end method
