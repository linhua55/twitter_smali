.class public Lcom/twitter/library/client/as;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/library/client/bd;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/client/ba;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/twitter/library/client/bf;

.field private final d:Lcom/twitter/library/client/av;

.field private e:Lcom/twitter/library/client/aw;


# direct methods
.method public constructor <init>(Lcom/twitter/library/client/bd;Lcom/twitter/app/common/util/s;)V
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/twitter/util/collection/MutableList;->a(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/client/as;->b:Ljava/util/List;

    .line 29
    new-instance v0, Lcom/twitter/library/client/at;

    invoke-direct {v0, p0}, Lcom/twitter/library/client/at;-><init>(Lcom/twitter/library/client/as;)V

    iput-object v0, p0, Lcom/twitter/library/client/as;->c:Lcom/twitter/library/client/bf;

    .line 65
    iput-object p1, p0, Lcom/twitter/library/client/as;->a:Lcom/twitter/library/client/bd;

    .line 66
    new-instance v0, Lcom/twitter/library/client/av;

    iget-object v1, p0, Lcom/twitter/library/client/as;->c:Lcom/twitter/library/client/bf;

    invoke-direct {v0, p2, v1}, Lcom/twitter/library/client/av;-><init>(Lcom/twitter/app/common/util/s;Lcom/twitter/library/client/bf;)V

    iput-object v0, p0, Lcom/twitter/library/client/as;->d:Lcom/twitter/library/client/av;

    .line 67
    return-void
.end method

.method public static a(Lcom/twitter/app/common/util/s;Lcom/twitter/library/client/bd;)Lcom/twitter/library/client/as;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/twitter/app/common/util/s;",
            ":",
            "Lcom/twitter/app/common/base/p;",
            ">(TT;",
            "Lcom/twitter/library/client/bd;",
            ")",
            "Lcom/twitter/library/client/as;"
        }
    .end annotation

    .prologue
    .line 53
    move-object v0, p0

    check-cast v0, Lcom/twitter/app/common/base/p;

    const-string/jumbo v1, "request_controller"

    .line 54
    invoke-interface {v0, v1}, Lcom/twitter/app/common/base/p;->a_(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/client/as;

    .line 55
    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0, p0}, Lcom/twitter/library/client/as;->a(Lcom/twitter/app/common/util/s;)V

    .line 59
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/twitter/library/client/as;

    invoke-direct {v0, p1, p0}, Lcom/twitter/library/client/as;-><init>(Lcom/twitter/library/client/bd;Lcom/twitter/app/common/util/s;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/twitter/library/client/as;)Lcom/twitter/library/client/aw;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/twitter/library/client/as;->e:Lcom/twitter/library/client/aw;

    return-object v0
.end method

.method static synthetic a(Lcom/twitter/library/client/as;Lcom/twitter/library/service/x;)Lcom/twitter/library/client/ba;
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/twitter/library/client/as;->a(Lcom/twitter/library/service/x;)Lcom/twitter/library/client/ba;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/twitter/library/service/x;)Lcom/twitter/library/client/ba;
    .locals 4

    .prologue
    .line 137
    iget-object v2, p0, Lcom/twitter/library/client/as;->b:Ljava/util/List;

    .line 138
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 139
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 140
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/client/ba;

    .line 141
    iget-object v0, v0, Lcom/twitter/library/client/ba;->e:Lcom/twitter/library/service/x;

    if-ne v0, p1, :cond_0

    .line 142
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/client/ba;

    .line 145
    :goto_1
    return-object v0

    .line 139
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 145
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/twitter/app/common/util/s;)V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/twitter/library/client/as;->d:Lcom/twitter/library/client/av;

    iget-object v1, p0, Lcom/twitter/library/client/as;->c:Lcom/twitter/library/client/bf;

    invoke-virtual {v0, p1, v1}, Lcom/twitter/library/client/av;->a(Lcom/twitter/app/common/util/s;Lcom/twitter/library/client/bf;)V

    .line 115
    return-void
.end method

.method public a(Lcom/twitter/library/client/aw;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/twitter/library/client/as;->e:Lcom/twitter/library/client/aw;

    .line 71
    return-void
.end method

.method public a(J)Z
    .locals 5

    .prologue
    .line 83
    iget-object v0, p0, Lcom/twitter/library/client/as;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/client/ba;

    .line 84
    iget-wide v2, v0, Lcom/twitter/library/client/ba;->d:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    iget v0, v0, Lcom/twitter/library/client/ba;->c:I

    if-eqz v0, :cond_0

    .line 85
    const/4 v0, 0x1

    .line 88
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(JI)Z
    .locals 5

    .prologue
    .line 74
    iget-object v0, p0, Lcom/twitter/library/client/as;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/client/ba;

    .line 75
    iget-wide v2, v0, Lcom/twitter/library/client/ba;->d:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    iget v0, v0, Lcom/twitter/library/client/ba;->c:I

    if-ne v0, p3, :cond_0

    .line 76
    const/4 v0, 0x1

    .line 79
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(JLcom/twitter/library/service/x;II)Z
    .locals 9

    .prologue
    .line 102
    iget-object v0, p0, Lcom/twitter/library/client/as;->a:Lcom/twitter/library/client/bd;

    iget-object v1, p0, Lcom/twitter/library/client/as;->d:Lcom/twitter/library/client/av;

    invoke-virtual {v0, p3, p4, v1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;ILcom/twitter/library/client/bf;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/twitter/library/client/as;->b:Ljava/util/List;

    new-instance v1, Lcom/twitter/library/client/ba;

    iget-object v2, p3, Lcom/twitter/library/service/x;->d:Ljava/lang/String;

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-wide v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/twitter/library/client/ba;-><init>(Ljava/lang/String;Lcom/twitter/library/service/x;IIJ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    const/4 v0, 0x1

    .line 106
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(J)Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/twitter/library/client/ba;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/twitter/library/client/as;->b:Ljava/util/List;

    new-instance v1, Lcom/twitter/library/client/au;

    invoke-direct {v1, p0, p1, p2}, Lcom/twitter/library/client/au;-><init>(Lcom/twitter/library/client/as;J)V

    invoke-static {v0, v1}, Lczz;->a(Ljava/lang/Iterable;Ldau;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public c(J)V
    .locals 7

    .prologue
    .line 120
    invoke-static {}, Lcom/twitter/util/collection/MutableList;->a()Ljava/util/List;

    move-result-object v1

    .line 121
    iget-object v0, p0, Lcom/twitter/library/client/as;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/client/ba;

    .line 122
    iget-wide v4, v0, Lcom/twitter/library/client/ba;->d:J

    cmp-long v3, v4, p1

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/twitter/library/client/as;->a:Lcom/twitter/library/client/bd;

    iget-object v4, v0, Lcom/twitter/library/client/ba;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/twitter/library/client/bd;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 123
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 126
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/client/ba;

    .line 127
    iget-object v2, p0, Lcom/twitter/library/client/as;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 129
    iget-object v2, v0, Lcom/twitter/library/client/ba;->e:Lcom/twitter/library/service/x;

    invoke-virtual {v2}, Lcom/twitter/library/service/x;->isDone()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/twitter/library/client/as;->e:Lcom/twitter/library/client/aw;

    if-eqz v2, :cond_2

    .line 130
    iget-object v2, p0, Lcom/twitter/library/client/as;->e:Lcom/twitter/library/client/aw;

    invoke-interface {v2, v0}, Lcom/twitter/library/client/aw;->a(Lcom/twitter/library/client/ba;)V

    goto :goto_1

    .line 133
    :cond_3
    return-void
.end method
