.class public Lcom/twitter/android/people/s;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final a:Laov;

.field private final b:Lrx/subjects/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/c",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcgc;

.field private final d:Lcom/twitter/android/people/adapters/ag;


# direct methods
.method public constructor <init>(Lcgc;Laov;Lcom/twitter/android/people/adapters/ag;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p2, p0, Lcom/twitter/android/people/s;->a:Laov;

    .line 40
    iput-object p1, p0, Lcom/twitter/android/people/s;->c:Lcgc;

    .line 41
    iput-object p3, p0, Lcom/twitter/android/people/s;->d:Lcom/twitter/android/people/adapters/ag;

    .line 42
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    invoke-static {v0}, Lrx/subjects/c;->e(Ljava/lang/Object;)Lrx/subjects/c;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/people/s;->b:Lrx/subjects/c;

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/people/s;)Lcom/twitter/android/people/adapters/ag;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/twitter/android/people/s;->d:Lcom/twitter/android/people/adapters/ag;

    return-object v0
.end method

.method private a(Lcom/twitter/android/people/adapters/i;)Lcom/twitter/android/people/adapters/i;
    .locals 1

    .prologue
    .line 83
    instance-of v0, p1, Lcom/twitter/android/people/adapters/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/people/s;->c:Lcgc;

    .line 84
    invoke-virtual {v0}, Lcgc;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    check-cast p1, Lcom/twitter/android/people/adapters/j;

    invoke-virtual {p1}, Lcom/twitter/android/people/adapters/j;->a()Lcom/twitter/android/people/adapters/j;

    move-result-object p1

    .line 87
    :cond_0
    return-object p1
.end method

.method static synthetic a(Lcom/twitter/android/people/s;Lcom/twitter/android/people/adapters/i;)Lcom/twitter/android/people/adapters/i;
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/twitter/android/people/s;->a(Lcom/twitter/android/people/adapters/i;)Lcom/twitter/android/people/adapters/i;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lrx/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/o",
            "<",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/twitter/android/people/adapters/i;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/people/s;->a(Ljava/util/Map;)Lrx/o;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/Map;)Lrx/o;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/o",
            "<",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/twitter/android/people/adapters/i;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/twitter/android/people/s;->a:Laov;

    invoke-virtual {v0, p1}, Laov;->a(Ljava/util/Map;)Lrx/o;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/people/t;

    invoke-direct {v1, p0}, Lcom/twitter/android/people/t;-><init>(Lcom/twitter/android/people/s;)V

    invoke-virtual {v0, v1}, Lrx/o;->h(Ldjj;)Lrx/o;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/twitter/android/people/s;->b:Lrx/subjects/c;

    .line 56
    invoke-static {}, Ldcn;->a()Ldjk;

    move-result-object v2

    .line 55
    invoke-static {v0, v1, v2}, Lrx/o;->a(Lrx/o;Lrx/o;Ldjk;)Lrx/o;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/people/u;

    invoke-direct {v1, p0}, Lcom/twitter/android/people/u;-><init>(Lcom/twitter/android/people/s;)V

    .line 57
    invoke-virtual {v0, v1}, Lrx/o;->h(Ldjj;)Lrx/o;

    move-result-object v0

    .line 55
    return-object v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/twitter/android/people/s;->b:Lrx/subjects/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lrx/subjects/c;->b_(Ljava/lang/Object;)V

    .line 79
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/twitter/android/people/s;->a:Laov;

    invoke-virtual {v0}, Laov;->close()V

    .line 94
    return-void
.end method
