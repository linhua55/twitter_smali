.class Lcwj;
.super Lrx/ao;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/ao",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcwe;


# direct methods
.method constructor <init>(Lcwe;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcwj;->a:Lcwe;

    invoke-direct {p0}, Lrx/ao;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcwj;->a:Lcwe;

    invoke-static {v0}, Lcwe;->d(Lcwe;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcwk;

    invoke-direct {v1, p0, p1}, Lcwk;-><init>(Lcwj;Landroid/graphics/Bitmap;)V

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 234
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcwj;->a:Lcwe;

    invoke-static {v0}, Lcwe;->f(Lcwe;)V

    .line 218
    return-void
.end method

.method public synthetic b_(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 209
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcwj;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public bt_()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcwj;->a:Lcwe;

    invoke-static {v0}, Lcwe;->f(Lcwe;)V

    .line 213
    return-void
.end method
