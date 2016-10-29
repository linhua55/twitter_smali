.class public Lcom/twitter/model/core/cm;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/model/core/w;


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:I

.field public final d:I

.field public final e:J

.field public final f:J

.field public final g:J

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:Lcom/twitter/model/core/TwitterUser;


# direct methods
.method public constructor <init>(Lcom/twitter/model/core/cn;)V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {p1}, Lcom/twitter/model/core/cn;->a(Lcom/twitter/model/core/cn;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/model/core/cm;->a:Z

    .line 41
    invoke-static {p1}, Lcom/twitter/model/core/cn;->b(Lcom/twitter/model/core/cn;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/model/core/cm;->b:Z

    .line 42
    invoke-static {p1}, Lcom/twitter/model/core/cn;->c(Lcom/twitter/model/core/cn;)I

    move-result v0

    iput v0, p0, Lcom/twitter/model/core/cm;->c:I

    .line 43
    invoke-static {p1}, Lcom/twitter/model/core/cn;->d(Lcom/twitter/model/core/cn;)I

    move-result v0

    iput v0, p0, Lcom/twitter/model/core/cm;->d:I

    .line 44
    invoke-static {p1}, Lcom/twitter/model/core/cn;->e(Lcom/twitter/model/core/cn;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/model/core/cm;->e:J

    .line 45
    invoke-static {p1}, Lcom/twitter/model/core/cn;->f(Lcom/twitter/model/core/cn;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/model/core/cm;->f:J

    .line 46
    invoke-static {p1}, Lcom/twitter/model/core/cn;->g(Lcom/twitter/model/core/cn;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/model/core/cm;->g:J

    .line 47
    invoke-static {p1}, Lcom/twitter/model/core/cn;->h(Lcom/twitter/model/core/cn;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/core/cm;->l:Ljava/lang/String;

    .line 48
    invoke-static {p1}, Lcom/twitter/model/core/cn;->i(Lcom/twitter/model/core/cn;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/core/cm;->h:Ljava/lang/String;

    .line 49
    invoke-static {p1}, Lcom/twitter/model/core/cn;->j(Lcom/twitter/model/core/cn;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/core/cm;->i:Ljava/lang/String;

    .line 50
    invoke-static {p1}, Lcom/twitter/model/core/cn;->k(Lcom/twitter/model/core/cn;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/core/cm;->j:Ljava/lang/String;

    .line 51
    invoke-static {p1}, Lcom/twitter/model/core/cn;->l(Lcom/twitter/model/core/cn;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/core/cm;->k:Ljava/lang/String;

    .line 52
    invoke-static {p1}, Lcom/twitter/model/core/cn;->m(Lcom/twitter/model/core/cn;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/core/cm;->m:Ljava/lang/String;

    .line 53
    invoke-static {p1}, Lcom/twitter/model/core/cn;->n(Lcom/twitter/model/core/cn;)Lcom/twitter/model/core/TwitterUser;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/core/cm;->n:Lcom/twitter/model/core/TwitterUser;

    .line 54
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/twitter/model/core/cm;->e:J

    return-wide v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/twitter/model/core/cm;->e:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
