.class Lcom/twitter/android/moments/ui/maker/cj;
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
.field final synthetic a:J

.field final synthetic b:Lcom/twitter/model/moments/ak;

.field final synthetic c:Lcom/twitter/android/moments/ui/maker/ci;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/maker/ci;JLcom/twitter/model/moments/ak;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/cj;->c:Lcom/twitter/android/moments/ui/maker/ci;

    iput-wide p2, p0, Lcom/twitter/android/moments/ui/maker/cj;->a:J

    iput-object p4, p0, Lcom/twitter/android/moments/ui/maker/cj;->b:Lcom/twitter/model/moments/ak;

    invoke-direct {p0}, Lach;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/util/collection/ar;)V
    .locals 6
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
    .line 69
    invoke-virtual {p1}, Lcom/twitter/util/collection/ar;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/cj;->c:Lcom/twitter/android/moments/ui/maker/ci;

    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/cj;->c:Lcom/twitter/android/moments/ui/maker/ci;

    .line 71
    invoke-static {v0}, Lcom/twitter/android/moments/ui/maker/ci;->a(Lcom/twitter/android/moments/ui/maker/ci;)Lcom/twitter/util/object/c;

    move-result-object v2

    invoke-virtual {p1}, Lcom/twitter/util/collection/ar;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/d;

    iget-object v0, v0, Lcom/twitter/model/moments/viewmodels/d;->a:Lcom/twitter/model/moments/viewmodels/a;

    invoke-interface {v2, v0}, Lcom/twitter/util/object/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/data/maker/a;

    .line 70
    invoke-static {v1, v0}, Lcom/twitter/android/moments/ui/maker/ci;->a(Lcom/twitter/android/moments/ui/maker/ci;Lcom/twitter/android/moments/data/maker/a;)Lcom/twitter/android/moments/data/maker/a;

    .line 72
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/cj;->c:Lcom/twitter/android/moments/ui/maker/ci;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/cj;->c:Lcom/twitter/android/moments/ui/maker/ci;

    invoke-static {v1}, Lcom/twitter/android/moments/ui/maker/ci;->c(Lcom/twitter/android/moments/ui/maker/ci;)Lcom/twitter/android/moments/ui/maker/cp;

    move-result-object v1

    iget-wide v2, p0, Lcom/twitter/android/moments/ui/maker/cj;->a:J

    iget-object v4, p0, Lcom/twitter/android/moments/ui/maker/cj;->b:Lcom/twitter/model/moments/ak;

    iget-object v5, p0, Lcom/twitter/android/moments/ui/maker/cj;->c:Lcom/twitter/android/moments/ui/maker/ci;

    .line 73
    invoke-static {v5}, Lcom/twitter/android/moments/ui/maker/ci;->b(Lcom/twitter/android/moments/ui/maker/ci;)Lcom/twitter/android/moments/data/maker/a;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/twitter/android/moments/ui/maker/cp;->a(JLcom/twitter/model/moments/ak;Lcom/twitter/android/moments/data/maker/a;)Lcom/twitter/android/moments/ui/maker/co;

    move-result-object v1

    .line 72
    invoke-static {v0, v1}, Lcom/twitter/android/moments/ui/maker/ci;->a(Lcom/twitter/android/moments/ui/maker/ci;Lcom/twitter/android/moments/ui/maker/co;)Lcom/twitter/android/moments/ui/maker/co;

    .line 74
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/cj;->c:Lcom/twitter/android/moments/ui/maker/ci;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/ci;->q()Lcom/twitter/app/common/inject/o;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/cj;->c:Lcom/twitter/android/moments/ui/maker/ci;

    invoke-static {v1}, Lcom/twitter/android/moments/ui/maker/ci;->d(Lcom/twitter/android/moments/ui/maker/ci;)Lcom/twitter/android/moments/ui/maker/co;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/inject/o;->a(Ljava/lang/Object;)Lcom/twitter/app/common/inject/o;

    .line 75
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/cj;->c:Lcom/twitter/android/moments/ui/maker/ci;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/maker/ci;->e(Lcom/twitter/android/moments/ui/maker/ci;)Lcom/twitter/android/moments/ui/maker/ck;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/cj;->c:Lcom/twitter/android/moments/ui/maker/ci;

    invoke-static {v1}, Lcom/twitter/android/moments/ui/maker/ci;->d(Lcom/twitter/android/moments/ui/maker/ci;)Lcom/twitter/android/moments/ui/maker/co;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/moments/ui/maker/co;->aK_()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/maker/ck;->a(Landroid/view/View;)V

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/cj;->c:Lcom/twitter/android/moments/ui/maker/ci;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/maker/ci;->f(Lcom/twitter/android/moments/ui/maker/ci;)Lajn;

    move-result-object v0

    const v1, 0x7f0a0565

    invoke-virtual {v0, v1}, Lajn;->a(I)V

    goto :goto_0
.end method

.method public synthetic b_(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 65
    check-cast p1, Lcom/twitter/util/collection/ar;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/maker/cj;->a(Lcom/twitter/util/collection/ar;)V

    return-void
.end method
