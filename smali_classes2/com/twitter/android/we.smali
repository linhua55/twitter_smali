.class Lcom/twitter/android/we;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldjf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldjf",
        "<",
        "Lcom/twitter/util/collection/ab",
        "<",
        "Lcom/twitter/model/core/TwitterUser;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/library/media/widget/UserImageView;

.field final synthetic b:Lcom/twitter/android/wc;


# direct methods
.method constructor <init>(Lcom/twitter/android/wc;Lcom/twitter/library/media/widget/UserImageView;)V
    .locals 0

    .prologue
    .line 379
    iput-object p1, p0, Lcom/twitter/android/we;->b:Lcom/twitter/android/wc;

    iput-object p2, p0, Lcom/twitter/android/we;->a:Lcom/twitter/library/media/widget/UserImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/util/collection/ab;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 382
    invoke-virtual {p1}, Lcom/twitter/util/collection/ab;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    invoke-virtual {p1}, Lcom/twitter/util/collection/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    .line 384
    iget-object v1, v0, Lcom/twitter/model/core/TwitterUser;->e:Ljava/lang/String;

    .line 385
    iget-object v2, p0, Lcom/twitter/android/we;->b:Lcom/twitter/android/wc;

    invoke-static {v2}, Lcom/twitter/android/wc;->a(Lcom/twitter/android/wc;)Lcom/twitter/android/wg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/android/wg;->b()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v0}, Lcom/twitter/model/core/TwitterUser;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    iget-object v0, p0, Lcom/twitter/android/we;->a:Lcom/twitter/library/media/widget/UserImageView;

    invoke-virtual {v0, v1}, Lcom/twitter/library/media/widget/UserImageView;->a(Ljava/lang/String;)Z

    .line 388
    :cond_0
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 379
    check-cast p1, Lcom/twitter/util/collection/ab;

    invoke-virtual {p0, p1}, Lcom/twitter/android/we;->a(Lcom/twitter/util/collection/ab;)V

    return-void
.end method
