.class public Lcom/twitter/model/av/q;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private a:Z

.field private final b:Lcom/twitter/util/collection/au;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/collection/au",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/twitter/util/collection/au;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/collection/au",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/twitter/util/collection/au;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/collection/au",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/twitter/util/collection/au;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/collection/au",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/twitter/util/collection/au;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/collection/au",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    invoke-static {}, Lcom/twitter/util/collection/au;->e()Lcom/twitter/util/collection/au;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/av/q;->b:Lcom/twitter/util/collection/au;

    .line 167
    invoke-static {}, Lcom/twitter/util/collection/au;->e()Lcom/twitter/util/collection/au;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/av/q;->c:Lcom/twitter/util/collection/au;

    .line 170
    invoke-static {}, Lcom/twitter/util/collection/au;->e()Lcom/twitter/util/collection/au;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/av/q;->d:Lcom/twitter/util/collection/au;

    .line 173
    invoke-static {}, Lcom/twitter/util/collection/au;->e()Lcom/twitter/util/collection/au;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/av/q;->e:Lcom/twitter/util/collection/au;

    .line 176
    invoke-static {}, Lcom/twitter/util/collection/au;->e()Lcom/twitter/util/collection/au;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/av/q;->f:Lcom/twitter/util/collection/au;

    .line 178
    return-void
.end method

.method public constructor <init>(Lcom/twitter/model/av/o;)V
    .locals 2

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    invoke-static {}, Lcom/twitter/util/collection/au;->e()Lcom/twitter/util/collection/au;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/av/q;->b:Lcom/twitter/util/collection/au;

    .line 167
    invoke-static {}, Lcom/twitter/util/collection/au;->e()Lcom/twitter/util/collection/au;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/av/q;->c:Lcom/twitter/util/collection/au;

    .line 170
    invoke-static {}, Lcom/twitter/util/collection/au;->e()Lcom/twitter/util/collection/au;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/av/q;->d:Lcom/twitter/util/collection/au;

    .line 173
    invoke-static {}, Lcom/twitter/util/collection/au;->e()Lcom/twitter/util/collection/au;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/av/q;->e:Lcom/twitter/util/collection/au;

    .line 176
    invoke-static {}, Lcom/twitter/util/collection/au;->e()Lcom/twitter/util/collection/au;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/av/q;->f:Lcom/twitter/util/collection/au;

    .line 181
    invoke-virtual {p1}, Lcom/twitter/model/av/o;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/model/av/q;->a:Z

    .line 182
    iget-object v0, p0, Lcom/twitter/model/av/q;->b:Lcom/twitter/util/collection/au;

    invoke-virtual {p1}, Lcom/twitter/model/av/o;->b()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/collection/au;->b(Ljava/lang/Iterable;)Lcom/twitter/util/collection/au;

    .line 183
    iget-object v0, p0, Lcom/twitter/model/av/q;->c:Lcom/twitter/util/collection/au;

    invoke-virtual {p1}, Lcom/twitter/model/av/o;->c()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/collection/au;->b(Ljava/lang/Iterable;)Lcom/twitter/util/collection/au;

    .line 184
    iget-object v0, p0, Lcom/twitter/model/av/q;->d:Lcom/twitter/util/collection/au;

    invoke-virtual {p1}, Lcom/twitter/model/av/o;->d()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/collection/au;->b(Ljava/lang/Iterable;)Lcom/twitter/util/collection/au;

    .line 185
    iget-object v0, p0, Lcom/twitter/model/av/q;->e:Lcom/twitter/util/collection/au;

    invoke-virtual {p1}, Lcom/twitter/model/av/o;->e()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/collection/au;->b(Ljava/lang/Iterable;)Lcom/twitter/util/collection/au;

    .line 186
    iget-object v0, p0, Lcom/twitter/model/av/q;->f:Lcom/twitter/util/collection/au;

    invoke-virtual {p1}, Lcom/twitter/model/av/o;->f()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/collection/au;->b(Ljava/lang/Iterable;)Lcom/twitter/util/collection/au;

    .line 187
    return-void
.end method

