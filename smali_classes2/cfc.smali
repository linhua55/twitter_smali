.class Lcfc;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldjj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldjj",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/List",
        "<",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcfb;


# direct methods
.method constructor <init>(Lcfb;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcfc;->a:Lcfb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 201
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcfc;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 204
    .line 205
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Integer;

    .line 206
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    .line 204
    invoke-static {v0, v1}, Lcom/twitter/util/collection/r;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 207
    new-instance v1, Lcom/twitter/database/model/i;

    invoke-direct {v1}, Lcom/twitter/database/model/i;-><init>()V

    new-array v2, v3, [Ljava/lang/String;

    const-string/jumbo v3, "section_group_id"

    .line 209
    invoke-static {v3, p1}, Lbar;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const-string/jumbo v3, "section_group_type"

    .line 210
    invoke-static {v3, v0}, Lbar;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    .line 208
    invoke-static {v2}, Lbar;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/database/model/i;->a(Ljava/lang/String;)Lcom/twitter/database/model/i;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Lcom/twitter/database/model/i;->a()Lcom/twitter/database/model/g;

    move-result-object v0

    .line 212
    iget-object v1, p0, Lcfc;->a:Lcfb;

    .line 213
    invoke-static {v1}, Lcfb;->a(Lcfb;)Lcom/twitter/database/model/q;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/twitter/database/model/q;->a(Lcom/twitter/database/model/g;)Lcom/twitter/database/model/j;

    move-result-object v1

    .line 215
    :try_start_0
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v2

    .line 216
    :goto_0
    invoke-virtual {v1}, Lcom/twitter/database/model/j;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, v1, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v0, Lbfx;

    invoke-interface {v0}, Lbfx;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 221
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/twitter/database/model/j;->close()V

    throw v0

    .line 219
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    invoke-virtual {v1}, Lcom/twitter/database/model/j;->close()V

    .line 219
    return-object v0
.end method
