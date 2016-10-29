.class Lcom/twitter/media/ui/image/c;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/util/concurrent/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/util/concurrent/e",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/media/request/ImageResponse;

.field final synthetic b:Lcom/twitter/util/concurrent/j;

.field final synthetic c:Lcom/twitter/media/ui/image/BaseMediaImageView;


# direct methods
.method constructor <init>(Lcom/twitter/media/ui/image/BaseMediaImageView;Lcom/twitter/media/request/ImageResponse;Lcom/twitter/util/concurrent/j;)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lcom/twitter/media/ui/image/c;->c:Lcom/twitter/media/ui/image/BaseMediaImageView;

    iput-object p2, p0, Lcom/twitter/media/ui/image/c;->a:Lcom/twitter/media/request/ImageResponse;

    iput-object p3, p0, Lcom/twitter/media/ui/image/c;->b:Lcom/twitter/util/concurrent/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 330
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/twitter/media/ui/image/c;->a(Ljava/lang/Void;)V

    return-void
.end method

.method public a(Ljava/lang/Void;)V
    .locals 3

    .prologue
    .line 333
    invoke-static {}, Lcom/twitter/util/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/twitter/media/ui/image/c;->c:Lcom/twitter/media/ui/image/BaseMediaImageView;

    iget-object v1, p0, Lcom/twitter/media/ui/image/c;->a:Lcom/twitter/media/request/ImageResponse;

    iget-object v2, p0, Lcom/twitter/media/ui/image/c;->b:Lcom/twitter/util/concurrent/j;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/media/ui/image/BaseMediaImageView;->a(Lcom/twitter/media/request/ImageResponse;Lcom/twitter/util/concurrent/j;)V

    .line 344
    :goto_0
    return-void

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/twitter/media/ui/image/c;->c:Lcom/twitter/media/ui/image/BaseMediaImageView;

    new-instance v1, Lcom/twitter/media/ui/image/d;

    invoke-direct {v1, p0}, Lcom/twitter/media/ui/image/d;-><init>(Lcom/twitter/media/ui/image/c;)V

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/BaseMediaImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
