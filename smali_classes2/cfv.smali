.class public Lcfv;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private a:Lcom/twitter/library/api/PromotedEvent;

.field private b:J

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method synthetic constructor <init>(Lcfu;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcfv;-><init>()V

    return-void
.end method

.method static synthetic a(Lcfv;)Lcom/twitter/library/api/PromotedEvent;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcfv;->a:Lcom/twitter/library/api/PromotedEvent;

    return-object v0
.end method

.method static synthetic b(Lcfv;)J
    .locals 2

    .prologue
    .line 11
    iget-wide v0, p0, Lcfv;->b:J

    return-wide v0
.end method

.method static synthetic c(Lcfv;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcfv;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcfv;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcfv;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcfv;)Z
    .locals 1

    .prologue
    .line 11
    iget-boolean v0, p0, Lcfv;->e:Z

    return v0
.end method

.method static synthetic f(Lcfv;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcfv;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcfv;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcfv;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcfv;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcfv;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcfv;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcfv;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcfv;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcfv;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcfv;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcfv;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcfv;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcfv;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lcfv;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcfv;->m:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()Lcft;
    .locals 2

    .prologue
    .line 117
    new-instance v0, Lcft;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcft;-><init>(Lcfv;Lcfu;)V

    return-object v0
.end method

.method public a(Lcom/twitter/library/api/PromotedEvent;)Lcfv;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcfv;->a:Lcom/twitter/library/api/PromotedEvent;

    .line 31
    return-object p0
.end method

.method public a(Lcss;)Lcfv;
    .locals 2

    .prologue
    .line 35
    iget-object v0, p1, Lcss;->c:Ljava/lang/String;

    iput-object v0, p0, Lcfv;->d:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Lcss;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcfv;->e:Z

    .line 37
    iget-wide v0, p1, Lcss;->e:J

    iput-wide v0, p0, Lcfv;->b:J

    .line 38
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcfv;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcfv;->c:Ljava/lang/String;

    .line 46
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcfv;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcfv;->f:Ljava/lang/String;

    .line 54
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcfv;
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcfv;->l:Ljava/lang/String;

    .line 102
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcfv;
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcfv;->m:Ljava/lang/String;

    .line 110
    return-object p0
.end method
