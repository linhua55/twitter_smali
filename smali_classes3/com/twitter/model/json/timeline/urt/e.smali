.class public Lcom/twitter/model/json/timeline/urt/e;
.super Lctu;
.source "Twttr"


# instance fields
.field private final e:Lcth;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLcth;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 25
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lctu;-><init>(Ljava/lang/String;JLctp;Lctr;)V

    .line 26
    iput-object p4, p0, Lcom/twitter/model/json/timeline/urt/e;->e:Lcth;

    .line 27
    return-void
.end method

.method private a(Lctj;Lcud;)Lcom/twitter/model/timeline/cd;
    .locals 4

    .prologue
    .line 80
    new-instance v0, Lcom/twitter/model/timeline/cf;

    invoke-direct {v0}, Lcom/twitter/model/timeline/cf;-><init>()V

    iget-object v1, p2, Lcud;->b:Ljava/lang/String;

    .line 81
    invoke-virtual {p1, v1}, Lctj;->a(Ljava/lang/String;)Lcom/twitter/model/core/cs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/timeline/cf;->a(Lcom/twitter/model/core/cs;)Lcom/twitter/model/timeline/cf;

    move-result-object v0

    iget-wide v2, p0, Lcom/twitter/model/json/timeline/urt/e;->c:J

    .line 82
    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/timeline/cf;->a(J)Lcom/twitter/model/timeline/az;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/cf;

    iget-object v1, p0, Lcom/twitter/model/json/timeline/urt/e;->b:Ljava/lang/String;

    .line 83
    invoke-virtual {v0, v1}, Lcom/twitter/model/timeline/cf;->b(Ljava/lang/String;)Lcom/twitter/model/timeline/az;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/cf;

    .line 84
    invoke-virtual {v0}, Lcom/twitter/model/timeline/cf;->r()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/cd;

    .line 80
    return-object v0
.end method


# virtual methods
.method public a(Lctj;)Lcom/twitter/model/timeline/aw;
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 32
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v6

    .line 34
    iget-object v0, p0, Lcom/twitter/model/json/timeline/urt/e;->e:Lcth;

    iget-object v0, v0, Lcth;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    move v4, v3

    move v2, v5

    .line 35
    :goto_0
    if-ge v4, v7, :cond_1

    .line 36
    iget-object v0, p0, Lcom/twitter/model/json/timeline/urt/e;->e:Lcth;

    iget-object v0, v0, Lcth;->a:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lctg;

    .line 37
    instance-of v1, v0, Lcti;

    if-eqz v1, :cond_3

    .line 38
    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcti;

    .line 39
    iget-object v1, v0, Lcti;->a:Lcud;

    invoke-direct {p0, p1, v1}, Lcom/twitter/model/json/timeline/urt/e;->a(Lctj;Lcud;)Lcom/twitter/model/timeline/cd;

    move-result-object v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    invoke-virtual {v6, v1}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 43
    iget-object v1, v0, Lcti;->b:Lcom/twitter/model/timeline/dd;

    if-eqz v1, :cond_3

    .line 44
    new-instance v1, Lcom/twitter/model/timeline/dc;

    invoke-direct {v1}, Lcom/twitter/model/timeline/dc;-><init>()V

    iget-wide v8, p0, Lcom/twitter/model/json/timeline/urt/e;->c:J

    .line 45
    invoke-virtual {v1, v8, v9}, Lcom/twitter/model/timeline/dc;->a(J)Lcom/twitter/model/timeline/az;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/timeline/dc;

    iget-object v8, p0, Lcom/twitter/model/json/timeline/urt/e;->b:Ljava/lang/String;

    .line 46
    invoke-virtual {v1, v8}, Lcom/twitter/model/timeline/dc;->b(Ljava/lang/String;)Lcom/twitter/model/timeline/az;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/timeline/dc;

    iget-object v0, v0, Lcti;->b:Lcom/twitter/model/timeline/dd;

    .line 47
    invoke-virtual {v1, v0}, Lcom/twitter/model/timeline/dc;->a(Lcom/twitter/model/timeline/dd;)Lcom/twitter/model/timeline/dc;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/twitter/model/timeline/dc;->r()Ljava/lang/Object;

    move-result-object v0

    .line 44
    invoke-virtual {v6, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    move v0, v2

    .line 35
    :goto_1
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v2, v0

    goto :goto_0

    .line 53
    :cond_0
    if-nez v4, :cond_3

    if-ne v7, v5, :cond_3

    move v0, v3

    .line 54
    goto :goto_1

    .line 62
    :cond_1
    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/twitter/model/json/timeline/urt/e;->e:Lcth;

    iget-object v0, v0, Lcth;->b:Lcom/twitter/model/timeline/dd;

    if-eqz v0, :cond_2

    .line 63
    new-instance v0, Lcom/twitter/model/timeline/dc;

    invoke-direct {v0}, Lcom/twitter/model/timeline/dc;-><init>()V

    iget-wide v2, p0, Lcom/twitter/model/json/timeline/urt/e;->c:J

    .line 64
    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/timeline/dc;->a(J)Lcom/twitter/model/timeline/az;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/dc;

    iget-object v1, p0, Lcom/twitter/model/json/timeline/urt/e;->b:Ljava/lang/String;

    .line 65
    invoke-virtual {v0, v1}, Lcom/twitter/model/timeline/dc;->b(Ljava/lang/String;)Lcom/twitter/model/timeline/az;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/dc;

    iget-object v1, p0, Lcom/twitter/model/json/timeline/urt/e;->e:Lcth;

    iget-object v1, v1, Lcth;->b:Lcom/twitter/model/timeline/dd;

    .line 66
    invoke-virtual {v0, v1}, Lcom/twitter/model/timeline/dc;->a(Lcom/twitter/model/timeline/dd;)Lcom/twitter/model/timeline/dc;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/twitter/model/timeline/dc;->r()Ljava/lang/Object;

    move-result-object v0

    .line 63
    invoke-virtual {v6, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 70
    :cond_2
    new-instance v1, Lcom/twitter/model/timeline/ax;

    invoke-direct {v1}, Lcom/twitter/model/timeline/ax;-><init>()V

    .line 71
    invoke-virtual {v6}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/twitter/model/timeline/ax;->a(Ljava/util/List;)Lcom/twitter/model/timeline/ax;

    move-result-object v0

    iget-wide v2, p0, Lcom/twitter/model/json/timeline/urt/e;->c:J

    .line 72
    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/timeline/ax;->a(J)Lcom/twitter/model/timeline/az;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/ax;

    iget-object v1, p0, Lcom/twitter/model/json/timeline/urt/e;->b:Ljava/lang/String;

    .line 73
    invoke-virtual {v0, v1}, Lcom/twitter/model/timeline/ax;->b(Ljava/lang/String;)Lcom/twitter/model/timeline/az;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/ax;

    .line 74
    invoke-virtual {v0}, Lcom/twitter/model/timeline/ax;->r()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/aw;

    .line 70
    return-object v0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public synthetic b(Lctj;)Lcom/twitter/model/timeline/ay;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/twitter/model/json/timeline/urt/e;->a(Lctj;)Lcom/twitter/model/timeline/aw;

    move-result-object v0

    return-object v0
.end method
