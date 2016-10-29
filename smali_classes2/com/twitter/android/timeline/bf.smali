.class public Lcom/twitter/android/timeline/bf;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/twitter/library/client/bd;

.field private final c:Lcom/twitter/library/client/bk;

.field private final d:Lcom/twitter/android/timeline/bh;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/bd;Lcom/twitter/library/client/bk;Lcom/twitter/android/timeline/bh;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/twitter/android/timeline/bf;->a:Ljava/lang/ref/WeakReference;

    .line 32
    iput-object p2, p0, Lcom/twitter/android/timeline/bf;->b:Lcom/twitter/library/client/bd;

    .line 33
    iput-object p3, p0, Lcom/twitter/android/timeline/bf;->c:Lcom/twitter/library/client/bk;

    .line 34
    iput-object p4, p0, Lcom/twitter/android/timeline/bf;->d:Lcom/twitter/android/timeline/bh;

    .line 35
    return-void
.end method

.method private a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/twitter/android/timeline/bf;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 86
    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 89
    :cond_0
    return-object v0
.end method

.method static synthetic a(Lcom/twitter/android/timeline/bf;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/twitter/android/timeline/bf;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/twitter/android/timeline/bf;->d:Lcom/twitter/android/timeline/bh;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/twitter/android/timeline/bf;->d:Lcom/twitter/android/timeline/bh;

    invoke-interface {v0, p1}, Lcom/twitter/android/timeline/bh;->a(Ljava/lang/String;)V

    .line 81
    :cond_0
    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;IIZ)Lcif;
    .locals 6
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 62
    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p6

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcif;->a(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;IZI)Lcif;

    move-result-object v0

    .line 63
    invoke-virtual {p0, p3}, Lcom/twitter/android/timeline/bf;->a(Ljava/lang/String;)Lcom/twitter/library/service/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcif;->a(Lcom/twitter/internal/android/service/c;)Lcom/twitter/internal/android/service/AsyncOperation;

    move-result-object v0

    check-cast v0, Lcif;

    .line 62
    return-object v0
.end method

.method a(Ljava/lang/String;)Lcom/twitter/library/service/ac;
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/twitter/library/service/ac",
            "<",
            "Ljava/lang/Void;",
            "Lcif;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    new-instance v0, Lcom/twitter/android/timeline/bg;

    invoke-direct {v0, p0, p1}, Lcom/twitter/android/timeline/bg;-><init>(Lcom/twitter/android/timeline/bf;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;II)V
    .locals 8

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/twitter/android/timeline/bf;->a()Landroid/content/Context;

    move-result-object v1

    .line 40
    if-eqz v1, :cond_0

    const-string/jumbo v0, "unspecified"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    iget-object v7, p0, Lcom/twitter/android/timeline/bf;->b:Lcom/twitter/library/client/bd;

    iget-object v0, p0, Lcom/twitter/android/timeline/bf;->c:Lcom/twitter/library/client/bk;

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v2

    const/4 v6, 0x1

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/twitter/android/timeline/bf;->a(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;IIZ)Lcif;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/String;

    .line 44
    :cond_0
    return-void
.end method
