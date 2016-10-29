.class public Lcom/twitter/model/timeline/bu;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/model/timeline/bu;


# instance fields
.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public final j:Z

.field public final k:Z

.field public final l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/twitter/model/timeline/bw;

    invoke-direct {v0}, Lcom/twitter/model/timeline/bw;-><init>()V

    invoke-virtual {v0}, Lcom/twitter/model/timeline/bw;->a()Lcom/twitter/model/timeline/bu;

    move-result-object v0

    sput-object v0, Lcom/twitter/model/timeline/bu;->a:Lcom/twitter/model/timeline/bu;

    return-void
.end method

.method private constructor <init>(Lcom/twitter/model/timeline/bw;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {p1}, Lcom/twitter/model/timeline/bw;->a(Lcom/twitter/model/timeline/bw;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/model/timeline/bu;->b:Z

    .line 32
    invoke-static {p1}, Lcom/twitter/model/timeline/bw;->b(Lcom/twitter/model/timeline/bw;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/model/timeline/bu;->c:Z

    .line 33
    invoke-static {p1}, Lcom/twitter/model/timeline/bw;->c(Lcom/twitter/model/timeline/bw;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/model/timeline/bu;->d:Z

    .line 34
    invoke-static {p1}, Lcom/twitter/model/timeline/bw;->d(Lcom/twitter/model/timeline/bw;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/model/timeline/bu;->e:Z

    .line 35
    invoke-static {p1}, Lcom/twitter/model/timeline/bw;->e(Lcom/twitter/model/timeline/bw;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/model/timeline/bu;->f:Z

    .line 36
    invoke-static {p1}, Lcom/twitter/model/timeline/bw;->f(Lcom/twitter/model/timeline/bw;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/model/timeline/bu;->g:Z

    .line 37
    invoke-static {p1}, Lcom/twitter/model/timeline/bw;->g(Lcom/twitter/model/timeline/bw;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/model/timeline/bu;->h:Z

    .line 38
    invoke-static {p1}, Lcom/twitter/model/timeline/bw;->h(Lcom/twitter/model/timeline/bw;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/model/timeline/bu;->i:Z

    .line 39
    invoke-static {p1}, Lcom/twitter/model/timeline/bw;->i(Lcom/twitter/model/timeline/bw;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/model/timeline/bu;->j:Z

    .line 40
    invoke-static {p1}, Lcom/twitter/model/timeline/bw;->j(Lcom/twitter/model/timeline/bw;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/model/timeline/bu;->k:Z

    .line 41
    invoke-static {p1}, Lcom/twitter/model/timeline/bw;->k(Lcom/twitter/model/timeline/bw;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/model/timeline/bu;->l:Z

    .line 42
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/timeline/bw;Lcom/twitter/model/timeline/bv;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/twitter/model/timeline/bu;-><init>(Lcom/twitter/model/timeline/bw;)V

    return-void
.end method
