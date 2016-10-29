.class Lcwi;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldje;


# instance fields
.field final synthetic a:Lrx/u;

.field final synthetic b:Lrx/ao;

.field final synthetic c:Lcwh;


# direct methods
.method constructor <init>(Lcwh;Lrx/u;Lrx/ao;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcwi;->c:Lcwh;

    iput-object p2, p0, Lcwi;->a:Lrx/u;

    iput-object p3, p0, Lcwi;->b:Lrx/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcwi;->c:Lcwh;

    iget-object v0, v0, Lcwh;->b:Lcwe;

    invoke-static {v0}, Lcwe;->b(Lcwe;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcwi;->c:Lcwh;

    iget-object v0, v0, Lcwh;->b:Lcwe;

    iget-object v0, v0, Lcwe;->b:Lcwn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcwi;->c:Lcwh;

    iget-object v0, v0, Lcwh;->b:Lcwe;

    iget-object v0, v0, Lcwe;->c:Ljava/util/List;

    if-nez v0, :cond_1

    .line 183
    :cond_0
    iget-object v0, p0, Lcwi;->a:Lrx/u;

    invoke-virtual {v0}, Lrx/u;->R_()V

    .line 184
    iget-object v0, p0, Lcwi;->c:Lcwh;

    iget-object v0, v0, Lcwh;->b:Lcwe;

    invoke-virtual {v0}, Lcwe;->e()V

    .line 200
    :goto_0
    return-void

    .line 187
    :cond_1
    iget-object v0, p0, Lcwi;->c:Lcwh;

    iget-object v0, v0, Lcwh;->b:Lcwe;

    invoke-static {v0}, Lcwe;->c(Lcwe;)I

    move-result v0

    iget-object v1, p0, Lcwi;->c:Lcwh;

    iget-object v1, v1, Lcwh;->b:Lcwe;

    iget-object v1, v1, Lcwe;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcwi;->c:Lcwh;

    iget-object v0, v0, Lcwh;->b:Lcwe;

    invoke-static {v0}, Lcwe;->d(Lcwe;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 189
    :try_start_0
    iget-object v0, p0, Lcwi;->c:Lcwh;

    iget-object v0, v0, Lcwh;->b:Lcwe;

    iget-object v0, v0, Lcwe;->b:Lcwn;

    iget-object v1, p0, Lcwi;->c:Lcwh;

    iget-object v1, v1, Lcwh;->b:Lcwe;

    invoke-static {v1}, Lcwe;->c(Lcwe;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcwn;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 190
    iget-object v1, p0, Lcwi;->c:Lcwh;

    iget-object v1, v1, Lcwh;->b:Lcwe;

    invoke-static {v1}, Lcwe;->e(Lcwe;)I

    .line 191
    iget-object v1, p0, Lcwi;->b:Lrx/ao;

    invoke-virtual {v1, v0}, Lrx/ao;->b_(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    iget-object v1, p0, Lcwi;->b:Lrx/ao;

    invoke-virtual {v1, v0}, Lrx/ao;->a(Ljava/lang/Throwable;)V

    .line 194
    iget-object v0, p0, Lcwi;->a:Lrx/u;

    invoke-virtual {v0}, Lrx/u;->R_()V

    goto :goto_0

    .line 197
    :cond_2
    iget-object v0, p0, Lcwi;->b:Lrx/ao;

    invoke-virtual {v0}, Lrx/ao;->bt_()V

    .line 198
    iget-object v0, p0, Lcwi;->a:Lrx/u;

    invoke-virtual {v0}, Lrx/u;->R_()V

    goto :goto_0
.end method
