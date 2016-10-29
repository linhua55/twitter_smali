.class public Lars;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:Z

.field public final e:J

.field public final f:J

.field public final g:J

.field public final h:J

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Lcom/twitter/library/client/Session;

.field public final l:I

.field public final m:Lcom/twitter/android/revenue/d;

.field public final n:Lcom/twitter/model/timeline/ae;

.field public final o:Lcom/twitter/android/timeline/cp;

.field public final p:Lcom/twitter/android/timeline/cp;


# direct methods
.method private constructor <init>(Laru;)V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {p1}, Laru;->a(Laru;)I

    move-result v0

    iput v0, p0, Lars;->a:I

    .line 49
    invoke-static {p1}, Laru;->b(Laru;)I

    move-result v0

    iput v0, p0, Lars;->b:I

    .line 50
    invoke-static {p1}, Laru;->c(Laru;)I

    move-result v0

    iput v0, p0, Lars;->c:I

    .line 51
    invoke-static {p1}, Laru;->d(Laru;)Z

    move-result v0

    iput-boolean v0, p0, Lars;->d:Z

    .line 52
    invoke-static {p1}, Laru;->e(Laru;)J

    move-result-wide v0

    iput-wide v0, p0, Lars;->e:J

    .line 53
    invoke-static {p1}, Laru;->f(Laru;)J

    move-result-wide v0

    iput-wide v0, p0, Lars;->f:J

    .line 54
    invoke-static {p1}, Laru;->g(Laru;)J

    move-result-wide v0

    iput-wide v0, p0, Lars;->g:J

    .line 55
    invoke-static {p1}, Laru;->h(Laru;)J

    move-result-wide v0

    iput-wide v0, p0, Lars;->h:J

    .line 56
    invoke-static {p1}, Laru;->i(Laru;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lars;->i:Ljava/lang/String;

    .line 57
    invoke-static {p1}, Laru;->j(Laru;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lars;->j:Ljava/lang/String;

    .line 58
    invoke-static {p1}, Laru;->k(Laru;)Lcom/twitter/library/client/Session;

    move-result-object v0

    iput-object v0, p0, Lars;->k:Lcom/twitter/library/client/Session;

    .line 59
    invoke-static {p1}, Laru;->l(Laru;)I

    move-result v0

    iput v0, p0, Lars;->l:I

    .line 60
    invoke-static {p1}, Laru;->m(Laru;)Lcom/twitter/android/revenue/d;

    move-result-object v0

    iput-object v0, p0, Lars;->m:Lcom/twitter/android/revenue/d;

    .line 61
    invoke-static {p1}, Laru;->n(Laru;)Lcom/twitter/model/timeline/ae;

    move-result-object v0

    iput-object v0, p0, Lars;->n:Lcom/twitter/model/timeline/ae;

    .line 62
    invoke-static {p1}, Laru;->o(Laru;)Lcom/twitter/android/timeline/cp;

    move-result-object v0

    iput-object v0, p0, Lars;->o:Lcom/twitter/android/timeline/cp;

    .line 63
    invoke-static {p1}, Laru;->p(Laru;)Lcom/twitter/android/timeline/cp;

    move-result-object v0

    iput-object v0, p0, Lars;->p:Lcom/twitter/android/timeline/cp;

    .line 64
    return-void
.end method

.method synthetic constructor <init>(Laru;Lart;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lars;-><init>(Laru;)V

    return-void
.end method
