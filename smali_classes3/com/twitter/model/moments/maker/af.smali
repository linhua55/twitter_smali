.class public Lcom/twitter/model/moments/maker/af;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/model/moments/maker/af;


# instance fields
.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/core/cs;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcqt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    new-instance v0, Lcom/twitter/model/moments/maker/af;

    .line 23
    invoke-static {}, Lcom/twitter/util/collection/v;->f()Ljava/util/Map;

    move-result-object v1

    invoke-static {}, Lcom/twitter/util/collection/r;->g()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/twitter/model/moments/maker/af;-><init>(Ljava/util/Map;Ljava/util/List;)V

    sput-object v0, Lcom/twitter/model/moments/maker/af;->a:Lcom/twitter/model/moments/maker/af;

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/core/cs;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcqt;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/twitter/model/moments/maker/af;->b:Ljava/util/Map;

    .line 30
    iput-object p2, p0, Lcom/twitter/model/moments/maker/af;->c:Ljava/util/List;

    .line 31
    return-void
.end method

.method private a(Ljava/util/Map;)Ldjf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcqx;",
            ">;)",
            "Ldjf",
            "<-",
            "Ljava/util/List",
            "<",
            "Lcqt;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Lcom/twitter/model/moments/maker/ag;

    invoke-direct {v0, p0, p1}, Lcom/twitter/model/moments/maker/ag;-><init>(Lcom/twitter/model/moments/maker/af;Ljava/util/Map;)V

    return-object v0
.end method

.method private b()Ldjj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldjj",
            "<-",
            "Ldkx",
            "<",
            "Ljava/lang/Long;",
            "Lcqt;",
            ">;+",
            "Lrx/o",
            "<",
            "Ljava/util/List",
            "<",
            "Lcqt;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Lcom/twitter/model/moments/maker/ah;

    invoke-direct {v0, p0}, Lcom/twitter/model/moments/maker/ah;-><init>(Lcom/twitter/model/moments/maker/af;)V

    return-object v0
.end method

.method private c()Ldjj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldjj",
            "<-",
            "Lcqt;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    new-instance v0, Lcom/twitter/model/moments/maker/ai;

    invoke-direct {v0, p0}, Lcom/twitter/model/moments/maker/ai;-><init>(Lcom/twitter/model/moments/maker/af;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcqx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/twitter/model/moments/maker/af;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/twitter/util/collection/MutableMap;->a(I)Ljava/util/Map;

    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/twitter/model/moments/maker/af;->c:Ljava/util/List;

    invoke-static {v1}, Lrx/o;->a(Ljava/lang/Iterable;)Lrx/o;

    move-result-object v1

    .line 37
    invoke-direct {p0}, Lcom/twitter/model/moments/maker/af;->c()Ldjj;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/o;->g(Ldjj;)Lrx/o;

    move-result-object v1

    .line 38
    invoke-direct {p0}, Lcom/twitter/model/moments/maker/af;->b()Ldjj;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/o;->f(Ldjj;)Lrx/o;

    move-result-object v1

    .line 39
    invoke-direct {p0, v0}, Lcom/twitter/model/moments/maker/af;->a(Ljava/util/Map;)Ldjf;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/o;->c(Ldjf;)Lrx/ap;

    .line 40
    return-object v0
.end method
