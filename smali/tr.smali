.class public Ltr;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static a:Ltr;


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lrx/o",
            "<",
            "Lcom/twitter/model/av/o;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Ltq;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Ltq;

    invoke-direct {v0, p1}, Ltq;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Ltr;-><init>(Ltq;)V

    .line 49
    return-void
.end method

.method constructor <init>(Ltq;)V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltr;->b:Ljava/util/Map;

    .line 60
    iput-object p1, p0, Ltr;->c:Ltq;

    .line 61
    return-void
.end method

.method private a(Lcom/twitter/library/client/Session;Ljava/lang/Long;)Lrx/o;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/library/client/Session;",
            "Ljava/lang/Long;",
            ")",
            "Lrx/o",
            "<",
            "Lcom/twitter/model/av/o;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Ltr;->c:Ltq;

    .line 106
    invoke-virtual {v0, p1}, Ltq;->a(Lcom/twitter/library/client/Session;)Ltp;

    move-result-object v0

    invoke-virtual {v0, p2}, Ltp;->a_(Ljava/lang/Object;)Lrx/o;

    move-result-object v0

    new-instance v1, Ltt;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ltt;-><init>(Lts;)V

    invoke-virtual {v0, v1}, Lrx/o;->h(Ldjj;)Lrx/o;

    move-result-object v0

    .line 105
    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ltr;
    .locals 2

    .prologue
    .line 35
    sget-object v0, Ltr;->a:Ltr;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Ltr;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ltr;-><init>(Landroid/content/Context;)V

    sput-object v0, Ltr;->a:Ltr;

    .line 39
    :cond_0
    sget-object v0, Ltr;->a:Ltr;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/twitter/library/client/Session;)Lrx/o;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/library/client/Session;",
            ")",
            "Lrx/o",
            "<",
            "Lcom/twitter/model/av/o;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    .line 74
    iget-object v2, p0, Ltr;->b:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 75
    iget-object v2, p0, Ltr;->b:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    .line 76
    invoke-direct {p0, p1, v4}, Ltr;->a(Lcom/twitter/library/client/Session;Ljava/lang/Long;)Lrx/o;

    move-result-object v4

    invoke-virtual {v4}, Lrx/o;->e()Lrx/o;

    move-result-object v4

    .line 75
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_0
    iget-object v2, p0, Ltr;->b:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/o;

    return-object v0
.end method

.method public a(Lcom/twitter/library/client/Session;J)Lrx/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/library/client/Session;",
            "J)",
            "Lrx/o",
            "<",
            "Lcom/twitter/model/av/o;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ltr;->a(Lcom/twitter/library/client/Session;Ljava/lang/Long;)Lrx/o;

    move-result-object v0

    invoke-virtual {v0}, Lrx/o;->e()Lrx/o;

    move-result-object v0

    return-object v0
.end method
