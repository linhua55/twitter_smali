.class Lcom/google/android/gms/ads/internal/formats/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/fj;


# instance fields
.field final synthetic a:Lcom/google/android/gms/ads/internal/formats/j;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/formats/j;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/formats/k;->a:Lcom/google/android/gms/ads/internal/formats/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/sz;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/sz;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/k;->a:Lcom/google/android/gms/ads/internal/formats/j;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/formats/j;->c(Lcom/google/android/gms/ads/internal/formats/j;)Lcom/google/android/gms/internal/sz;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/sz;->l()Lcom/google/android/gms/internal/ta;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/internal/formats/l;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/ads/internal/formats/l;-><init>(Lcom/google/android/gms/ads/internal/formats/k;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ta;->a(Lcom/google/android/gms/internal/tc;)V

    const-string/jumbo v0, "overlayHtml"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v0, "baseUrl"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/k;->a:Lcom/google/android/gms/ads/internal/formats/j;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/formats/j;->c(Lcom/google/android/gms/ads/internal/formats/j;)Lcom/google/android/gms/internal/sz;

    move-result-object v0

    const-string/jumbo v1, "text/html"

    const-string/jumbo v3, "UTF-8"

    invoke-interface {v0, v2, v1, v3}, Lcom/google/android/gms/internal/sz;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/k;->a:Lcom/google/android/gms/ads/internal/formats/j;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/formats/j;->c(Lcom/google/android/gms/ads/internal/formats/j;)Lcom/google/android/gms/internal/sz;

    move-result-object v0

    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "UTF-8"

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/sz;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
