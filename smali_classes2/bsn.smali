.class public abstract Lbsn;
.super Lbss;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbss",
        "<",
        "Lbso;",
        ">;"
    }
.end annotation


# instance fields
.field protected final a:J

.field private final b:I

.field private final c:I

.field private final h:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/client/Session;JILjava/lang/String;)V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lbss;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/client/Session;)V

    .line 38
    iput-wide p4, p0, Lbsn;->a:J

    .line 39
    iput p6, p0, Lbsn;->b:I

    .line 40
    iget v0, p0, Lbsn;->b:I

    invoke-static {v0}, Lcom/twitter/model/timeline/cq;->a(I)I

    move-result v0

    iput v0, p0, Lbsn;->c:I

    .line 41
    iput-object p7, p0, Lbsn;->h:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lbso;)V
    .locals 10

    .prologue
    .line 53
    invoke-virtual {p1}, Lcom/twitter/internal/network/HttpOperation;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_2

    .line 56
    iget-object v3, p2, Lcom/twitter/library/service/aa;->c:Landroid/os/Bundle;

    .line 57
    invoke-virtual {p3}, Lbso;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/ap;

    .line 58
    if-eqz v0, :cond_2

    .line 59
    iget-object v4, v0, Lcom/twitter/model/timeline/ap;->b:Ljava/util/List;

    .line 60
    invoke-virtual {p0}, Lbsn;->E()J

    move-result-wide v6

    .line 61
    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-lez v1, :cond_3

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 62
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/timeline/cd;

    iget-object v1, v1, Lcom/twitter/model/timeline/cd;->a:Lcom/twitter/model/core/cs;

    iget-wide v8, v1, Lcom/twitter/model/core/cs;->b:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 66
    :goto_0
    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-lez v1, :cond_4

    const/4 v1, 0x1

    .line 67
    :goto_1
    if-eqz v1, :cond_5

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    .line 69
    :goto_2
    invoke-virtual {p0}, Lbsn;->S()Lcom/twitter/library/provider/dm;

    move-result-object v4

    .line 70
    invoke-virtual {p0}, Lbsn;->T()Lcom/twitter/library/provider/b;

    move-result-object v5

    .line 72
    invoke-static {v0}, Lcom/twitter/library/provider/cm;->a(Lcom/twitter/model/timeline/ap;)Lcom/twitter/library/provider/cm;

    move-result-object v0

    iget-wide v6, p0, Lbsn;->a:J

    .line 73
    invoke-virtual {v0, v6, v7}, Lcom/twitter/library/provider/cm;->a(J)Lcom/twitter/library/provider/cm;

    move-result-object v0

    iget v6, p0, Lbsn;->b:I

    .line 74
    invoke-virtual {v0, v6}, Lcom/twitter/library/provider/cm;->a(I)Lcom/twitter/library/provider/cm;

    move-result-object v0

    iget-object v6, p0, Lbsn;->h:Ljava/lang/String;

    .line 75
    invoke-virtual {v0, v6}, Lcom/twitter/library/provider/cm;->a(Ljava/lang/String;)Lcom/twitter/library/provider/cm;

    move-result-object v0

    .line 76
    invoke-virtual {v0, v1}, Lcom/twitter/library/provider/cm;->a(Z)Lcom/twitter/library/provider/cm;

    move-result-object v1

    if-nez v2, :cond_6

    const/4 v0, 0x1

    .line 77
    :goto_3
    invoke-virtual {v1, v0}, Lcom/twitter/library/provider/cm;->c(Z)Lcom/twitter/library/provider/cm;

    move-result-object v0

    .line 78
    invoke-virtual {v0, v2}, Lcom/twitter/library/provider/cm;->b(Ljava/lang/String;)Lcom/twitter/library/provider/cm;

    move-result-object v0

    const/4 v1, 0x1

    .line 79
    invoke-virtual {v0, v1}, Lcom/twitter/library/provider/cm;->d(Z)Lcom/twitter/library/provider/cm;

    move-result-object v0

    .line 80
    invoke-virtual {v0, v5}, Lcom/twitter/library/provider/cm;->a(Lcom/twitter/library/provider/b;)Lcom/twitter/library/provider/cm;

    move-result-object v0

    .line 81
    invoke-virtual {p0}, Lbsn;->O()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/provider/cm;->e(Z)Lcom/twitter/library/provider/cm;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lcom/twitter/library/provider/cm;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/provider/ck;

    .line 71
    invoke-virtual {v4, v0}, Lcom/twitter/library/provider/dm;->a(Lcom/twitter/library/provider/ck;)I

    move-result v1

    .line 83
    invoke-virtual {p0, v1}, Lbsn;->d(I)Lbss;

    .line 85
    iget v0, p0, Lbsn;->c:I

    invoke-static {v0}, Lcom/twitter/model/core/br;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    iget-wide v6, p0, Lbsn;->a:J

    iget v0, p0, Lbsn;->c:I

    invoke-virtual {v4, v6, v7, v0}, Lcom/twitter/library/provider/dm;->e(JI)I

    move-result v2

    .line 89
    if-lez v2, :cond_0

    .line 90
    invoke-virtual {p0}, Lbsn;->N()Lcom/twitter/library/service/ab;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/ab;

    .line 91
    iget-object v4, p0, Lbsn;->p:Landroid/content/Context;

    invoke-static {v4}, Lcom/twitter/library/provider/ar;->a(Landroid/content/Context;)Lcom/twitter/library/provider/ar;

    move-result-object v4

    iget-wide v6, v0, Lcom/twitter/library/service/ab;->c:J

    const/4 v0, 0x1

    invoke-virtual {v4, v6, v7, v0, v5}, Lcom/twitter/library/provider/ar;->a(JILcom/twitter/library/provider/b;)I

    .line 94
    :cond_0
    invoke-virtual {p0, v2}, Lbsn;->e(I)Lbss;

    .line 96
    :cond_1
    invoke-virtual {v5}, Lcom/twitter/library/provider/b;->a()V

    .line 99
    const-string/jumbo v0, "scribe_item_count"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 102
    :cond_2
    return-void

    .line 64
    :cond_3
    const/4 v1, 0x0

    move-object v2, v1

    goto/16 :goto_0

    .line 66
    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 67
    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 76
    :cond_6
    const/4 v0, 0x0

    goto :goto_3
.end method

.method protected bridge synthetic a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/service/c;)V
    .locals 0

    .prologue
    .line 26
    check-cast p3, Lbso;

    invoke-virtual {p0, p1, p2, p3}, Lbsn;->a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lbso;)V

    return-void
.end method

.method protected e()Lbso;
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lbso;

    invoke-direct {v0}, Lbso;-><init>()V

    return-object v0
.end method

.method protected synthetic f()Lcom/twitter/library/service/c;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lbsn;->e()Lbso;

    move-result-object v0

    return-object v0
.end method
