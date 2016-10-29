.class Lcom/twitter/android/moments/ui/fullscreen/hq;
.super Lach;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lach",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/fullscreen/hl;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/fullscreen/hl;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/hq;->a:Lcom/twitter/android/moments/ui/fullscreen/hl;

    invoke-direct {p0}, Lach;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hq;->a:Lcom/twitter/android/moments/ui/fullscreen/hl;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/hl;->f(Lcom/twitter/android/moments/ui/fullscreen/hl;)Laky;

    move-result-object v0

    invoke-virtual {v0, p1}, Laky;->a(Landroid/graphics/Bitmap;)V

    .line 209
    return-void
.end method

.method public synthetic b_(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 205
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/fullscreen/hq;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