.method private static a(Lcom/twitter/util/collection/au;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/collection/au",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/twitter/util/collection/au;->i()Lcom/twitter/util/collection/au;

    .line 296
    invoke-virtual {p0, p1}, Lcom/twitter/util/collection/au;->b(Ljava/lang/Iterable;)Lcom/twitter/util/collection/au;

    .line 297
    return-void
.end method


# virtual methods
.method public a(Ljava/util/Collection;)Lcom/twitter/model/av/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/twitter/model/av/q;"
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lcom/twitter/model/av/q;->b:Lcom/twitter/util/collection/au;

    invoke-static {v0, p1}, Lcom/twitter/model/av/q;->a(Lcom/twitter/util/collection/au;Ljava/util/Collection;)V

    .line 208
    return-object p0
.end method

.method public a(Z)Lcom/twitter/model/av/q;
    .locals 0

    .prologue
    .line 191
    iput-boolean p1, p0, Lcom/twitter/model/av/q;->a:Z

    .line 192
    return-object p0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/twitter/model/av/q;->a:Z

    return v0
.end method

.method public b(Ljava/util/Collection;)Lcom/twitter/model/av/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/twitter/model/av/q;"
        }
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Lcom/twitter/model/av/q;->c:Lcom/twitter/util/collection/au;

    invoke-static {v0, p1}, Lcom/twitter/model/av/q;->a(Lcom/twitter/util/collection/au;Ljava/util/Collection;)V

    .line 228
    return-object p0
.end method

.method public b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lcom/twitter/model/av/q;->b:Lcom/twitter/util/collection/au;

    invoke-static {v0}, Lcom/twitter/util/collection/au;->a(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/twitter/model/av/o;
    .locals 8

    .prologue
    .line 284
    new-instance v0, Lcom/twitter/model/av/o;

    iget-boolean v1, p0, Lcom/twitter/model/av/q;->a:Z

    iget-object v2, p0, Lcom/twitter/model/av/q;->b:Lcom/twitter/util/collection/au;

    invoke-virtual {v2}, Lcom/twitter/util/collection/au;->q()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    iget-object v3, p0, Lcom/twitter/model/av/q;->c:Lcom/twitter/util/collection/au;

    .line 285
    invoke-virtual {v3}, Lcom/twitter/util/collection/au;->q()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    iget-object v4, p0, Lcom/twitter/model/av/q;->d:Lcom/twitter/util/collection/au;

    invoke-virtual {v4}, Lcom/twitter/util/collection/au;->q()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    iget-object v5, p0, Lcom/twitter/model/av/q;->e:Lcom/twitter/util/collection/au;

    .line 286
    invoke-virtual {v5}, Lcom/twitter/util/collection/au;->q()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    iget-object v6, p0, Lcom/twitter/model/av/q;->f:Lcom/twitter/util/collection/au;

    invoke-virtual {v6}, Lcom/twitter/util/collection/au;->q()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/twitter/model/av/o;-><init>(ZLjava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/twitter/model/av/p;)V

    .line 284
    return-object v0
.end method

.method public c(Ljava/util/Collection;)Lcom/twitter/model/av/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/twitter/model/av/q;"
        }
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Lcom/twitter/model/av/q;->d:Lcom/twitter/util/collection/au;

    invoke-static {v0, p1}, Lcom/twitter/model/av/q;->a(Lcom/twitter/util/collection/au;Ljava/util/Collection;)V

    .line 247
    return-object p0
.end method

.method public d(Ljava/util/Collection;)Lcom/twitter/model/av/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/twitter/model/av/q;"
        }
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lcom/twitter/model/av/q;->e:Lcom/twitter/util/collection/au;

    invoke-static {v0, p1}, Lcom/twitter/model/av/q;->a(Lcom/twitter/util/collection/au;Ljava/util/Collection;)V

    .line 267
    return-object p0
.end method

.method public e(Ljava/util/Collection;)Lcom/twitter/model/av/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/twitter/model/av/q;"
        }
    .end annotation

    .prologue
    .line 278
    iget-object v0, p0, Lcom/twitter/model/av/q;->f:Lcom/twitter/util/collection/au;

    invoke-static {v0, p1}, Lcom/twitter/model/av/q;->a(Lcom/twitter/util/collection/au;Ljava/util/Collection;)V

    .line 279
    return-object p0
.end method
