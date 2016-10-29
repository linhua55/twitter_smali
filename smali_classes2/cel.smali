.class Lcel;
.super Lcom/twitter/internal/android/service/AsyncOperation;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/internal/android/service/AsyncOperation",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/twitter/library/provider/dm;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcpf;",
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
            "Lcpf;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 239
    const-string/jumbo v0, "write_stickers_to_db"

    invoke-direct {p0, v0}, Lcom/twitter/internal/android/service/AsyncOperation;-><init>(Ljava/lang/String;)V

    .line 240
    iput-object p1, p0, Lcel;->a:Lcom/twitter/library/provider/dm;

    .line 241
    iput-object p2, p0, Lcel;->b:Ljava/util/List;

    .line 242
    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/Boolean;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 247
    const-class v0, Lcpf;

    const-class v1, Lbhz;

    invoke-static {v0, v1}, Lcom/twitter/database/hydrator/d;->b(Ljava/lang/Class;Ljava/lang/Class;)Lcom/twitter/database/hydrator/a;

    move-result-object v3

    .line 248
    if-nez v3, :cond_0

    .line 249
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 264
    :goto_0
    return-object v0

    .line 252
    :cond_0
    iget-object v0, p0, Lcel;->a:Lcom/twitter/library/provider/dm;

    .line 253
    invoke-virtual {v0}, Lcom/twitter/library/provider/dm;->d()Lcom/twitter/database/schema/TwitterSchema;

    move-result-object v0

    const-class v1, Lbhy;

    invoke-interface {v0, v1}, Lcom/twitter/database/schema/TwitterSchema;->c(Ljava/lang/Class;)Lcom/twitter/database/model/r;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/database/model/r;->b()Lcom/twitter/database/model/k;

    move-result-object v4

    .line 254
    const/4 v0, 0x1

    .line 255
    iget-object v1, p0, Lcel;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcpf;

    .line 256
    iget-object v6, v4, Lcom/twitter/database/model/k;->d:Ljava/lang/Object;

    invoke-virtual {v3, v0, v6}, Lcom/twitter/database/hydrator/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbhz;

    .line 259
    invoke-interface {v0, v2}, Lbhz;->a(Z)Lbhz;

    .line 260
    invoke-virtual {v4}, Lcom/twitter/database/model/k;->c()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v0, v6, v8

    if-nez v0, :cond_2

    move v0, v2

    :goto_2
    move v1, v0

    .line 263
    goto :goto_1

    .line 264
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method protected b()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 230
    invoke-virtual {p0}, Lcel;->b()Ljava/lang/Boolean;

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
    .line 230
    invoke-virtual {p0}, Lcel;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
