.class public Lcom/twitter/library/api/moments/maker/o;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/library/api/moments/maker/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/library/api/moments/maker/e",
            "<",
            "Lcom/twitter/library/api/moments/maker/b;",
            "Lcom/twitter/model/moments/maker/ar;",
            "Lcom/twitter/model/core/cj;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/twitter/library/api/moments/maker/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/library/api/moments/maker/e",
            "<",
            "Lcom/twitter/library/api/moments/maker/g;",
            "Lcom/twitter/model/moments/maker/ar;",
            "Lcom/twitter/model/core/cj;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/twitter/library/api/moments/maker/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/library/api/moments/maker/e",
            "<",
            "Lcom/twitter/library/api/moments/maker/h;",
            "Lcom/twitter/model/moments/maker/ar;",
            "Lcom/twitter/model/core/cj;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/twitter/library/api/moments/maker/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/library/api/moments/maker/e",
            "<",
            "Lcom/twitter/library/api/moments/maker/t;",
            "Lcom/twitter/model/moments/maker/ar;",
            "Lcom/twitter/model/core/cj;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/twitter/library/api/upload/s;


# direct methods
.method public constructor <init>(Lcom/twitter/library/api/moments/maker/e;Lcom/twitter/library/api/moments/maker/e;Lcom/twitter/library/api/moments/maker/e;Lcom/twitter/library/api/moments/maker/e;Lcom/twitter/library/api/upload/s;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/library/api/moments/maker/e",
            "<",
            "Lcom/twitter/library/api/moments/maker/b;",
            "Lcom/twitter/model/moments/maker/ar;",
            "Lcom/twitter/model/core/cj;",
            ">;",
            "Lcom/twitter/library/api/moments/maker/e",
            "<",
            "Lcom/twitter/library/api/moments/maker/g;",
            "Lcom/twitter/model/moments/maker/ar;",
            "Lcom/twitter/model/core/cj;",
            ">;",
            "Lcom/twitter/library/api/moments/maker/e",
            "<",
            "Lcom/twitter/library/api/moments/maker/h;",
            "Lcom/twitter/model/moments/maker/ar;",
            "Lcom/twitter/model/core/cj;",
            ">;",
            "Lcom/twitter/library/api/moments/maker/e",
            "<",
            "Lcom/twitter/library/api/moments/maker/t;",
            "Lcom/twitter/model/moments/maker/ar;",
            "Lcom/twitter/model/core/cj;",
            ">;",
            "Lcom/twitter/library/api/upload/s;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/twitter/library/api/moments/maker/o;->a:Lcom/twitter/library/api/moments/maker/e;

    .line 56
    iput-object p2, p0, Lcom/twitter/library/api/moments/maker/o;->b:Lcom/twitter/library/api/moments/maker/e;

    .line 57
    iput-object p3, p0, Lcom/twitter/library/api/moments/maker/o;->c:Lcom/twitter/library/api/moments/maker/e;

    .line 58
    iput-object p4, p0, Lcom/twitter/library/api/moments/maker/o;->d:Lcom/twitter/library/api/moments/maker/e;

    .line 59
    iput-object p5, p0, Lcom/twitter/library/api/moments/maker/o;->e:Lcom/twitter/library/api/upload/s;

    .line 60
    return-void
.end method

.method static synthetic a(Lcom/twitter/library/api/moments/maker/o;)Lcom/twitter/library/api/moments/maker/e;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/twitter/library/api/moments/maker/o;->d:Lcom/twitter/library/api/moments/maker/e;

    return-object v0
.end method


# virtual methods
.method public a(JLcom/twitter/model/moments/maker/MomentEditOperation;)Lrx/w;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/twitter/model/moments/maker/MomentEditOperation;",
            ")",
            "Lrx/w",
            "<",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Lcom/twitter/model/moments/maker/ar;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/twitter/library/api/moments/maker/o;->b:Lcom/twitter/library/api/moments/maker/e;

    new-instance v1, Lcom/twitter/library/api/moments/maker/g;

    invoke-direct {v1, p1, p2, p3}, Lcom/twitter/library/api/moments/maker/g;-><init>(JLcom/twitter/model/moments/maker/MomentEditOperation;)V

    invoke-virtual {v0, v1}, Lcom/twitter/library/api/moments/maker/e;->a_(Ljava/lang/Object;)Lrx/o;

    move-result-object v0

    invoke-static {v0}, Ldcn;->a(Lrx/o;)Lrx/w;

    move-result-object v0

    return-object v0
.end method

.method public a(JLcom/twitter/model/moments/maker/al;)Lrx/w;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/twitter/model/moments/maker/al;",
            ")",
            "Lrx/w",
            "<",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Lcom/twitter/model/moments/maker/ar;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/twitter/library/api/moments/maker/o;->e:Lcom/twitter/library/api/upload/s;

    iget-object v1, p3, Lcom/twitter/model/moments/maker/al;->a:Landroid/net/Uri;

    sget-object v2, Lcom/twitter/media/model/MediaType;->b:Lcom/twitter/media/model/MediaType;

    sget-object v3, Lcom/twitter/library/api/upload/MediaUsage;->a:Lcom/twitter/library/api/upload/MediaUsage;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/library/api/upload/s;->b(Landroid/net/Uri;Lcom/twitter/media/model/MediaType;Lcom/twitter/library/api/upload/MediaUsage;)Lrx/w;

    move-result-object v0

    new-instance v1, Lcom/twitter/library/api/moments/maker/p;

    invoke-direct {v1, p0, p1, p2}, Lcom/twitter/library/api/moments/maker/p;-><init>(Lcom/twitter/library/api/moments/maker/o;J)V

    .line 88
    invoke-virtual {v0, v1}, Lrx/w;->a(Ldjj;)Lrx/w;

    move-result-object v0

    .line 86
    return-object v0
.end method

.method public a(JLjava/util/List;)Lrx/w;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/moments/maker/an;",
            ">;)",
            "Lrx/w",
            "<",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Lcom/twitter/model/moments/maker/ar;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/twitter/library/api/moments/maker/o;->a:Lcom/twitter/library/api/moments/maker/e;

    new-instance v1, Lcom/twitter/library/api/moments/maker/b;

    .line 66
    invoke-static {p3}, Lcom/twitter/util/collection/r;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, p1, p2, v2}, Lcom/twitter/library/api/moments/maker/b;-><init>(JLjava/util/List;)V

    .line 65
    invoke-virtual {v0, v1}, Lcom/twitter/library/api/moments/maker/e;->a_(Ljava/lang/Object;)Lrx/o;

    move-result-object v0

    invoke-static {v0}, Ldcn;->a(Lrx/o;)Lrx/w;

    move-result-object v0

    return-object v0
.end method

.method public b(JLjava/util/List;)Lrx/w;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/moments/maker/q;",
            ">;)",
            "Lrx/w",
            "<",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Lcom/twitter/model/moments/maker/ar;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/twitter/library/api/moments/maker/o;->c:Lcom/twitter/library/api/moments/maker/e;

    new-instance v1, Lcom/twitter/library/api/moments/maker/h;

    .line 73
    invoke-static {p3}, Lcom/twitter/util/collection/r;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, p1, p2, v2}, Lcom/twitter/library/api/moments/maker/h;-><init>(JLjava/util/List;)V

    .line 72
    invoke-virtual {v0, v1}, Lcom/twitter/library/api/moments/maker/e;->a_(Ljava/lang/Object;)Lrx/o;

    move-result-object v0

    invoke-static {v0}, Ldcn;->a(Lrx/o;)Lrx/w;

    move-result-object v0

    return-object v0
.end method
