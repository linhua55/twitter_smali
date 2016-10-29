.class public Lcpy;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:J

.field public final b:J

.field public final c:I

.field public final d:Lcpk;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcqa;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Z

.field public final h:Ljava/lang/String;

.field public final i:Lcqb;


# direct methods
.method public constructor <init>(JJLjava/util/List;Ljava/lang/String;Lcpk;IZLjava/lang/String;Lcqb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List",
            "<",
            "Lcqa;",
            ">;",
            "Ljava/lang/String;",
            "Lcpk;",
            "IZ",
            "Ljava/lang/String;",
            "Lcqb;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-wide p1, p0, Lcpy;->a:J

    .line 48
    iput-wide p3, p0, Lcpy;->b:J

    .line 49
    iput-object p7, p0, Lcpy;->d:Lcpk;

    .line 50
    iput-object p6, p0, Lcpy;->e:Ljava/lang/String;

    .line 51
    iput-object p5, p0, Lcpy;->f:Ljava/util/List;

    .line 52
    iput p8, p0, Lcpy;->c:I

    .line 53
    iput-boolean p9, p0, Lcpy;->g:Z

    .line 54
    iput-object p10, p0, Lcpy;->h:Ljava/lang/String;

    .line 55
    iput-object p11, p0, Lcpy;->i:Lcqb;

    .line 56
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 14

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 60
    if-ne p0, p1, :cond_0

    move v0, v3

    .line 88
    :goto_0
    return v0

    .line 63
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    move v0, v4

    .line 64
    goto :goto_0

    .line 66
    :cond_2
    check-cast p1, Lcpy;

    .line 67
    iget-object v0, p0, Lcpy;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    .line 68
    iget-wide v0, p1, Lcpy;->a:J

    iget-wide v8, p0, Lcpy;->a:J

    cmp-long v0, v0, v8

    if-nez v0, :cond_3

    iget-object v0, p1, Lcpy;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v7, v0, :cond_4

    :cond_3
    move v0, v4

    .line 69
    goto :goto_0

    :cond_4
    move v6, v4

    .line 71
    :goto_1
    if-ge v6, v7, :cond_9

    .line 72
    iget-object v0, p1, Lcpy;->f:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcqa;

    .line 73
    iget-object v1, p0, Lcpy;->f:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcqa;

    .line 74
    invoke-virtual {v1}, Lcqa;->a()Lcpf;

    move-result-object v2

    iget-wide v8, v2, Lcpf;->h:J

    .line 75
    invoke-virtual {v0}, Lcqa;->a()Lcpf;

    move-result-object v2

    iget-wide v10, v2, Lcpf;->h:J

    cmp-long v2, v8, v10

    if-eqz v2, :cond_5

    move v0, v4

    .line 76
    goto :goto_0

    .line 78
    :cond_5
    iget-object v2, v1, Lcqa;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    .line 79
    iget-object v2, v0, Lcqa;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v8, v2, :cond_6

    move v0, v4

    .line 80
    goto :goto_0

    :cond_6
    move v5, v4

    .line 82
    :goto_2
    if-ge v5, v8, :cond_8

    .line 83
    iget-object v2, v1, Lcqa;->a:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcpf;

    iget-wide v10, v2, Lcpf;->h:J

    iget-object v2, v0, Lcqa;->a:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcpf;

    iget-wide v12, v2, Lcpf;->h:J

    cmp-long v2, v10, v12

    if-eqz v2, :cond_7

    move v0, v4

    .line 84
    goto :goto_0

    .line 82
    :cond_7
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_2

    .line 71
    :cond_8
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    :cond_9
    move v0, v3

    .line 88
    goto/16 :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 93
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcpy;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcpy;->f:Ljava/util/List;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
