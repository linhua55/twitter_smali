.class Lcom/twitter/android/media/stickers/data/c;
.super Lcom/twitter/library/service/z;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/library/client/bd;

.field final synthetic b:Lcom/twitter/android/media/stickers/data/a;


# direct methods
.method constructor <init>(Lcom/twitter/android/media/stickers/data/a;Lcom/twitter/library/client/bd;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/twitter/android/media/stickers/data/c;->b:Lcom/twitter/android/media/stickers/data/a;

    iput-object p2, p0, Lcom/twitter/android/media/stickers/data/c;->a:Lcom/twitter/library/client/bd;

    invoke-direct {p0}, Lcom/twitter/library/service/z;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/twitter/internal/android/service/AsyncOperation;)V
    .locals 0

    .prologue
    .line 141
    check-cast p1, Lcom/twitter/library/service/x;

    invoke-virtual {p0, p1}, Lcom/twitter/android/media/stickers/data/c;->a(Lcom/twitter/library/service/x;)V

    return-void
.end method

.method public a(Lcom/twitter/library/service/x;)V
    .locals 6

    .prologue
    .line 144
    check-cast p1, Lcom/twitter/android/media/stickers/data/h;

    .line 145
    invoke-virtual {p1}, Lcom/twitter/android/media/stickers/data/h;->g()Lcpj;

    move-result-object v0

    .line 146
    if-eqz v0, :cond_1

    .line 147
    new-instance v1, Lcom/twitter/android/media/stickers/data/j;

    iget-object v2, p0, Lcom/twitter/android/media/stickers/data/c;->b:Lcom/twitter/android/media/stickers/data/a;

    .line 149
    invoke-static {v2}, Lcom/twitter/android/media/stickers/data/a;->c(Lcom/twitter/android/media/stickers/data/a;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/media/stickers/data/c;->b:Lcom/twitter/android/media/stickers/data/a;

    invoke-static {v3}, Lcom/twitter/android/media/stickers/data/a;->d(Lcom/twitter/android/media/stickers/data/a;)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/twitter/library/provider/dm;->a(Landroid/content/Context;J)Lcom/twitter/library/provider/dm;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/twitter/android/media/stickers/data/j;-><init>(Lcom/twitter/library/provider/dm;Lcpj;)V

    .line 151
    new-instance v2, Lcom/twitter/android/media/stickers/data/d;

    invoke-direct {v2, p0}, Lcom/twitter/android/media/stickers/data/d;-><init>(Lcom/twitter/android/media/stickers/data/c;)V

    invoke-virtual {v1, v2}, Lcom/twitter/android/media/stickers/data/j;->a(Lcom/twitter/internal/android/service/c;)Lcom/twitter/internal/android/service/AsyncOperation;

    .line 160
    iget-object v2, p0, Lcom/twitter/android/media/stickers/data/c;->a:Lcom/twitter/library/client/bd;

    invoke-virtual {v2, v1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/String;

    .line 162
    iget-object v1, p0, Lcom/twitter/android/media/stickers/data/c;->b:Lcom/twitter/android/media/stickers/data/a;

    invoke-static {v1}, Lcom/twitter/android/media/stickers/data/a;->f(Lcom/twitter/android/media/stickers/data/a;)Lcom/twitter/android/media/stickers/data/StickerLruCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/media/stickers/data/StickerLruCache;->a()Ljava/util/Set;

    move-result-object v1

    .line 164
    invoke-static {v1}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    :goto_0
    iget-object v1, p0, Lcom/twitter/android/media/stickers/data/c;->b:Lcom/twitter/android/media/stickers/data/a;

    iget-object v2, p0, Lcom/twitter/android/media/stickers/data/c;->b:Lcom/twitter/android/media/stickers/data/a;

    invoke-static {v2}, Lcom/twitter/android/media/stickers/data/a;->g(Lcom/twitter/android/media/stickers/data/a;)Landroid/content/SharedPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/media/stickers/data/c;->b:Lcom/twitter/android/media/stickers/data/a;

    invoke-static {v3}, Lcom/twitter/android/media/stickers/data/a;->h(Lcom/twitter/android/media/stickers/data/a;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/twitter/android/media/stickers/data/a;->a(Lcpj;Landroid/content/SharedPreferences;Ljava/lang/String;)Lcpj;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/twitter/android/media/stickers/data/a;->b(Lcom/twitter/android/media/stickers/data/a;Ljava/lang/Object;)V

    .line 172
    :goto_1
    return-void

    .line 165
    :cond_0
    invoke-static {v0, v1}, Lcom/twitter/android/media/stickers/data/a;->a(Lcpj;Ljava/util/Set;)Lcpj;

    move-result-object v0

    goto :goto_0

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/media/stickers/data/c;->b:Lcom/twitter/android/media/stickers/data/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/twitter/android/media/stickers/data/a;->c(Lcom/twitter/android/media/stickers/data/a;Ljava/lang/Object;)V

    goto :goto_1
.end method
