.class public Lcom/twitter/android/sk;
.super Lcom/twitter/android/id;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/android/id",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/scribe/ScribeItem;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/twitter/library/client/bd;

.field private final e:Landroid/content/Context;

.field private final f:I

.field private final g:Lcom/twitter/library/scribe/TwitterScribeAssociation;


# direct methods
.method public constructor <init>(Lcom/twitter/library/client/bk;Lcom/twitter/library/client/bd;Landroid/content/Context;ILcom/twitter/library/scribe/TwitterScribeAssociation;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/twitter/android/id;-><init>(Lcom/twitter/library/client/bk;)V

    .line 30
    invoke-static {}, Lcom/twitter/util/collection/MutableSet;->a()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/sk;->b:Ljava/util/Set;

    .line 32
    invoke-static {}, Lcom/twitter/util/collection/MutableList;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/sk;->c:Ljava/util/List;

    .line 46
    iput-object p2, p0, Lcom/twitter/android/sk;->d:Lcom/twitter/library/client/bd;

    .line 47
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/sk;->e:Landroid/content/Context;

    .line 48
    iput p4, p0, Lcom/twitter/android/sk;->f:I

    .line 49
    invoke-static {p5}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;)Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/sk;->g:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 50
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 7

    .prologue
    .line 62
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/sk;->a:Lcom/twitter/library/client/bk;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/library/client/bk;->b(J)Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/twitter/android/sk;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/twitter/android/sk;->d:Lcom/twitter/library/client/bd;

    new-instance v2, Lbse;

    iget-object v3, p0, Lcom/twitter/android/sk;->e:Landroid/content/Context;

    iget-object v4, p0, Lcom/twitter/android/sk;->b:Ljava/util/Set;

    .line 68
    invoke-static {v4}, Lcom/twitter/util/collection/au;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    iget v5, p0, Lcom/twitter/android/sk;->f:I

    invoke-direct {v2, v3, v0, v4, v5}, Lbse;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/util/Collection;I)V

    .line 67
    invoke-virtual {v1, v2}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/twitter/android/sk;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    goto :goto_0
.end method

.method public a(Lcom/twitter/android/timeline/bp;I)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-virtual {p1}, Lcom/twitter/android/timeline/bp;->c()Lcom/twitter/android/timeline/bj;

    move-result-object v0

    iget-boolean v0, v0, Lcom/twitter/android/timeline/bj;->p:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/twitter/android/timeline/bp;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/sk;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p1, Lcom/twitter/android/timeline/bp;->o:Lcom/twitter/model/timeline/al;

    .line 87
    new-instance v2, Lcom/twitter/library/scribe/TwitterScribeItem;

    invoke-direct {v2}, Lcom/twitter/library/scribe/TwitterScribeItem;-><init>()V

    .line 88
    iput-object v0, v2, Lcom/twitter/library/scribe/TwitterScribeItem;->as:Lcom/twitter/model/timeline/al;

    .line 89
    iput p2, v2, Lcom/twitter/library/scribe/TwitterScribeItem;->g:I

    .line 90
    iget-object v3, p0, Lcom/twitter/android/sk;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v3, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v4, p0, Lcom/twitter/android/sk;->a:Lcom/twitter/library/client/bk;

    .line 92
    invoke-virtual {v4}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v4

    invoke-virtual {v4}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/twitter/android/sk;->g:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 93
    invoke-virtual {v6}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/twitter/android/sk;->g:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-virtual {v6}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->b()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/twitter/model/timeline/al;->e:Ljava/lang/String;

    :goto_0
    aput-object v0, v4, v5

    const/4 v0, 0x3

    aput-object v1, v4, v0

    const/4 v0, 0x4

    const-string/jumbo v1, "impression"

    aput-object v1, v4, v0

    invoke-virtual {v3, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 95
    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/sk;->g:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 96
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeAssociation;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 97
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 99
    :cond_0
    return-void

    :cond_1
    move-object v0, v1

    .line 93
    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 28
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/twitter/android/sk;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/twitter/android/id;->a(Ljava/lang/Object;)Z

    move-result v0

    .line 55
    if-eqz v0, :cond_0

    .line 56
    iget-object v1, p0, Lcom/twitter/android/sk;->b:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_0
    return v0
.end method

.method public b(J)V
    .locals 5

    .prologue
    .line 75
    iget-object v0, p0, Lcom/twitter/android/sk;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v0, p1, p2}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twitter/android/sk;->g:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 77
    invoke-virtual {v3}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/twitter/android/sk;->g:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-virtual {v3}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "stream"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "results"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/sk;->c:Ljava/util/List;

    .line 78
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/util/List;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 76
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 79
    iget-object v0, p0, Lcom/twitter/android/sk;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 81
    :cond_0
    return-void
.end method
