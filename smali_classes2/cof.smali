.class public Lcof;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcof;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcof;


# instance fields
.field public final c:Lcoa;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcno;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcnh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lcoi;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcoi;-><init>(Lcog;)V

    sput-object v0, Lcof;->a:Lcom/twitter/util/serialization/ah;

    .line 29
    new-instance v0, Lcoh;

    invoke-direct {v0}, Lcoh;-><init>()V

    .line 30
    invoke-virtual {v0}, Lcoh;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcof;

    sput-object v0, Lcof;->b:Lcof;

    .line 29
    return-void
.end method

.method private constructor <init>(Lcoh;)V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1}, Lcoh;->a(Lcoh;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcof;->d:Ljava/lang/String;

    .line 46
    invoke-static {p1}, Lcoh;->b(Lcoh;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/v;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcof;->e:Ljava/util/Map;

    .line 47
    invoke-static {p1}, Lcoh;->c(Lcoh;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/au;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcof;->f:Ljava/util/Set;

    .line 48
    invoke-static {p1}, Lcoh;->d(Lcoh;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/v;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcof;->g:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {p1}, Lcoh;->e(Lcoh;)Lcoc;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcof;->a(Ljava/util/Date;Lcoc;)Lcoc;

    move-result-object v0

    invoke-virtual {v0}, Lcoc;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcoa;

    iput-object v0, p0, Lcof;->c:Lcoa;

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Lcoh;Lcog;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcof;-><init>(Lcoh;)V

    return-void
.end method

.method private a(Ljava/util/Date;Lcoc;)Lcoc;
    .locals 10

    .prologue
    .line 101
    invoke-static {}, Lcom/twitter/config/b;->a()J

    move-result-wide v2

    .line 103
    invoke-static {}, Lcom/twitter/util/collection/v;->e()Lcom/twitter/util/collection/v;

    move-result-object v0

    iget-object v1, p2, Lcoc;->a:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/twitter/util/collection/v;->b(Ljava/util/Map;)Lcom/twitter/util/collection/v;

    move-result-object v4

    .line 104
    iget-object v0, p0, Lcof;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcno;

    .line 105
    iget-object v1, p2, Lcoc;->a:Ljava/util/Map;

    iget-object v6, v0, Lcno;->b:Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 106
    iget-object v1, v0, Lcno;->e:Ljava/util/Date;

    invoke-virtual {p1, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcno;->f:Ljava/util/Date;

    invoke-virtual {p1, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 107
    :goto_1
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcno;->b:Ljava/lang/String;

    invoke-static {v6, v7}, Lcuf;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 108
    if-eqz v1, :cond_3

    .line 109
    invoke-virtual {v0, v6}, Lcno;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 111
    :goto_2
    new-instance v6, Lcnv;

    iget-object v7, v0, Lcno;->b:Ljava/lang/String;

    invoke-direct {v6, v7, v1}, Lcnv;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    const-string/jumbo v7, "unassigned"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 113
    new-instance v7, Lcnx;

    iget-object v8, v0, Lcno;->b:Ljava/lang/String;

    iget v9, v0, Lcno;->c:I

    invoke-direct {v7, v8, v9, v1}, Lcnx;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v7}, Lcnv;->a(Lcnx;)V

    .line 116
    :cond_1
    iget-object v0, v0, Lcno;->b:Ljava/lang/String;

    invoke-virtual {v4, v0, v6}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    goto :goto_0

    .line 106
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 109
    :cond_3
    const-string/jumbo v1, "unassigned"

    goto :goto_2

    .line 120
    :cond_4
    invoke-virtual {v4}, Lcom/twitter/util/collection/v;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p2, v0}, Lcoc;->a(Ljava/util/Map;)Lcoc;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcof;->c:Lcoa;

    invoke-virtual {v0, p1}, Lcoa;->a(Ljava/lang/String;)Lcnv;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcnv;->a()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Lcnv;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcof;->c:Lcoa;

    invoke-virtual {v0, p1}, Lcoa;->a(Ljava/lang/String;)Lcnv;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 75
    if-ne p0, p1, :cond_1

    .line 83
    :cond_0
    :goto_0
    return v0

    .line 78
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 79
    goto :goto_0

    .line 82
    :cond_3
    check-cast p1, Lcof;

    .line 83
    iget-object v2, p0, Lcof;->c:Lcoa;

    iget-object v3, p1, Lcof;->c:Lcoa;

    invoke-virtual {v2, v3}, Lcoa;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcof;->d:Ljava/lang/String;

    iget-object v3, p1, Lcof;->d:Ljava/lang/String;

    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcof;->e:Ljava/util/Map;

    iget-object v3, p1, Lcof;->e:Ljava/util/Map;

    .line 85
    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcof;->f:Ljava/util/Set;

    iget-object v3, p1, Lcof;->f:Ljava/util/Set;

    .line 86
    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcof;->c:Lcoa;

    invoke-virtual {v0}, Lcoa;->hashCode()I

    move-result v0

    .line 92
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcof;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 93
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcof;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 94
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcof;->f:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 95
    return v0
.end method
