.class public Lcoj;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcoj;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcoj;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lcoj;


# instance fields
.field public final d:Lcoa;

.field public final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    new-instance v0, Lcon;

    invoke-direct {v0, v1}, Lcon;-><init>(Lcok;)V

    sput-object v0, Lcoj;->a:Lcom/twitter/util/serialization/ah;

    .line 25
    new-instance v0, Lcom;

    invoke-direct {v0, v1}, Lcom;-><init>(Lcok;)V

    sput-object v0, Lcoj;->b:Lcom/twitter/util/serialization/ah;

    .line 27
    new-instance v0, Lcol;

    invoke-direct {v0}, Lcol;-><init>()V

    .line 28
    invoke-virtual {v0}, Lcol;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcoj;

    sput-object v0, Lcoj;->c:Lcoj;

    .line 27
    return-void
.end method

.method private constructor <init>(Lcol;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Lcol;->a(Lcol;)Lcoa;

    move-result-object v0

    iput-object v0, p0, Lcoj;->d:Lcoa;

    .line 37
    invoke-static {p1}, Lcol;->b(Lcol;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/au;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcoj;->e:Ljava/util/Set;

    .line 38
    return-void
.end method

.method synthetic constructor <init>(Lcol;Lcok;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcoj;-><init>(Lcol;)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcoj;->d:Lcoa;

    iget-wide v0, v0, Lcoa;->b:J

    return-wide v0
.end method

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
    .line 50
    iget-object v0, p0, Lcoj;->d:Lcoa;

    invoke-virtual {v0, p1}, Lcoa;->a(Ljava/lang/String;)Lcnv;

    move-result-object v0

    .line 51
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
    .line 56
    iget-object v0, p0, Lcoj;->d:Lcoa;

    invoke-virtual {v0, p1}, Lcoa;->a(Ljava/lang/String;)Lcnv;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcoj;->d:Lcoa;

    iget-object v0, v0, Lcoa;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcoj;
    .locals 2

    .prologue
    .line 72
    new-instance v0, Lcol;

    invoke-direct {v0}, Lcol;-><init>()V

    iget-object v1, p0, Lcoj;->d:Lcoa;

    .line 73
    invoke-virtual {v1}, Lcoa;->a()Lcoa;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcol;->a(Lcoa;)Lcol;

    move-result-object v0

    iget-object v1, p0, Lcoj;->e:Ljava/util/Set;

    .line 74
    invoke-virtual {v0, v1}, Lcol;->a(Ljava/util/Set;)Lcol;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcol;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcoj;

    .line 72
    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 5

    .prologue
    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    invoke-virtual {p0}, Lcoj;->b()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/r;->b(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 82
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcoj;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 89
    if-ne p0, p1, :cond_1

    .line 97
    :cond_0
    :goto_0
    return v0

    .line 92
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 93
    goto :goto_0

    .line 96
    :cond_3
    check-cast p1, Lcoj;

    .line 97
    iget-object v2, p0, Lcoj;->d:Lcoa;

    iget-object v3, p1, Lcoj;->d:Lcoa;

    invoke-virtual {v2, v3}, Lcoa;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcoj;->e:Ljava/util/Set;

    iget-object v3, p1, Lcoj;->e:Ljava/util/Set;

    .line 98
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
    .line 103
    iget-object v0, p0, Lcoj;->d:Lcoa;

    invoke-virtual {v0}, Lcoa;->hashCode()I

    move-result v0

    .line 104
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcoj;->e:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 105
    return v0
.end method
