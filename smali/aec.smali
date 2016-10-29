.class public Laec;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Laeb;


# instance fields
.field private final a:Laes;

.field private final b:Ladz;

.field private final c:Lcom/twitter/library/api/moments/maker/s;

.field private final d:Lcet;

.field private final e:J


# direct methods
.method public constructor <init>(JLadz;Laes;Lcom/twitter/library/api/moments/maker/s;Lcet;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-wide p1, p0, Laec;->e:J

    .line 49
    iput-object p4, p0, Laec;->a:Laes;

    .line 50
    iput-object p3, p0, Laec;->b:Ladz;

    .line 51
    iput-object p5, p0, Laec;->c:Lcom/twitter/library/api/moments/maker/s;

    .line 52
    iput-object p6, p0, Laec;->d:Lcet;

    .line 53
    return-void
.end method

.method static synthetic a(Laec;)Ladz;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Laec;->b:Ladz;

    return-object v0
.end method

.method private a()Ldjj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldjj",
            "<-",
            "Lcom/twitter/model/moments/maker/af;",
            "+",
            "Lrx/w",
            "<",
            "Lcom/twitter/model/moments/maker/af;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 71
    new-instance v0, Laed;

    invoke-direct {v0, p0}, Laed;-><init>(Laec;)V

    return-object v0
.end method

.method static synthetic a(Laec;Lcom/twitter/model/moments/maker/af;)Ldjj;
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1}, Laec;->a(Lcom/twitter/model/moments/maker/af;)Ldjj;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/twitter/model/moments/maker/af;)Ldjj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/moments/maker/af;",
            ")",
            "Ldjj",
            "<-",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/moments/viewmodels/m;",
            ">;+",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/moments/viewmodels/m;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 118
    new-instance v0, Laeg;

    invoke-direct {v0, p0, p1}, Laeg;-><init>(Laec;Lcom/twitter/model/moments/maker/af;)V

    return-object v0
.end method

.method static synthetic b(Laec;)J
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, Laec;->e:J

    return-wide v0
.end method

.method private b()Ldjf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldjf",
            "<-",
            "Lcom/twitter/model/moments/maker/af;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    new-instance v0, Laee;

    invoke-direct {v0, p0}, Laee;-><init>(Laec;)V

    return-object v0
.end method

.method static synthetic c(Laec;)Lcet;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Laec;->d:Lcet;

    return-object v0
.end method

.method private c()Ldjj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldjj",
            "<-",
            "Lcom/twitter/model/moments/maker/af;",
            "Lrx/w",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/moments/viewmodels/m;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Laef;

    invoke-direct {v0, p0}, Laef;-><init>(Laec;)V

    return-object v0
.end method

.method static synthetic d(Laec;)Laes;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Laec;->a:Laes;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/twitter/library/api/moments/maker/RecommendationType;)Lrx/w;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/library/api/moments/maker/RecommendationType;",
            ")",
            "Lrx/w",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/moments/viewmodels/m;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Laec;->c:Lcom/twitter/library/api/moments/maker/s;

    invoke-virtual {v0, p1}, Lcom/twitter/library/api/moments/maker/s;->a_(Ljava/lang/Object;)Lrx/o;

    move-result-object v0

    sget-object v1, Lcom/twitter/model/moments/maker/af;->a:Lcom/twitter/model/moments/maker/af;

    invoke-static {v0, v1}, Ldcn;->a(Lrx/o;Ljava/lang/Object;)Lrx/w;

    move-result-object v0

    .line 63
    invoke-direct {p0}, Laec;->b()Ldjf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/w;->b(Ldjf;)Lrx/w;

    move-result-object v0

    .line 64
    invoke-direct {p0}, Laec;->a()Ldjj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/w;->a(Ldjj;)Lrx/w;

    move-result-object v0

    .line 65
    invoke-direct {p0}, Laec;->c()Ldjj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/w;->a(Ldjj;)Lrx/w;

    move-result-object v0

    .line 61
    return-object v0
.end method
