.class Lcom/twitter/media/ui/image/b;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/twitter/media/request/a;

.field final synthetic b:Lcom/twitter/media/ui/image/BaseMediaImageView;


# direct methods
.method constructor <init>(Lcom/twitter/media/ui/image/BaseMediaImageView;Lcom/twitter/media/request/a;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/twitter/media/ui/image/b;->b:Lcom/twitter/media/ui/image/BaseMediaImageView;

    iput-object p2, p0, Lcom/twitter/media/ui/image/b;->a:Lcom/twitter/media/request/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 314
    iget-object v0, p0, Lcom/twitter/media/ui/image/b;->a:Lcom/twitter/media/request/a;

    iget-object v1, p0, Lcom/twitter/media/ui/image/b;->b:Lcom/twitter/media/ui/image/BaseMediaImageView;

    invoke-static {v1}, Lcom/twitter/media/ui/image/BaseMediaImageView;->a(Lcom/twitter/media/ui/image/BaseMediaImageView;)Lcom/twitter/media/request/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/media/request/a;->a(Lcom/twitter/media/request/g;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 320
    :goto_0
    return-void

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/twitter/media/ui/image/b;->b:Lcom/twitter/media/ui/image/BaseMediaImageView;

    iget v1, v0, Lcom/twitter/media/ui/image/BaseMediaImageView;->i:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, v0, Lcom/twitter/media/ui/image/BaseMediaImageView;->i:F

    .line 319
    iget-object v0, p0, Lcom/twitter/media/ui/image/b;->b:Lcom/twitter/media/ui/image/BaseMediaImageView;

    invoke-virtual {v0}, Lcom/twitter/media/ui/image/BaseMediaImageView;->o()V

    goto :goto_0
.end method
