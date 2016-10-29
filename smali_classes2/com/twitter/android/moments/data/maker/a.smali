.class public Lcom/twitter/android/moments/data/maker/a;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/android/moments/data/maker/t;

.field private final b:Lrx/subjects/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/e",
            "<",
            "Lcom/twitter/model/moments/maker/w;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/twitter/util/object/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/object/c",
            "<",
            "Lcom/twitter/model/moments/viewmodels/a;",
            "Lcom/twitter/android/moments/viewmodels/b;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lrx/subjects/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/e",
            "<",
            "Lcom/twitter/model/moments/viewmodels/a;",
            ">;"
        }
    .end annotation
.end field

.field private final e:J

.field private final f:Lrx/ap;

.field private g:Lcom/twitter/android/moments/viewmodels/b;


# direct methods
.method public constructor <init>(Lcom/twitter/android/moments/data/maker/t;Lcom/twitter/util/object/c;Ladm;Lcom/twitter/model/moments/viewmodels/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/android/moments/data/maker/t;",
            "Lcom/twitter/util/object/c",
            "<",
            "Lcom/twitter/model/moments/viewmodels/a;",
            "Lcom/twitter/android/moments/viewmodels/b;",
            ">;",
            "Ladm;",
            "Lcom/twitter/model/moments/viewmodels/a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/twitter/android/moments/data/maker/a;->a:Lcom/twitter/android/moments/data/maker/t;

    .line 46
    iput-object p2, p0, Lcom/twitter/android/moments/data/maker/a;->c:Lcom/twitter/util/object/c;

    .line 47
    invoke-static {}, Lrx/subjects/e;->q()Lrx/subjects/e;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/data/maker/a;->b:Lrx/subjects/e;

    .line 48
    invoke-static {}, Lrx/subjects/e;->q()Lrx/subjects/e;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/data/maker/a;->d:Lrx/subjects/e;

    .line 49
    invoke-virtual {p4}, Lcom/twitter/model/moments/viewmodels/a;->a()Lcom/twitter/model/moments/ad;

    move-result-object v0

    iget-wide v0, v0, Lcom/twitter/model/moments/ad;->b:J

    invoke-virtual {p3, v0, v1}, Ladm;->a(J)Lrx/o;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/moments/data/maker/c;

    invoke-direct {v1, p0}, Lcom/twitter/android/moments/data/maker/c;-><init>(Lcom/twitter/android/moments/data/maker/a;)V

    .line 50
    invoke-virtual {v0, v1}, Lrx/o;->d(Ldjj;)Lrx/o;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/moments/data/maker/b;

    invoke-direct {v1, p0}, Lcom/twitter/android/moments/data/maker/b;-><init>(Lcom/twitter/android/moments/data/maker/a;)V

    .line 57
    invoke-virtual {v0, v1}, Lrx/o;->h(Ldjj;)Lrx/o;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/moments/data/maker/a;->d:Lrx/subjects/e;

    .line 65
    invoke-virtual {v0, v1}, Lrx/o;->a(Lrx/r;)Lrx/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/data/maker/a;->f:Lrx/ap;

    .line 66
    iget-object v0, p0, Lcom/twitter/android/moments/data/maker/a;->c:Lcom/twitter/util/object/c;

    invoke-interface {v0, p4}, Lcom/twitter/util/object/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/viewmodels/b;

    iput-object v0, p0, Lcom/twitter/android/moments/data/maker/a;->g:Lcom/twitter/android/moments/viewmodels/b;

    .line 67
    invoke-virtual {p4}, Lcom/twitter/model/moments/viewmodels/a;->a()Lcom/twitter/model/moments/ad;

    move-result-object v0

    iget-wide v0, v0, Lcom/twitter/model/moments/ad;->b:J

    iput-wide v0, p0, Lcom/twitter/android/moments/data/maker/a;->e:J

    .line 68
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/moments/data/maker/a;)Lcom/twitter/android/moments/viewmodels/b;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/twitter/android/moments/data/maker/a;->g:Lcom/twitter/android/moments/viewmodels/b;

    return-object v0
.end method

