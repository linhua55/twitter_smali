.class public Lalu;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lals;


# instance fields
.field private final b:Lczf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lczf",
            "<",
            "Lalz;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lauf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lauf",
            "<",
            "Lcom/twitter/android/moments/ui/guide/ae;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lrx/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/o",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/moments/t;",
            ">;>;"
        }
    .end annotation
.end field

.field private final e:Lahi;

.field private f:Lrx/ap;


# direct methods
.method public constructor <init>(Lczf;Lrx/o;Lauf;Lahi;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lczf",
            "<",
            "Lalz;",
            ">;",
            "Lrx/o",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/moments/t;",
            ">;>;",
            "Lauf",
            "<",
            "Lcom/twitter/android/moments/ui/guide/ae;",
            ">;",
            "Lahi;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lalu;->b:Lczf;

    .line 39
    iput-object p2, p0, Lalu;->d:Lrx/o;

    .line 40
    iput-object p3, p0, Lalu;->c:Lauf;

    .line 41
    iput-object p4, p0, Lalu;->e:Lahi;

    .line 42
    return-void
.end method

.method static synthetic a(Lalu;)Lczf;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lalu;->b:Lczf;

    return-object v0
.end method

.method static synthetic b(Lalu;)Lauf;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lalu;->c:Lauf;

    return-object v0
.end method

.method static synthetic c(Lalu;)Lahi;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lalu;->e:Lahi;

    return-object v0
.end method

.method static synthetic c()Lczn;
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lalu;->d()Lczn;

    move-result-object v0

    return-object v0
.end method

.method private static d()Lczn;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lczn",
            "<",
            "Lcom/twitter/model/moments/t;",
            "Lalz;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Lalv;

    invoke-direct {v0}, Lalv;-><init>()V

    return-object v0
.end method

.method private static e()Ldjj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldjj",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/moments/t;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lalz;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Lalw;

    invoke-direct {v0}, Lalw;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 68
    invoke-virtual {p0}, Lalu;->b()V

    .line 69
    iget-object v0, p0, Lalu;->d:Lrx/o;

    const/4 v1, 0x1

    .line 70
    invoke-virtual {v0, v1}, Lrx/o;->b(I)Lrx/o;

    move-result-object v0

    .line 71
    invoke-static {}, Lalu;->e()Ldjj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/o;->h(Ldjj;)Lrx/o;

    move-result-object v0

    new-instance v1, Lalx;

    invoke-direct {v1, p0}, Lalx;-><init>(Lalu;)V

    .line 72
    invoke-virtual {v0, v1}, Lrx/o;->b(Lrx/ao;)Lrx/ap;

    move-result-object v0

    iput-object v0, p0, Lalu;->f:Lrx/ap;

    .line 86
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lalu;->f:Lrx/ap;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lalu;->f:Lrx/ap;

    invoke-interface {v0}, Lrx/ap;->R_()V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lalu;->f:Lrx/ap;

    .line 94
    :cond_0
    return-void
.end method
