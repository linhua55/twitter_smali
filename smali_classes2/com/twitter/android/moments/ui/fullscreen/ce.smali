.class Lcom/twitter/android/moments/ui/fullscreen/ce;
.super Lach;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lach",
        "<",
        "Lcom/twitter/util/collection/ar",
        "<",
        "Lcom/twitter/model/moments/viewmodels/d;",
        "Lcom/twitter/model/moments/d;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/model/moments/ak;

.field final synthetic b:Lcom/twitter/util/collection/ab;

.field final synthetic c:Lcom/twitter/android/moments/ui/fullscreen/by;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/fullscreen/by;Lcom/twitter/model/moments/ak;Lcom/twitter/util/collection/ab;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/ce;->c:Lcom/twitter/android/moments/ui/fullscreen/by;

    iput-object p2, p0, Lcom/twitter/android/moments/ui/fullscreen/ce;->a:Lcom/twitter/model/moments/ak;

    iput-object p3, p0, Lcom/twitter/android/moments/ui/fullscreen/ce;->b:Lcom/twitter/util/collection/ab;

    invoke-direct {p0}, Lach;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/util/collection/ar;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/collection/ar",
            "<",
            "Lcom/twitter/model/moments/viewmodels/d;",
            "Lcom/twitter/model/moments/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 352
    invoke-virtual {p1}, Lcom/twitter/util/collection/ar;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 353
    invoke-virtual {p1}, Lcom/twitter/util/collection/ar;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/d;

    .line 354
    iget-object v2, v0, Lcom/twitter/model/moments/viewmodels/d;->a:Lcom/twitter/model/moments/viewmodels/a;

    .line 355
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/ce;->a:Lcom/twitter/model/moments/ak;

    if-nez v1, :cond_1

    .line 356
    invoke-static {}, Lcom/twitter/util/collection/ab;->a()Lcom/twitter/util/collection/ab;

    move-result-object v1

    .line 358
    :goto_0
    iget-object v3, p0, Lcom/twitter/android/moments/ui/fullscreen/ce;->b:Lcom/twitter/util/collection/ab;

    .line 360
    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/d;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/util/collection/ab;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 359
    invoke-virtual {v3, v0}, Lcom/twitter/util/collection/ab;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 361
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/ce;->c:Lcom/twitter/android/moments/ui/fullscreen/by;

    invoke-static {v1}, Lcom/twitter/android/moments/ui/fullscreen/by;->h(Lcom/twitter/android/moments/ui/fullscreen/by;)Lcwy;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/ce;->c:Lcom/twitter/android/moments/ui/fullscreen/by;

    invoke-static {v1}, Lcom/twitter/android/moments/ui/fullscreen/by;->h(Lcom/twitter/android/moments/ui/fullscreen/by;)Lcwy;

    move-result-object v1

    invoke-virtual {v1}, Lcwy;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 363
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/ce;->c:Lcom/twitter/android/moments/ui/fullscreen/by;

    invoke-static {v1, v2}, Lcom/twitter/android/moments/ui/fullscreen/by;->a(Lcom/twitter/android/moments/ui/fullscreen/by;Lcom/twitter/model/moments/viewmodels/a;)Lcom/twitter/model/moments/viewmodels/a;

    .line 364
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/ce;->c:Lcom/twitter/android/moments/ui/fullscreen/by;

    invoke-static {v1, v0}, Lcom/twitter/android/moments/ui/fullscreen/by;->a(Lcom/twitter/android/moments/ui/fullscreen/by;I)I

    .line 374
    :cond_0
    :goto_1
    return-void

    .line 356
    :cond_1
    invoke-virtual {v2}, Lcom/twitter/model/moments/viewmodels/a;->f()Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/twitter/android/moments/ui/fullscreen/ce;->a:Lcom/twitter/model/moments/ak;

    invoke-static {v1, v3}, Lcom/twitter/android/moments/ui/fullscreen/by;->a(Ljava/util/List;Lcom/twitter/model/moments/ak;)Lcom/twitter/util/collection/ab;

    move-result-object v1

    goto :goto_0

    .line 365
    :cond_2
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/ce;->c:Lcom/twitter/android/moments/ui/fullscreen/by;

    invoke-static {v1}, Lcom/twitter/android/moments/ui/fullscreen/by;->a(Lcom/twitter/android/moments/ui/fullscreen/by;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 366
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/ce;->c:Lcom/twitter/android/moments/ui/fullscreen/by;

    iget-object v3, p0, Lcom/twitter/android/moments/ui/fullscreen/ce;->c:Lcom/twitter/android/moments/ui/fullscreen/by;

    invoke-static {v3}, Lcom/twitter/android/moments/ui/fullscreen/by;->f(Lcom/twitter/android/moments/ui/fullscreen/by;)Laev;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/ab;->a(Ljava/lang/Object;)Lcom/twitter/util/collection/ab;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/twitter/android/moments/ui/fullscreen/by;->a(Lcom/twitter/android/moments/ui/fullscreen/by;Lcom/twitter/model/moments/viewmodels/a;Laev;Lcom/twitter/util/collection/ab;)V

    goto :goto_1

    .line 368
    :cond_3
    invoke-virtual {p1}, Lcom/twitter/util/collection/ar;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/d;

    invoke-virtual {v0}, Lcom/twitter/model/moments/d;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 369
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ce;->c:Lcom/twitter/android/moments/ui/fullscreen/by;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/by;->i(Lcom/twitter/android/moments/ui/fullscreen/by;)Lcom/twitter/android/moments/ui/fullscreen/ar;

    move-result-object v1

    .line 370
    invoke-virtual {p1}, Lcom/twitter/util/collection/ar;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/d;

    invoke-virtual {v1, v0}, Lcom/twitter/android/moments/ui/fullscreen/ar;->b(Lcom/twitter/model/moments/d;)V

    goto :goto_1

    .line 372
    :cond_4
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ce;->c:Lcom/twitter/android/moments/ui/fullscreen/by;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/by;->j(Lcom/twitter/android/moments/ui/fullscreen/by;)Lajn;

    move-result-object v0

    const v1, 0x7f0a0565

    invoke-virtual {v0, v1}, Lajn;->a(I)V

    goto :goto_1
.end method

.method public synthetic b_(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 348
    check-cast p1, Lcom/twitter/util/collection/ar;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/fullscreen/ce;->a(Lcom/twitter/util/collection/ar;)V

    return-void
.end method
