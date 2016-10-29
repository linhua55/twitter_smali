.class public Lcom/twitter/model/dms/bo;
.super Lcom/twitter/model/dms/l;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/dms/l",
        "<",
        "Lcom/twitter/model/dms/bu;",
        ">;"
    }
.end annotation


# static fields
.field public static final h:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcom/twitter/model/dms/bo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/twitter/model/dms/bt;

    invoke-direct {v0}, Lcom/twitter/model/dms/bt;-><init>()V

    sput-object v0, Lcom/twitter/model/dms/bo;->h:Lcom/twitter/util/serialization/ah;

    return-void
.end method

.method protected constructor <init>(Lcom/twitter/model/dms/bq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/dms/bq",
            "<+",
            "Lcom/twitter/model/dms/bo;",
            "+",
            "Lcom/twitter/model/dms/bq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/twitter/model/dms/l;-><init>(Lcom/twitter/model/dms/m;)V

    .line 34
    iget v0, p1, Lcom/twitter/model/dms/bq;->f:I

    iput v0, p0, Lcom/twitter/model/dms/bo;->i:I

    .line 35
    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/twitter/model/dms/bo;->a(I)Z

    move-result v0

    return v0
.end method

.method public B()Lcom/twitter/model/dms/bo;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 69
    invoke-virtual {p0}, Lcom/twitter/model/dms/bo;->p()Lcom/twitter/model/dms/i;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/twitter/model/dms/i;->i()Lcom/twitter/model/core/cx;

    move-result-object v0

    move-object v2, v0

    .line 71
    :goto_0
    if-nez v2, :cond_1

    .line 88
    :goto_1
    return-object p0

    :cond_0
    move-object v2, v3

    .line 70
    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/model/dms/bo;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 76
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    const-string/jumbo v1, " "

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 77
    iget-object v1, v2, Lcom/twitter/model/core/cx;->D:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    .line 79
    new-instance v5, Lcom/twitter/model/core/da;

    invoke-direct {v5, v2}, Lcom/twitter/model/core/da;-><init>(Lcom/twitter/model/core/cx;)V

    .line 80
    invoke-virtual {v5, v0}, Lcom/twitter/model/core/da;->a(I)Lcom/twitter/model/core/f;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/da;

    .line 81
    invoke-virtual {v0, v1}, Lcom/twitter/model/core/da;->b(I)Lcom/twitter/model/core/f;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/da;

    .line 82
    invoke-virtual {v0}, Lcom/twitter/model/core/da;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/cx;

    .line 84
    invoke-virtual {p0}, Lcom/twitter/model/dms/bo;->o()Lcom/twitter/model/core/bm;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/twitter/model/core/bo;

    .line 85
    invoke-virtual {p0}, Lcom/twitter/model/dms/bo;->o()Lcom/twitter/model/core/bm;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/twitter/model/core/bo;-><init>(Lcom/twitter/model/core/bm;)V

    .line 86
    :goto_2
    invoke-virtual {v1, v0}, Lcom/twitter/model/core/bo;->a(Lcom/twitter/model/core/cx;)Lcom/twitter/model/core/bo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/model/core/bo;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/bm;

    .line 88
    new-instance v5, Lcom/twitter/model/dms/bs;

    invoke-direct {v5, p0}, Lcom/twitter/model/dms/bs;-><init>(Lcom/twitter/model/dms/bo;)V

    new-instance v6, Lcom/twitter/model/dms/bv;

    .line 89
    invoke-virtual {p0}, Lcom/twitter/model/dms/bo;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/dms/bu;

    invoke-direct {v6, v1}, Lcom/twitter/model/dms/bv;-><init>(Lcom/twitter/model/dms/bu;)V

    .line 90
    invoke-virtual {v6, v0}, Lcom/twitter/model/dms/bv;->a(Lcom/twitter/model/core/bm;)Lcom/twitter/model/dms/p;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/bv;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v2, Lcom/twitter/model/core/cx;->D:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Lcom/twitter/model/dms/bv;->b(Ljava/lang/String;)Lcom/twitter/model/dms/p;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/bv;

    .line 92
    invoke-virtual {v0, v3}, Lcom/twitter/model/dms/bv;->a(Lcom/twitter/model/dms/i;)Lcom/twitter/model/dms/p;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/bv;

    .line 93
    invoke-virtual {v0}, Lcom/twitter/model/dms/bv;->q()Ljava/lang/Object;

    move-result-object v0

    .line 89
    invoke-virtual {v5, v0}, Lcom/twitter/model/dms/bs;->a(Ljava/lang/Object;)Lcom/twitter/model/dms/d;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/bs;

    .line 94
    invoke-virtual {v0}, Lcom/twitter/model/dms/bs;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/bo;

    move-object p0, v0

    .line 88
    goto/16 :goto_1

    .line 85
    :cond_2
    new-instance v1, Lcom/twitter/model/core/bo;

    invoke-direct {v1}, Lcom/twitter/model/core/bo;-><init>()V

    goto :goto_2
.end method

.method public C()Lclw;
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/twitter/model/dms/bo;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/model/dms/bo;->p()Lcom/twitter/model/dms/i;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/ap;

    invoke-virtual {v0}, Lcom/twitter/model/dms/ap;->j()Lclw;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic a(ZZ)Lcom/twitter/model/dms/l;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/twitter/model/dms/bo;->b(ZZ)Lcom/twitter/model/dms/bo;

    move-result-object v0

    return-object v0
.end method

.method public a(Z)Z
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 99
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/twitter/model/dms/bo;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/twitter/model/dms/bo;->p()Lcom/twitter/model/dms/i;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/cf;

    iget-object v0, v0, Lcom/twitter/model/dms/cf;->e:Lcom/twitter/model/core/ay;

    iget-boolean v0, v0, Lcom/twitter/model/core/ay;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 99
    :goto_0
    return v0

    .line 100
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(ZZ)Lcom/twitter/model/dms/bo;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/twitter/model/dms/bo;->a(Z)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/twitter/model/dms/bo;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/model/dms/bo;->B()Lcom/twitter/model/dms/bo;

    move-result-object p0

    .line 64
    :cond_1
    return-object p0
.end method

.method public c()Lcom/twitter/util/serialization/ah;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcom/twitter/model/dms/bu;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    sget-object v0, Lcom/twitter/model/dms/bu;->i:Lcom/twitter/util/serialization/ah;

    return-object v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/twitter/model/dms/bo;->i:I

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method
