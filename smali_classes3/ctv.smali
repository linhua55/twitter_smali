.class public Lctv;
.super Lcts;
.source "Twttr"


# static fields
.field public static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lctu;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/lang/String;

.field public final f:Lctl;

.field public final g:Lctp;

.field public final h:Lctr;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 29
    const-string/jumbo v0, "Vertical"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "Carousel"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/twitter/util/collection/au;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lctv;->a:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lctw;)V
    .locals 4

    .prologue
    .line 48
    iget-object v0, p1, Lctw;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-wide v2, p1, Lctw;->b:J

    invoke-direct {p0, v0, v2, v3}, Lcts;-><init>(Ljava/lang/String;J)V

    .line 49
    iget-object v0, p1, Lctw;->c:Ljava/util/List;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lctv;->d:Ljava/util/List;

    .line 51
    iget-object v0, p1, Lctw;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lctv;->e:Ljava/lang/String;

    .line 52
    iget-object v0, p1, Lctw;->e:Lctl;

    iput-object v0, p0, Lctv;->f:Lctl;

    .line 53
    iget-object v0, p1, Lctw;->f:Lctp;

    iput-object v0, p0, Lctv;->g:Lctp;

    .line 54
    iget-object v0, p1, Lctw;->g:Lctr;

    iput-object v0, p0, Lctv;->h:Lctr;

    .line 55
    return-void
.end method


# virtual methods
.method public b(Lctj;)Lcom/twitter/model/timeline/ay;
    .locals 4

    .prologue
    .line 60
    const-string/jumbo v0, "Vertical"

    iget-object v1, p0, Lctv;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lctv;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/twitter/util/collection/r;->a(I)Lcom/twitter/util/collection/r;

    move-result-object v1

    .line 62
    iget-object v0, p0, Lctv;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lctu;

    .line 63
    invoke-virtual {v0, p1}, Lctu;->b(Lctj;)Lcom/twitter/model/timeline/ay;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    goto :goto_0

    .line 65
    :cond_0
    new-instance v0, Lcom/twitter/model/timeline/ct;

    invoke-direct {v0}, Lcom/twitter/model/timeline/ct;-><init>()V

    iget-object v2, p0, Lctv;->b:Ljava/lang/String;

    .line 66
    invoke-virtual {v0, v2}, Lcom/twitter/model/timeline/ct;->b(Ljava/lang/String;)Lcom/twitter/model/timeline/az;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/ct;

    iget-wide v2, p0, Lctv;->c:J

    .line 67
    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/timeline/ct;->a(J)Lcom/twitter/model/timeline/az;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/ct;

    iget-object v2, p0, Lctv;->f:Lctl;

    .line 68
    invoke-virtual {v0, v2}, Lcom/twitter/model/timeline/ct;->a(Lctl;)Lcom/twitter/model/timeline/ct;

    move-result-object v2

    .line 69
    invoke-virtual {v1}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v2, v0}, Lcom/twitter/model/timeline/ct;->a(Ljava/util/List;)Lcom/twitter/model/timeline/ct;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/twitter/model/timeline/ct;->r()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/ay;

    .line 75
    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
