.class Lcom/twitter/android/moments/ui/fullscreen/cd;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcxd;


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/fullscreen/by;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/fullscreen/by;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/cd;->a:Lcom/twitter/android/moments/ui/fullscreen/by;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 315
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 316
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/cd;->a:Lcom/twitter/android/moments/ui/fullscreen/by;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/by;->a(Lcom/twitter/android/moments/ui/fullscreen/by;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/c;->a(Landroid/view/View;)V

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/cd;->a:Lcom/twitter/android/moments/ui/fullscreen/by;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/by;->a(Lcom/twitter/android/moments/ui/fullscreen/by;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 319
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/cd;->a:Lcom/twitter/android/moments/ui/fullscreen/by;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/by;->d(Lcom/twitter/android/moments/ui/fullscreen/by;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/cd;->a:Lcom/twitter/android/moments/ui/fullscreen/by;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/by;->d(Lcom/twitter/android/moments/ui/fullscreen/by;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/cd;->a:Lcom/twitter/android/moments/ui/fullscreen/by;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/by;->e(Lcom/twitter/android/moments/ui/fullscreen/by;)Lcom/twitter/model/moments/viewmodels/a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 323
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/cd;->a:Lcom/twitter/android/moments/ui/fullscreen/by;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/cd;->a:Lcom/twitter/android/moments/ui/fullscreen/by;

    invoke-static {v1}, Lcom/twitter/android/moments/ui/fullscreen/by;->e(Lcom/twitter/android/moments/ui/fullscreen/by;)Lcom/twitter/model/moments/viewmodels/a;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/moments/ui/fullscreen/cd;->a:Lcom/twitter/android/moments/ui/fullscreen/by;

    invoke-static {v2}, Lcom/twitter/android/moments/ui/fullscreen/by;->f(Lcom/twitter/android/moments/ui/fullscreen/by;)Laev;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/moments/ui/fullscreen/cd;->a:Lcom/twitter/android/moments/ui/fullscreen/by;

    .line 324
    invoke-static {v3}, Lcom/twitter/android/moments/ui/fullscreen/by;->g(Lcom/twitter/android/moments/ui/fullscreen/by;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/twitter/util/collection/ab;->a(Ljava/lang/Object;)Lcom/twitter/util/collection/ab;

    move-result-object v3

    .line 323
    invoke-static {v0, v1, v2, v3}, Lcom/twitter/android/moments/ui/fullscreen/by;->a(Lcom/twitter/android/moments/ui/fullscreen/by;Lcom/twitter/model/moments/viewmodels/a;Laev;Lcom/twitter/util/collection/ab;)V

    .line 325
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/cd;->a:Lcom/twitter/android/moments/ui/fullscreen/by;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/twitter/android/moments/ui/fullscreen/by;->a(Lcom/twitter/android/moments/ui/fullscreen/by;Lcom/twitter/model/moments/viewmodels/a;)Lcom/twitter/model/moments/viewmodels/a;

    .line 328
    :cond_2
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 331
    return-void
.end method
