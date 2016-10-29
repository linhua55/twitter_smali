.class public Lbsv;
.super Ljava/lang/Object;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/twitter/library/provider/dm;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {p1, p2, p3}, Lcom/twitter/library/provider/dm;->a(Landroid/content/Context;J)Lcom/twitter/library/provider/dm;

    move-result-object v0

    iput-object v0, p0, Lbsv;->a:Lcom/twitter/library/provider/dm;

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lbsv;->b:Landroid/content/Context;

    .line 31
    return-void
.end method


# virtual methods
.method public a(Lcte;Lctj;Lcub;)Lctf;
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 46
    iget-object v0, p1, Lcte;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/twitter/util/collection/r;->a(I)Lcom/twitter/util/collection/r;

    move-result-object v9

    .line 47
    iget-object v0, p1, Lcte;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcts;

    .line 48
    invoke-virtual {v0, p2}, Lcts;->b(Lctj;)Lcom/twitter/model/timeline/ay;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    goto :goto_0

    .line 51
    :cond_0
    new-instance v6, Lcom/twitter/library/provider/b;

    iget-object v0, p0, Lbsv;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/twitter/library/provider/b;-><init>(Landroid/content/ContentResolver;)V

    .line 52
    iget-object v5, p3, Lcub;->d:Ljava/lang/String;

    .line 54
    iget-boolean v0, p3, Lcub;->f:Z

    if-eqz v0, :cond_4

    .line 55
    iget-object v1, p0, Lbsv;->a:Lcom/twitter/library/provider/dm;

    iget-wide v2, p3, Lcub;->b:J

    iget v4, p3, Lcub;->c:I

    .line 56
    invoke-virtual/range {v1 .. v6}, Lcom/twitter/library/provider/dm;->a(JILjava/lang/String;Lcom/twitter/library/provider/b;)I

    move-result v0

    move v1, v0

    .line 59
    :goto_1
    iget-object v2, p0, Lbsv;->a:Lcom/twitter/library/provider/dm;

    .line 60
    invoke-virtual {v9}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/twitter/library/provider/cm;->a(Ljava/util/List;)Lcom/twitter/library/provider/cm;

    move-result-object v0

    iget-wide v10, p3, Lcub;->b:J

    .line 61
    invoke-virtual {v0, v10, v11}, Lcom/twitter/library/provider/cm;->a(J)Lcom/twitter/library/provider/cm;

    move-result-object v0

    iget v3, p3, Lcub;->c:I

    .line 62
    invoke-virtual {v0, v3}, Lcom/twitter/library/provider/cm;->a(I)Lcom/twitter/library/provider/cm;

    move-result-object v0

    .line 63
    invoke-virtual {v0, v5}, Lcom/twitter/library/provider/cm;->a(Ljava/lang/String;)Lcom/twitter/library/provider/cm;

    move-result-object v0

    iget v3, p3, Lcub;->e:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 64
    invoke-virtual {v9}, Lcom/twitter/util/collection/r;->h()Z

    move-result v3

    if-eqz v3, :cond_1

    move v7, v8

    :cond_1
    invoke-virtual {v0, v7}, Lcom/twitter/library/provider/cm;->a(Z)Lcom/twitter/library/provider/cm;

    move-result-object v0

    iget-boolean v3, p3, Lcub;->g:Z

    .line 65
    invoke-virtual {v0, v3}, Lcom/twitter/library/provider/cm;->c(Z)Lcom/twitter/library/provider/cm;

    move-result-object v0

    .line 66
    invoke-virtual {v0, v8}, Lcom/twitter/library/provider/cm;->d(Z)Lcom/twitter/library/provider/cm;

    move-result-object v0

    .line 67
    invoke-virtual {v0, v6}, Lcom/twitter/library/provider/cm;->a(Lcom/twitter/library/provider/b;)Lcom/twitter/library/provider/cm;

    move-result-object v0

    iget-boolean v3, p3, Lcub;->h:Z

    .line 68
    invoke-virtual {v0, v3}, Lcom/twitter/library/provider/cm;->e(Z)Lcom/twitter/library/provider/cm;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lcom/twitter/library/provider/cm;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/provider/ck;

    .line 59
    invoke-virtual {v2, v0}, Lcom/twitter/library/provider/dm;->a(Lcom/twitter/library/provider/ck;)I

    move-result v0

    .line 70
    if-gtz v1, :cond_2

    if-lez v0, :cond_3

    .line 71
    :cond_2
    invoke-virtual {v6}, Lcom/twitter/library/provider/b;->a()V

    .line 73
    :cond_3
    new-instance v2, Lctf;

    invoke-direct {v2, v0, v1}, Lctf;-><init>(II)V

    return-object v2

    :cond_4
    move v1, v7

    goto :goto_1
.end method
