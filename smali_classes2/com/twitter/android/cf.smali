.class Lcom/twitter/android/cf;
.super Landroid/os/AsyncTask;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/twitter/model/core/TwitterUser;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/cc;

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

.field private final c:Landroid/content/Context;

.field private final d:J


# direct methods
.method constructor <init>(Lcom/twitter/android/cc;Ljava/util/List;Landroid/content/Context;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/content/Context;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 805
    iput-object p1, p0, Lcom/twitter/android/cf;->a:Lcom/twitter/android/cc;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 806
    iput-object p2, p0, Lcom/twitter/android/cf;->b:Ljava/util/List;

    .line 807
    iput-object p3, p0, Lcom/twitter/android/cf;->c:Landroid/content/Context;

    .line 808
    iput-wide p4, p0, Lcom/twitter/android/cf;->d:J

    .line 809
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 813
    iget-object v0, p0, Lcom/twitter/android/cf;->c:Landroid/content/Context;

    iget-wide v2, p0, Lcom/twitter/android/cf;->d:J

    invoke-static {v0, v2, v3}, Lcom/twitter/library/provider/dm;->a(Landroid/content/Context;J)Lcom/twitter/library/provider/dm;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/cf;->b:Ljava/util/List;

    .line 814
    invoke-static {v1}, Lcom/twitter/util/collection/CollectionUtils;->e(Ljava/util/Collection;)[J

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/provider/dm;->a([J)Ljava/util/List;

    move-result-object v0

    .line 813
    return-object v0
.end method

.method protected a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 819
    iget-object v0, p0, Lcom/twitter/android/cf;->a:Lcom/twitter/android/cc;

    invoke-static {v0}, Lcom/twitter/android/cc;->a(Lcom/twitter/android/cc;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 820
    if-eqz p1, :cond_0

    .line 821
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    .line 822
    iget-object v2, p0, Lcom/twitter/android/cf;->a:Lcom/twitter/android/cc;

    invoke-static {v2}, Lcom/twitter/android/cc;->a(Lcom/twitter/android/cc;)Ljava/util/Map;

    move-result-object v2

    iget-wide v4, v0, Lcom/twitter/model/core/TwitterUser;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 825
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/cf;->a:Lcom/twitter/android/cc;

    invoke-virtual {v0}, Lcom/twitter/android/cc;->c()V

    .line 826
    iget-object v0, p0, Lcom/twitter/android/cf;->a:Lcom/twitter/android/cc;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/twitter/android/cc;->a(Lcom/twitter/android/cc;Z)Z

    .line 827
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 800
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/twitter/android/cf;->a([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 800
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/twitter/android/cf;->a(Ljava/util/List;)V

    return-void
.end method
