.class public Lcom/twitter/android/moments/data/bp;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/moments/data/bo;


# instance fields
.field private final a:Lbqf;

.field private final b:Lcom/twitter/android/moments/data/bl;

.field private final c:Lcom/twitter/android/moments/data/bk;

.field private final d:Lcom/twitter/android/moments/data/az;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcrc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/data/az;Lbqf;Lcom/twitter/android/moments/data/bl;Lcom/twitter/android/moments/data/bk;)V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/moments/data/bp;->e:Ljava/util/Map;

    .line 74
    iput-object p1, p0, Lcom/twitter/android/moments/data/bp;->d:Lcom/twitter/android/moments/data/az;

    .line 75
    iput-object p2, p0, Lcom/twitter/android/moments/data/bp;->a:Lbqf;

    .line 76
    iput-object p3, p0, Lcom/twitter/android/moments/data/bp;->b:Lcom/twitter/android/moments/data/bl;

    .line 77
    iput-object p4, p0, Lcom/twitter/android/moments/data/bp;->c:Lcom/twitter/android/moments/data/bk;

    .line 78
    return-void
.end method

.method public static a(Lcom/twitter/android/moments/data/az;Lbqf;Lcom/twitter/library/provider/dm;)Lcom/twitter/android/moments/data/bp;
    .locals 5

    .prologue
    .line 47
    invoke-virtual {p2}, Lcom/twitter/library/provider/dm;->d()Lcom/twitter/database/schema/TwitterSchema;

    move-result-object v1

    .line 48
    new-instance v2, Lceo;

    sget-object v3, Lcrc;->a:Lcom/twitter/util/serialization/ah;

    const-class v0, Lbfe;

    .line 50
    invoke-interface {v1, v0}, Lcom/twitter/database/model/l;->a(Ljava/lang/Class;)Lcom/twitter/database/model/p;

    move-result-object v0

    check-cast v0, Lbfe;

    invoke-interface {v0}, Lbfe;->f()Lcom/twitter/database/model/q;

    move-result-object v0

    const-class v4, Lbfh;

    .line 51
    invoke-interface {v1, v4}, Lcom/twitter/database/model/l;->c(Ljava/lang/Class;)Lcom/twitter/database/model/r;

    move-result-object v1

    invoke-direct {v2, v3, v0, v1}, Lceo;-><init>(Lcom/twitter/util/serialization/ah;Lcom/twitter/database/model/q;Lcom/twitter/database/model/r;)V

    .line 52
    new-instance v0, Lcom/twitter/android/moments/data/bp;

    new-instance v1, Lcom/twitter/android/moments/data/bl;

    invoke-direct {v1, v2}, Lcom/twitter/android/moments/data/bl;-><init>(Lcep;)V

    new-instance v3, Lcom/twitter/android/moments/data/bk;

    invoke-direct {v3, v2}, Lcom/twitter/android/moments/data/bk;-><init>(Lcep;)V

    invoke-direct {v0, p0, p1, v1, v3}, Lcom/twitter/android/moments/data/bp;-><init>(Lcom/twitter/android/moments/data/az;Lbqf;Lcom/twitter/android/moments/data/bl;Lcom/twitter/android/moments/data/bk;)V

    return-object v0
.end method

.method private a()Ldjf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldjf",
            "<",
            "Ljava/util/List",
            "<",
            "Lcrc;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 166
    new-instance v0, Lcom/twitter/android/moments/data/bq;

    invoke-direct {v0, p0}, Lcom/twitter/android/moments/data/bq;-><init>(Lcom/twitter/android/moments/data/bp;)V

    return-object v0
.end method

.method static synthetic a(Lcom/twitter/android/moments/data/bp;)Ldjf;
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/twitter/android/moments/data/bp;->c()Ldjf;

    move-result-object v0

    return-object v0
.end method

.method private b()Ldjf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldjf",
            "<",
            "Ljava/util/List",
            "<",
            "Lcrc;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 181
    new-instance v0, Lcom/twitter/android/moments/data/br;

    invoke-direct {v0, p0}, Lcom/twitter/android/moments/data/br;-><init>(Lcom/twitter/android/moments/data/bp;)V

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/android/moments/data/bp;)Ldjf;
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/twitter/android/moments/data/bp;->b()Ldjf;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/twitter/android/moments/data/bp;)Lcom/twitter/android/moments/data/bk;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/twitter/android/moments/data/bp;->c:Lcom/twitter/android/moments/data/bk;

    return-object v0
.end method

.method private c()Ldjf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldjf",
            "<",
            "Ljava/util/List",
            "<",
            "Lcrc;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 197
    new-instance v0, Lcom/twitter/android/moments/data/bs;

    invoke-direct {v0, p0}, Lcom/twitter/android/moments/data/bs;-><init>(Lcom/twitter/android/moments/data/bp;)V

    return-object v0
.end method

.method static synthetic d(Lcom/twitter/android/moments/data/bp;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/twitter/android/moments/data/bp;->e:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcrc;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/twitter/android/moments/data/bp;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrc;

    return-object v0
.end method

.method public a(Ljava/util/List;)Lrx/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/o",
            "<",
            "Ljava/util/List",
            "<",
            "Lcrc;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/twitter/android/moments/data/bp;->d:Lcom/twitter/android/moments/data/az;

    .line 137
    invoke-virtual {v0, p1}, Lcom/twitter/android/moments/data/az;->a(Ljava/util/List;)Lrx/o;

    move-result-object v0

    .line 138
    invoke-direct {p0}, Lcom/twitter/android/moments/data/bp;->a()Ldjf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/o;->a(Ldjf;)Lrx/o;

    move-result-object v0

    .line 136
    return-object v0
.end method

.method public b(Ljava/lang/String;)Lrx/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/o",
            "<",
            "Lcrc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    invoke-static {p1}, Lcom/twitter/util/collection/r;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/moments/data/bp;->a(Ljava/util/List;)Lrx/o;

    move-result-object v0

    .line 121
    invoke-static {}, Ldcn;->b()Ldjj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/o;->d(Ldjj;)Lrx/o;

    move-result-object v0

    .line 122
    invoke-static {}, Ldcn;->c()Ldjj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/o;->h(Ldjj;)Lrx/o;

    move-result-object v0

    .line 120
    return-object v0
.end method

.method public close()V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    iget-object v0, p0, Lcom/twitter/android/moments/data/bp;->d:Lcom/twitter/android/moments/data/az;

    invoke-virtual {v0}, Lcom/twitter/android/moments/data/az;->close()V

    .line 224
    iget-object v0, p0, Lcom/twitter/android/moments/data/bp;->a:Lbqf;

    invoke-virtual {v0}, Lbqf;->close()V

    .line 225
    iget-object v0, p0, Lcom/twitter/android/moments/data/bp;->b:Lcom/twitter/android/moments/data/bl;

    invoke-virtual {v0}, Lcom/twitter/android/moments/data/bl;->close()V

    .line 226
    return-void
.end method
