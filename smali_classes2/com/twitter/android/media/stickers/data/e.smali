.class Lcom/twitter/android/media/stickers/data/e;
.super Lcom/twitter/library/service/z;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/library/client/bd;

.field final synthetic b:Lcom/twitter/android/media/stickers/data/a;


# direct methods
.method constructor <init>(Lcom/twitter/android/media/stickers/data/a;Lcom/twitter/library/client/bd;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/twitter/android/media/stickers/data/e;->b:Lcom/twitter/android/media/stickers/data/a;

    iput-object p2, p0, Lcom/twitter/android/media/stickers/data/e;->a:Lcom/twitter/library/client/bd;

    invoke-direct {p0}, Lcom/twitter/library/service/z;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/twitter/internal/android/service/AsyncOperation;)V
    .locals 0

    .prologue
    .line 183
    check-cast p1, Lcom/twitter/library/service/x;

    invoke-virtual {p0, p1}, Lcom/twitter/android/media/stickers/data/e;->a(Lcom/twitter/library/service/x;)V

    return-void
.end method

.method public a(Lcom/twitter/library/service/x;)V
    .locals 6

    .prologue
    .line 186
    check-cast p1, Lcom/twitter/android/media/stickers/data/i;

    invoke-virtual {p1}, Lcom/twitter/android/media/stickers/data/i;->g()Lcpj;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_0

    .line 188
    iget-object v1, p0, Lcom/twitter/android/media/stickers/data/e;->b:Lcom/twitter/android/media/stickers/data/a;

    invoke-static {v1}, Lcom/twitter/android/media/stickers/data/a;->i(Lcom/twitter/android/media/stickers/data/a;)Lcom/twitter/android/media/stickers/data/g;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/media/stickers/data/e;->b:Lcom/twitter/android/media/stickers/data/a;

    .line 189
    invoke-static {v2}, Lcom/twitter/android/media/stickers/data/a;->g(Lcom/twitter/android/media/stickers/data/a;)Landroid/content/SharedPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/media/stickers/data/e;->b:Lcom/twitter/android/media/stickers/data/a;

    invoke-static {v3}, Lcom/twitter/android/media/stickers/data/a;->h(Lcom/twitter/android/media/stickers/data/a;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/twitter/android/media/stickers/data/a;->a(Lcpj;Landroid/content/SharedPreferences;Ljava/lang/String;)Lcpj;

    move-result-object v2

    iget-object v2, v2, Lcpj;->b:Ljava/util/List;

    .line 188
    invoke-interface {v1, v2}, Lcom/twitter/android/media/stickers/data/g;->a(Ljava/util/List;)V

    .line 190
    new-instance v1, Lcom/twitter/android/media/stickers/data/j;

    iget-object v2, p0, Lcom/twitter/android/media/stickers/data/e;->b:Lcom/twitter/android/media/stickers/data/a;

    .line 191
    invoke-static {v2}, Lcom/twitter/android/media/stickers/data/a;->c(Lcom/twitter/android/media/stickers/data/a;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/media/stickers/data/e;->b:Lcom/twitter/android/media/stickers/data/a;

    invoke-static {v3}, Lcom/twitter/android/media/stickers/data/a;->d(Lcom/twitter/android/media/stickers/data/a;)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/twitter/library/provider/dm;->a(Landroid/content/Context;J)Lcom/twitter/library/provider/dm;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/twitter/android/media/stickers/data/j;-><init>(Lcom/twitter/library/provider/dm;Lcpj;)V

    .line 192
    iget-object v0, p0, Lcom/twitter/android/media/stickers/data/e;->a:Lcom/twitter/library/client/bd;

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/String;

    .line 194
    :cond_0
    return-void
.end method
