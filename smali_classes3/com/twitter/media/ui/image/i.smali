.class Lcom/twitter/media/ui/image/i;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/media/ui/image/config/c;


# instance fields
.field final synthetic a:Lcom/twitter/media/ui/image/MediaImageView;


# direct methods
.method constructor <init>(Lcom/twitter/media/ui/image/MediaImageView;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/twitter/media/ui/image/i;->a:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)Lcom/twitter/media/ui/image/config/c;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/twitter/media/ui/image/i;->a:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-static {v0}, Lcom/twitter/media/ui/image/MediaImageView;->a(Lcom/twitter/media/ui/image/MediaImageView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 148
    return-object p0
.end method

.method public a(IF)Lcom/twitter/media/ui/image/config/c;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/twitter/media/ui/image/i;->a:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-static {v0}, Lcom/twitter/media/ui/image/MediaImageView;->a(Lcom/twitter/media/ui/image/MediaImageView;)Landroid/widget/ImageView;

    move-result-object v0

    instance-of v0, v0, Lcom/twitter/media/ui/image/config/a;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/twitter/media/ui/image/i;->a:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-static {v0}, Lcom/twitter/media/ui/image/MediaImageView;->a(Lcom/twitter/media/ui/image/MediaImageView;)Landroid/widget/ImageView;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/ui/image/config/a;

    invoke-interface {v0, p1, p2}, Lcom/twitter/media/ui/image/config/a;->a(IF)V

    .line 132
    :cond_0
    return-object p0
.end method

.method public a(Lcom/twitter/media/ui/image/config/g;)Lcom/twitter/media/ui/image/config/c;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/twitter/media/ui/image/i;->a:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-static {v0}, Lcom/twitter/media/ui/image/MediaImageView;->a(Lcom/twitter/media/ui/image/MediaImageView;)Landroid/widget/ImageView;

    move-result-object v0

    instance-of v0, v0, Lcom/twitter/media/ui/image/config/e;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/twitter/media/ui/image/i;->a:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-static {v0}, Lcom/twitter/media/ui/image/MediaImageView;->a(Lcom/twitter/media/ui/image/MediaImageView;)Landroid/widget/ImageView;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/ui/image/config/e;

    invoke-interface {v0, p1}, Lcom/twitter/media/ui/image/config/e;->setRoundingStrategy(Lcom/twitter/media/ui/image/config/g;)V

    .line 141
    :cond_0
    return-object p0
.end method

.method public b(F)Lcom/twitter/media/ui/image/config/c;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/twitter/media/ui/image/i;->a:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-static {v0}, Lcom/twitter/media/ui/image/MediaImageView;->a(Lcom/twitter/media/ui/image/MediaImageView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 155
    return-object p0
.end method
