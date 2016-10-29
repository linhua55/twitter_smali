.class public Lcpf;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcpf;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcpf;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:J

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:J

.field public final h:J

.field public final i:J

.field public final j:Lcpu;

.field public final k:J

.field public final l:Ljava/lang/String;

.field public final m:Lcqb;

.field public final n:J

.field public final o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Lcpi;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcpi;-><init>(Lcpg;)V

    sput-object v0, Lcpf;->a:Lcom/twitter/util/serialization/ah;

    return-void
.end method

.method private constructor <init>(Lcph;)V
    .locals 4

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Lcph;->a(Lcph;)Lcpu;

    move-result-object v0

    iput-object v0, p0, Lcpf;->j:Lcpu;

    .line 37
    invoke-static {p1}, Lcph;->b(Lcph;)J

    move-result-wide v0

    iput-wide v0, p0, Lcpf;->h:J

    .line 38
    invoke-static {p1}, Lcph;->c(Lcph;)J

    move-result-wide v0

    iput-wide v0, p0, Lcpf;->i:J

    .line 39
    invoke-static {p1}, Lcph;->d(Lcph;)J

    move-result-wide v0

    iput-wide v0, p0, Lcpf;->g:J

    .line 40
    invoke-static {p1}, Lcph;->e(Lcph;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcpf;->d:Ljava/lang/String;

    .line 41
    invoke-static {p1}, Lcph;->f(Lcph;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcpf;->e:Ljava/lang/String;

    .line 42
    invoke-static {p1}, Lcph;->g(Lcph;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcpf;->c:Ljava/lang/String;

    .line 43
    invoke-static {p1}, Lcph;->h(Lcph;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcpf;->f:Ljava/lang/String;

    .line 44
    invoke-static {p1}, Lcph;->i(Lcph;)J

    move-result-wide v0

    iput-wide v0, p0, Lcpf;->b:J

    .line 45
    invoke-static {p1}, Lcph;->j(Lcph;)J

    move-result-wide v0

    iput-wide v0, p0, Lcpf;->k:J

    .line 46
    invoke-static {p1}, Lcph;->k(Lcph;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcpf;->l:Ljava/lang/String;

    .line 47
    invoke-static {p1}, Lcph;->l(Lcph;)J

    move-result-wide v0

    invoke-static {p1}, Lcph;->m(Lcph;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcqb;->a(JJ)Lcqb;

    move-result-object v0

    iput-object v0, p0, Lcpf;->m:Lcqb;

    .line 48
    invoke-static {p1}, Lcph;->n(Lcph;)J

    move-result-wide v0

    iput-wide v0, p0, Lcpf;->n:J

    .line 49
    invoke-static {p1}, Lcph;->o(Lcph;)Z

    move-result v0

    iput-boolean v0, p0, Lcpf;->o:Z

    .line 50
    return-void
.end method

.method synthetic constructor <init>(Lcph;Lcpg;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcpf;-><init>(Lcph;)V

    return-void
.end method


# virtual methods
.method public a(Lcpf;)I
    .locals 4

    .prologue
    .line 54
    iget-wide v0, p0, Lcpf;->n:J

    iget-wide v2, p1, Lcpf;->n:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 55
    const/4 v0, 0x0

    .line 57
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcpf;->n:J

    iget-wide v2, p1, Lcpf;->n:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 16
    check-cast p1, Lcpf;

    invoke-virtual {p0, p1}, Lcpf;->a(Lcpf;)I

    move-result v0

    return v0
.end method
