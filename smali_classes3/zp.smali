.class Lzp;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/media/request/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/media/request/i",
        "<",
        "Lcom/twitter/media/request/ImageResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lzo;


# direct methods
.method constructor <init>(Lzo;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lzp;->a:Lzo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/media/request/ImageResponse;)V
    .locals 2

    .prologue
    .line 148
    invoke-virtual {p1}, Lcom/twitter/media/request/ImageResponse;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 149
    if-eqz v0, :cond_1

    .line 150
    iget-object v1, p0, Lzp;->a:Lzo;

    invoke-static {v1, v0}, Lzo;->a(Lzo;Landroid/graphics/Bitmap;)V

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    iget-object v0, p0, Lzp;->a:Lzo;

    invoke-static {v0}, Lzo;->a(Lzo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 154
    iget-object v0, p0, Lzp;->a:Lzo;

    invoke-static {v0}, Lzo;->b(Lzo;)Lcvw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lzp;->a:Lzo;

    invoke-static {v0}, Lzo;->b(Lzo;)Lcvw;

    move-result-object v0

    invoke-interface {v0}, Lcvw;->a()V

    goto :goto_0
.end method

.method public bridge synthetic a(Lcom/twitter/media/request/ResourceResponse;)V
    .locals 0

    .prologue
    .line 145
    check-cast p1, Lcom/twitter/media/request/ImageResponse;

    invoke-virtual {p0, p1}, Lzp;->a(Lcom/twitter/media/request/ImageResponse;)V

    return-void
.end method
