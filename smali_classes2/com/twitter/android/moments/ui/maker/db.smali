.class Lcom/twitter/android/moments/ui/maker/db;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldjj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldjj",
        "<",
        "Lcom/twitter/android/moments/ui/maker/bl;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/util/math/Size;

.field final synthetic b:Lcom/twitter/util/math/Size;

.field final synthetic c:Lcom/twitter/android/moments/ui/maker/cw;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/maker/cw;Lcom/twitter/util/math/Size;Lcom/twitter/util/math/Size;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/db;->c:Lcom/twitter/android/moments/ui/maker/cw;

    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/db;->a:Lcom/twitter/util/math/Size;

    iput-object p3, p0, Lcom/twitter/android/moments/ui/maker/db;->b:Lcom/twitter/util/math/Size;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/android/moments/ui/maker/bl;)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 149
    invoke-static {}, Lcom/twitter/util/h;->c()V

    .line 150
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/db;->c:Lcom/twitter/android/moments/ui/maker/cw;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/maker/cw;->b(Lcom/twitter/android/moments/ui/maker/cw;)Lcom/twitter/android/moments/ui/maker/eh;

    move-result-object v0

    invoke-virtual {p1}, Lcom/twitter/android/moments/ui/maker/bl;->a()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/moments/ui/maker/db;->a:Lcom/twitter/util/math/Size;

    iget-object v3, p0, Lcom/twitter/android/moments/ui/maker/db;->b:Lcom/twitter/util/math/Size;

    invoke-interface {v0, v1, v2, v3}, Lcom/twitter/android/moments/ui/maker/eh;->a(Landroid/view/View;Lcom/twitter/util/math/Size;Lcom/twitter/util/math/Size;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 152
    invoke-virtual {p1}, Lcom/twitter/android/moments/ui/maker/bl;->b()V

    .line 153
    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 145
    check-cast p1, Lcom/twitter/android/moments/ui/maker/bl;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/maker/db;->a(Lcom/twitter/android/moments/ui/maker/bl;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
