.class public Lcom/twitter/library/api/moments/maker/m;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/library/api/moments/maker/o;

.field private final b:Lcet;

.field private final c:Lcom/twitter/library/api/moments/maker/i;

.field private final d:Lcup;


# direct methods
.method public constructor <init>(Lcom/twitter/library/api/moments/maker/o;Lcet;Lcom/twitter/library/api/moments/maker/i;Lcup;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p4, p0, Lcom/twitter/library/api/moments/maker/m;->d:Lcup;

    .line 44
    iput-object p1, p0, Lcom/twitter/library/api/moments/maker/m;->a:Lcom/twitter/library/api/moments/maker/o;

    .line 45
    iput-object p2, p0, Lcom/twitter/library/api/moments/maker/m;->b:Lcet;

    .line 46
    iput-object p3, p0, Lcom/twitter/library/api/moments/maker/m;->c:Lcom/twitter/library/api/moments/maker/i;

    .line 47
    return-void
.end method


# virtual methods
.method public a(J)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-static {}, Lcom/twitter/util/h;->c()V

    .line 65
    iget-object v0, p0, Lcom/twitter/library/api/moments/maker/m;->c:Lcom/twitter/library/api/moments/maker/i;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/library/api/moments/maker/i;->a(J)Ljava/util/List;

    move-result-object v3

    .line 66
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 105
    :goto_0
    return v0

    .line 69
    :cond_0
    invoke-static {v3}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/maker/w;

    .line 72
    instance-of v1, v0, Lcom/twitter/model/moments/maker/an;

    if-eqz v1, :cond_1

    .line 73
    const-class v0, Lcom/twitter/model/moments/maker/an;

    .line 74
    invoke-static {v3, v0}, Lcom/twitter/util/collection/CollectionUtils;->a(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 75
    invoke-static {v1}, Lcom/twitter/util/collection/CollectionUtils;->c(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/maker/w;

    .line 76
    iget-object v4, p0, Lcom/twitter/library/api/moments/maker/m;->a:Lcom/twitter/library/api/moments/maker/o;

    invoke-virtual {v4, p1, p2, v1}, Lcom/twitter/library/api/moments/maker/o;->a(JLjava/util/List;)Lrx/w;

    move-result-object v1

    .line 94
    :goto_1
    iget-object v4, p0, Lcom/twitter/library/api/moments/maker/m;->c:Lcom/twitter/library/api/moments/maker/i;

    .line 95
    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, p1, p2, v0}, Lcom/twitter/library/api/moments/maker/i;->a(JLjava/lang/Integer;)V

    .line 96
    invoke-virtual {v1}, Lrx/w;->c()Ldlt;

    move-result-object v0

    invoke-virtual {v0}, Ldlt;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/util/collection/ab;

    .line 97
    invoke-virtual {v0}, Lcom/twitter/util/collection/ab;->c()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 98
    invoke-virtual {v0}, Lcom/twitter/util/collection/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/maker/ar;

    .line 99
    iget-object v1, p0, Lcom/twitter/library/api/moments/maker/m;->b:Lcet;

    iget-object v0, v0, Lcom/twitter/model/moments/maker/ar;->a:Lcqq;

    invoke-virtual {v1, v0}, Lcet;->a(Lcqq;)V

    .line 100
    iget-object v0, p0, Lcom/twitter/library/api/moments/maker/m;->c:Lcom/twitter/library/api/moments/maker/i;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/library/api/moments/maker/i;->b(J)V

    .line 101
    iget-object v0, p0, Lcom/twitter/library/api/moments/maker/m;->d:Lcup;

    invoke-virtual {v0, p1, p2}, Lcup;->a(J)V

    .line 102
    const/4 v0, 0x1

    goto :goto_0

    .line 77
    :cond_1
    instance-of v1, v0, Lcom/twitter/model/moments/maker/q;

    if-eqz v1, :cond_2

    .line 78
    const-class v0, Lcom/twitter/model/moments/maker/q;

    .line 79
    invoke-static {v3, v0}, Lcom/twitter/util/collection/CollectionUtils;->a(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 80
    invoke-static {v1}, Lcom/twitter/util/collection/CollectionUtils;->c(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/maker/w;

    .line 81
    iget-object v4, p0, Lcom/twitter/library/api/moments/maker/m;->a:Lcom/twitter/library/api/moments/maker/o;

    invoke-virtual {v4, p1, p2, v1}, Lcom/twitter/library/api/moments/maker/o;->b(JLjava/util/List;)Lrx/w;

    move-result-object v1

    goto :goto_1

    .line 82
    :cond_2
    instance-of v1, v0, Lcom/twitter/model/moments/maker/MomentEditOperation;

    if-eqz v1, :cond_3

    .line 83
    check-cast v0, Lcom/twitter/model/moments/maker/MomentEditOperation;

    .line 85
    iget-object v1, p0, Lcom/twitter/library/api/moments/maker/m;->a:Lcom/twitter/library/api/moments/maker/o;

    invoke-virtual {v1, p1, p2, v0}, Lcom/twitter/library/api/moments/maker/o;->a(JLcom/twitter/model/moments/maker/MomentEditOperation;)Lrx/w;

    move-result-object v1

    goto :goto_1

    .line 86
    :cond_3
    instance-of v1, v0, Lcom/twitter/model/moments/maker/al;

    if-eqz v1, :cond_4

    .line 87
    check-cast v0, Lcom/twitter/model/moments/maker/al;

    .line 89
    iget-object v1, p0, Lcom/twitter/library/api/moments/maker/m;->a:Lcom/twitter/library/api/moments/maker/o;

    invoke-virtual {v1, p1, p2, v0}, Lcom/twitter/library/api/moments/maker/o;->a(JLcom/twitter/model/moments/maker/al;)Lrx/w;

    move-result-object v1

    goto :goto_1

    .line 92
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Got unrecognized operation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 104
    :cond_5
    iget-object v0, p0, Lcom/twitter/library/api/moments/maker/m;->c:Lcom/twitter/library/api/moments/maker/i;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/twitter/library/api/moments/maker/i;->a(JLjava/lang/Integer;)V

    move v0, v2

    .line 105
    goto/16 :goto_0
.end method
