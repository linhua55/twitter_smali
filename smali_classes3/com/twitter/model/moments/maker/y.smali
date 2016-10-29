.class public Lcom/twitter/model/moments/maker/y;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcom/twitter/model/moments/maker/y;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:J

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/moments/maker/w;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Lcom/twitter/model/moments/maker/ab;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twitter/model/moments/maker/ab;-><init>(Lcom/twitter/model/moments/maker/z;)V

    sput-object v0, Lcom/twitter/model/moments/maker/y;->a:Lcom/twitter/util/serialization/ah;

    return-void
.end method

.method constructor <init>(Lcom/twitter/model/moments/maker/aa;)V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iget-wide v0, p1, Lcom/twitter/model/moments/maker/aa;->a:J

    iput-wide v0, p0, Lcom/twitter/model/moments/maker/y;->b:J

    .line 39
    iget-object v0, p1, Lcom/twitter/model/moments/maker/aa;->b:Ljava/util/List;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/moments/maker/y;->c:Ljava/util/List;

    .line 40
    iget-object v0, p1, Lcom/twitter/model/moments/maker/aa;->c:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/twitter/model/moments/maker/y;->d:Ljava/lang/Integer;

    .line 41
    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/model/moments/maker/y;
    .locals 4

    .prologue
    .line 63
    iget-object v0, p0, Lcom/twitter/model/moments/maker/y;->d:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 66
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/twitter/model/moments/maker/aa;

    invoke-direct {v0}, Lcom/twitter/model/moments/maker/aa;-><init>()V

    iget-wide v2, p0, Lcom/twitter/model/moments/maker/y;->b:J

    .line 67
    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/moments/maker/aa;->a(J)Lcom/twitter/model/moments/maker/aa;

    move-result-object v0

    const/4 v1, 0x0

    .line 68
    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/maker/aa;->a(Ljava/lang/Integer;)Lcom/twitter/model/moments/maker/aa;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/moments/maker/y;->c:Ljava/util/List;

    iget-object v2, p0, Lcom/twitter/model/moments/maker/y;->d:Ljava/lang/Integer;

    .line 69
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/twitter/model/moments/maker/y;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/maker/aa;->a(Ljava/util/List;)Lcom/twitter/model/moments/maker/aa;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/twitter/model/moments/maker/aa;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/maker/y;

    move-object p0, v0

    .line 66
    goto :goto_0
.end method

.method public a(Ljava/lang/Integer;)Lcom/twitter/model/moments/maker/y;
    .locals 4

    .prologue
    .line 54
    new-instance v0, Lcom/twitter/model/moments/maker/aa;

    invoke-direct {v0}, Lcom/twitter/model/moments/maker/aa;-><init>()V

    iget-wide v2, p0, Lcom/twitter/model/moments/maker/y;->b:J

    .line 55
    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/moments/maker/aa;->a(J)Lcom/twitter/model/moments/maker/aa;

    move-result-object v0

    .line 56
    invoke-virtual {v0, p1}, Lcom/twitter/model/moments/maker/aa;->a(Ljava/lang/Integer;)Lcom/twitter/model/moments/maker/aa;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/moments/maker/y;->c:Ljava/util/List;

    .line 57
    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/maker/aa;->a(Ljava/util/List;)Lcom/twitter/model/moments/maker/aa;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/twitter/model/moments/maker/aa;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/maker/y;

    .line 54
    return-object v0
.end method

.method public a(Ljava/lang/Iterable;)Lcom/twitter/model/moments/maker/y;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/twitter/model/moments/maker/w;",
            ">;)",
            "Lcom/twitter/model/moments/maker/y;"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Lcom/twitter/model/moments/maker/aa;

    invoke-direct {v0}, Lcom/twitter/model/moments/maker/aa;-><init>()V

    iget-wide v2, p0, Lcom/twitter/model/moments/maker/y;->b:J

    .line 46
    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/moments/maker/aa;->a(J)Lcom/twitter/model/moments/maker/aa;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/moments/maker/y;->d:Ljava/lang/Integer;

    .line 47
    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/maker/aa;->a(Ljava/lang/Integer;)Lcom/twitter/model/moments/maker/aa;

    move-result-object v1

    .line 48
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v0

    iget-object v2, p0, Lcom/twitter/model/moments/maker/y;->c:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Iterable;)Lcom/twitter/util/collection/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Iterable;)Lcom/twitter/util/collection/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/twitter/model/moments/maker/aa;->a(Ljava/util/List;)Lcom/twitter/model/moments/maker/aa;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/twitter/model/moments/maker/aa;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/maker/y;

    .line 45
    return-object v0
.end method
