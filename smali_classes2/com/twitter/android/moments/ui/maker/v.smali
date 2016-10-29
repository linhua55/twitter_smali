.class Lcom/twitter/android/moments/ui/maker/v;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldjf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldjf",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/maker/u;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/maker/u;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/v;->a:Lcom/twitter/android/moments/ui/maker/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 51
    if-eqz p1, :cond_0

    .line 52
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/v;->a:Lcom/twitter/android/moments/ui/maker/u;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/maker/u;->b(Lcom/twitter/android/moments/ui/maker/u;)Lcom/twitter/android/moments/ui/maker/du;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/v;->a:Lcom/twitter/android/moments/ui/maker/u;

    invoke-static {v1}, Lcom/twitter/android/moments/ui/maker/u;->a(Lcom/twitter/android/moments/ui/maker/u;)Lcom/twitter/model/moments/viewmodels/MomentPage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/model/moments/viewmodels/MomentPage;->i()Lcom/twitter/model/moments/ak;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/twitter/android/moments/ui/maker/du;->a(Lcom/twitter/model/moments/ak;Landroid/graphics/Bitmap;)V

    .line 54
    :cond_0
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 48
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/maker/v;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
