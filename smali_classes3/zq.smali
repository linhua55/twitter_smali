.class Lzq;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final synthetic a:Lzo;


# direct methods
.method constructor <init>(Lzo;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lzq;->a:Lzo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    .prologue
    .line 218
    iget-object v0, p0, Lzq;->a:Lzo;

    invoke-static {v0}, Lzo;->c(Lzo;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 223
    :cond_0
    iget-object v0, p0, Lzq;->a:Lzo;

    iget-object v1, p0, Lzq;->a:Lzo;

    invoke-static {v1}, Lzo;->d(Lzo;)Lcom/twitter/ui/widget/ClippedImageView;

    move-result-object v1

    iget-object v2, p0, Lzq;->a:Lzo;

    invoke-static {v2}, Lzo;->e(Lzo;)Lcvy;

    move-result-object v2

    iget-object v3, p0, Lzq;->a:Lzo;

    invoke-static {v3}, Lzo;->b(Lzo;)Lcvw;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lzo;->a(Lcom/twitter/ui/widget/ClippedImageView;Lcvy;Lcvw;)V

    .line 225
    const/4 v0, 0x1

    return v0
.end method
