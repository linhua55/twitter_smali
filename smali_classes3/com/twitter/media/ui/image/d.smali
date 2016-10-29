.class Lcom/twitter/media/ui/image/d;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/twitter/media/ui/image/c;


# direct methods
.method constructor <init>(Lcom/twitter/media/ui/image/c;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lcom/twitter/media/ui/image/d;->a:Lcom/twitter/media/ui/image/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 341
    iget-object v0, p0, Lcom/twitter/media/ui/image/d;->a:Lcom/twitter/media/ui/image/c;

    iget-object v0, v0, Lcom/twitter/media/ui/image/c;->c:Lcom/twitter/media/ui/image/BaseMediaImageView;

    iget-object v1, p0, Lcom/twitter/media/ui/image/d;->a:Lcom/twitter/media/ui/image/c;

    iget-object v1, v1, Lcom/twitter/media/ui/image/c;->a:Lcom/twitter/media/request/ImageResponse;

    iget-object v2, p0, Lcom/twitter/media/ui/image/d;->a:Lcom/twitter/media/ui/image/c;

    iget-object v2, v2, Lcom/twitter/media/ui/image/c;->b:Lcom/twitter/util/concurrent/j;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/media/ui/image/BaseMediaImageView;->a(Lcom/twitter/media/request/ImageResponse;Lcom/twitter/util/concurrent/j;)V

    .line 342
    return-void
.end method
