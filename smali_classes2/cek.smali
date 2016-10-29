.class Lcek;
.super Lcom/twitter/internal/android/service/AsyncOperation;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/internal/android/service/AsyncOperation",
        "<",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcpf;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/twitter/library/provider/dm;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/twitter/library/provider/dm;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/library/provider/dm;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 186
    const-string/jumbo v0, "load_stickers"

    invoke-direct {p0, v0}, Lcom/twitter/internal/android/service/AsyncOperation;-><init>(Ljava/lang/String;)V

    .line 187
    iput-object p1, p0, Lcek;->a:Lcom/twitter/library/provider/dm;

    .line 188
    iput-object p2, p0, Lcek;->b:Ljava/util/List;

    .line 189
    return-void
.end method


# virtual methods
.method protected a()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcpf;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lcek;->a:Lcom/twitter/library/provider/dm;

    invoke-virtual {v0}, Lcom/twitter/library/provider/dm;->d()Lcom/twitter/database/schema/TwitterSchema;

    move-result-object v0

    const-class v1, Lbia;

    invoke-interface {v0, v1}, Lcom/twitter/database/schema/TwitterSchema;->a(Ljava/lang/Class;)Lcom/twitter/database/model/p;

    move-result-object v0

    .line 194
    invoke-interface {v0}, Lcom/twitter/database/model/p;->f()Lcom/twitter/database/model/q;

    move-result-object v0

    .line 195
    const-string/jumbo v1, "_id"

    iget-object v2, p0, Lcek;->b:Ljava/util/List;

    .line 196
    invoke-static {v1, v2}, Lbar;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    .line 195
    invoke-interface {v0, v1, v2}, Lcom/twitter/database/model/q;->a(Ljava/lang/String;[Ljava/lang/String;)Lcom/twitter/database/model/j;

    move-result-object v1

    .line 197
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v2

    .line 199
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Lcom/twitter/database/model/j;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    new-instance v3, Lcph;

    invoke-direct {v3}, Lcph;-><init>()V

    iget-object v0, v1, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v0, Lbib;

    .line 201
    invoke-interface {v0}, Lbib;->a()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcph;->c(J)Lcph;

    move-result-object v3

    iget-object v0, v1, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v0, Lbib;

    .line 202
    invoke-interface {v0}, Lbib;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcph;->a(Ljava/lang/String;)Lcph;

    move-result-object v3

    iget-object v0, v1, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v0, Lbib;

    .line 203
    invoke-interface {v0}, Lbib;->l()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcph;->f(J)Lcph;

    move-result-object v3

    iget-object v0, v1, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v0, Lbib;

    .line 204
    invoke-interface {v0}, Lbib;->m()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcph;->g(J)Lcph;

    move-result-object v3

    iget-object v0, v1, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v0, Lbib;

    .line 205
    invoke-interface {v0}, Lbib;->n()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcph;->h(J)Lcph;

    move-result-object v3

    iget-object v0, v1, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v0, Lbib;

    .line 206
    invoke-interface {v0}, Lbib;->g()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcph;->b(J)Lcph;

    move-result-object v3

    iget-object v0, v1, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v0, Lbib;

    .line 207
    invoke-interface {v0}, Lbib;->d()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcph;->a(J)Lcph;

    move-result-object v3

    iget-object v0, v1, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v0, Lbib;

    .line 208
    invoke-interface {v0}, Lbib;->e()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcph;->e(J)Lcph;

    move-result-object v3

    iget-object v0, v1, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v0, Lbib;

    .line 209
    invoke-interface {v0}, Lbib;->h()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcph;->d(J)Lcph;

    move-result-object v3

    iget-object v0, v1, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v0, Lbib;

    .line 210
    invoke-interface {v0}, Lbib;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcph;->c(Ljava/lang/String;)Lcph;

    move-result-object v3

    iget-object v0, v1, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v0, Lbib;

    .line 211
    invoke-interface {v0}, Lbib;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcph;->b(Ljava/lang/String;)Lcph;

    move-result-object v3

    iget-object v0, v1, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v0, Lbib;

    .line 212
    invoke-interface {v0}, Lbib;->p()Lcpu;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcph;->a(Lcpu;)Lcph;

    move-result-object v3

    iget-object v0, v1, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v0, Lbib;

    .line 213
    invoke-interface {v0}, Lbib;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcph;->d(Ljava/lang/String;)Lcph;

    move-result-object v3

    iget-object v0, v1, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v0, Lbib;

    .line 214
    invoke-interface {v0}, Lbib;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcph;->e(Ljava/lang/String;)Lcph;

    move-result-object v3

    iget-object v0, v1, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v0, Lbib;

    .line 215
    invoke-interface {v0}, Lbib;->o()Z

    move-result v0

    invoke-virtual {v3, v0}, Lcph;->a(Z)Lcph;

    move-result-object v0

    .line 216
    invoke-virtual {v0}, Lcph;->q()Ljava/lang/Object;

    move-result-object v0

    .line 200
    invoke-virtual {v2, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 219
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/twitter/database/model/j;->close()V

    throw v0

    :cond_0
    invoke-virtual {v1}, Lcom/twitter/database/model/j;->close()V

    .line 221
    invoke-virtual {v2}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method protected b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcpf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 177
    invoke-virtual {p0}, Lcek;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic d()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 177
    invoke-virtual {p0}, Lcek;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
