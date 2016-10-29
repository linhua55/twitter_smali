.class public Lcom/twitter/model/moments/ad;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcom/twitter/model/moments/ad;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:J

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:Z

.field public final f:Z

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Z

.field public final l:Ljava/lang/String;

.field public final m:I

.field public final n:Ljava/lang/String;

.field public final o:Lcom/twitter/model/moments/a;

.field public final p:Lcss;

.field public final q:Lcom/twitter/model/moments/o;

.field public final r:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/twitter/model/moments/ag;

    invoke-direct {v0}, Lcom/twitter/model/moments/ag;-><init>()V

    sput-object v0, Lcom/twitter/model/moments/ad;->a:Lcom/twitter/util/serialization/ah;

    return-void
.end method

.method private constructor <init>(Lcom/twitter/model/moments/af;)V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {p1}, Lcom/twitter/model/moments/af;->a(Lcom/twitter/model/moments/af;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/model/moments/ad;->b:J

    .line 45
    invoke-static {p1}, Lcom/twitter/model/moments/af;->b(Lcom/twitter/model/moments/af;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/moments/ad;->c:Ljava/lang/String;

    .line 46
    invoke-static {p1}, Lcom/twitter/model/moments/af;->c(Lcom/twitter/model/moments/af;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/model/moments/ad;->d:Z

    .line 47
    invoke-static {p1}, Lcom/twitter/model/moments/af;->d(Lcom/twitter/model/moments/af;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/model/moments/ad;->e:Z

    .line 48
    invoke-static {p1}, Lcom/twitter/model/moments/af;->e(Lcom/twitter/model/moments/af;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/model/moments/ad;->f:Z

    .line 49
    invoke-static {p1}, Lcom/twitter/model/moments/af;->f(Lcom/twitter/model/moments/af;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/moments/ad;->g:Ljava/lang/String;

    .line 50
    invoke-static {p1}, Lcom/twitter/model/moments/af;->g(Lcom/twitter/model/moments/af;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/moments/ad;->h:Ljava/lang/String;

    .line 51
    invoke-static {p1}, Lcom/twitter/model/moments/af;->h(Lcom/twitter/model/moments/af;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/moments/ad;->i:Ljava/lang/String;

    .line 52
    invoke-static {p1}, Lcom/twitter/model/moments/af;->i(Lcom/twitter/model/moments/af;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/moments/ad;->j:Ljava/lang/String;

    .line 53
    invoke-static {p1}, Lcom/twitter/model/moments/af;->j(Lcom/twitter/model/moments/af;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/model/moments/ad;->k:Z

    .line 54
    invoke-static {p1}, Lcom/twitter/model/moments/af;->k(Lcom/twitter/model/moments/af;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/moments/ad;->l:Ljava/lang/String;

    .line 55
    invoke-static {p1}, Lcom/twitter/model/moments/af;->l(Lcom/twitter/model/moments/af;)I

    move-result v0

    iput v0, p0, Lcom/twitter/model/moments/ad;->m:I

    .line 56
    invoke-static {p1}, Lcom/twitter/model/moments/af;->m(Lcom/twitter/model/moments/af;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/moments/ad;->n:Ljava/lang/String;

    .line 57
    invoke-static {p1}, Lcom/twitter/model/moments/af;->n(Lcom/twitter/model/moments/af;)Lcom/twitter/model/moments/a;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/moments/ad;->o:Lcom/twitter/model/moments/a;

    .line 58
    invoke-static {p1}, Lcom/twitter/model/moments/af;->o(Lcom/twitter/model/moments/af;)Lcss;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/moments/ad;->p:Lcss;

    .line 59
    invoke-static {p1}, Lcom/twitter/model/moments/af;->p(Lcom/twitter/model/moments/af;)Lcom/twitter/model/moments/o;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/moments/ad;->q:Lcom/twitter/model/moments/o;

    .line 60
    invoke-static {p1}, Lcom/twitter/model/moments/af;->q(Lcom/twitter/model/moments/af;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/model/moments/ad;->r:J

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/moments/af;Lcom/twitter/model/moments/ae;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/twitter/model/moments/ad;-><init>(Lcom/twitter/model/moments/af;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/twitter/model/moments/ad;->p:Lcss;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "promoted"

    iget-object v1, p0, Lcom/twitter/model/moments/ad;->p:Lcss;

    iget-object v1, v1, Lcss;->d:Ljava/lang/String;

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 64
    :goto_0
    return v0

    .line 65
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