.method static synthetic a(Lcom/twitter/android/moments/data/maker/a;Lcom/twitter/android/moments/viewmodels/b;)Lcom/twitter/android/moments/viewmodels/b;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/twitter/android/moments/data/maker/a;->g:Lcom/twitter/android/moments/viewmodels/b;

    return-object p1
.end method

.method static synthetic b(Lcom/twitter/android/moments/data/maker/a;)Lcom/twitter/util/object/c;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/twitter/android/moments/data/maker/a;->c:Lcom/twitter/util/object/c;

    return-object v0
.end method


# virtual methods
.method public a()Lrx/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/o",
            "<",
            "Lcom/twitter/model/moments/viewmodels/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/twitter/android/moments/data/maker/a;->b:Lrx/subjects/e;

    new-instance v1, Lcom/twitter/android/moments/data/maker/d;

    invoke-direct {v1, p0}, Lcom/twitter/android/moments/data/maker/d;-><init>(Lcom/twitter/android/moments/data/maker/a;)V

    invoke-virtual {v0, v1}, Lrx/subjects/e;->h(Ldjj;)Lrx/o;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/moments/data/maker/a;->g:Lcom/twitter/android/moments/viewmodels/b;

    .line 99
    invoke-virtual {v1}, Lcom/twitter/android/moments/viewmodels/b;->a()Lcom/twitter/model/moments/viewmodels/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/o;->d(Ljava/lang/Object;)Lrx/o;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/moments/data/maker/a;->d:Lrx/subjects/e;

    invoke-virtual {v0, v1}, Lrx/o;->g(Lrx/o;)Lrx/o;

    move-result-object v0

    .line 94
    return-object v0
.end method

.method public a(Lcom/twitter/model/moments/maker/w;)V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/twitter/android/moments/data/maker/a;->a(Lcom/twitter/model/moments/maker/w;Lcom/twitter/model/moments/viewmodels/m;)V

    .line 75
    return-void
.end method

.method public a(Lcom/twitter/model/moments/maker/w;Lcom/twitter/model/moments/viewmodels/m;)V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/twitter/android/moments/data/maker/a;->g:Lcom/twitter/android/moments/viewmodels/b;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/android/moments/viewmodels/b;->a(Lcom/twitter/model/moments/maker/w;Lcom/twitter/model/moments/viewmodels/m;)Lcom/twitter/android/moments/viewmodels/b;

    .line 85
    iget-object v0, p0, Lcom/twitter/android/moments/data/maker/a;->b:Lrx/subjects/e;

    invoke-virtual {v0, p1}, Lrx/subjects/e;->b_(Ljava/lang/Object;)V

    .line 86
    return-void
.end method

.method public b()Lrx/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/o",
            "<",
            "Lcom/twitter/model/moments/maker/w;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/twitter/android/moments/data/maker/a;->b:Lrx/subjects/e;

    return-object v0
.end method

.method public c()Lrx/w;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/w",
            "<",
            "Lcom/twitter/android/moments/data/maker/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/twitter/android/moments/data/maker/a;->a:Lcom/twitter/android/moments/data/maker/t;

    iget-wide v2, p0, Lcom/twitter/android/moments/data/maker/a;->e:J

    iget-object v1, p0, Lcom/twitter/android/moments/data/maker/a;->g:Lcom/twitter/android/moments/viewmodels/b;

    invoke-virtual {v1}, Lcom/twitter/android/moments/viewmodels/b;->b()Ljava/lang/Iterable;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/twitter/android/moments/data/maker/t;->a(JLjava/lang/Iterable;)Lrx/w;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/moments/data/maker/e;

    invoke-direct {v1, p0}, Lcom/twitter/android/moments/data/maker/e;-><init>(Lcom/twitter/android/moments/data/maker/a;)V

    invoke-virtual {v0, v1}, Lrx/w;->b(Ldjf;)Lrx/w;

    move-result-object v0

    .line 123
    invoke-static {p0}, Ldcn;->a(Ljava/lang/Object;)Ldjj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/w;->c(Ldjj;)Lrx/w;

    move-result-object v0

    .line 116
    return-object v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/twitter/android/moments/data/maker/a;->f:Lrx/ap;

    invoke-static {v0}, Lddg;->a(Lrx/ap;)V

    .line 128
    return-void
.end method
