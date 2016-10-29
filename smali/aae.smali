.class Laae;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/library/media/widget/s;


# instance fields
.field final synthetic a:Lcom/twitter/library/media/widget/MultiTouchImageView;

.field final synthetic b:Laac;


# direct methods
.method constructor <init>(Laac;Lcom/twitter/library/media/widget/MultiTouchImageView;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Laae;->b:Laac;

    iput-object p2, p0, Laae;->a:Lcom/twitter/library/media/widget/MultiTouchImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Laae;->a:Lcom/twitter/library/media/widget/MultiTouchImageView;

    invoke-virtual {v0}, Lcom/twitter/library/media/widget/MultiTouchImageView;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Laae;->b:Laac;

    iget-object v0, v0, Laac;->h:Lcom/twitter/android/media/stickers/StickerMediaView;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Laae;->b:Laac;

    iget-object v0, v0, Laac;->h:Lcom/twitter/android/media/stickers/StickerMediaView;

    invoke-virtual {v0}, Lcom/twitter/android/media/stickers/StickerMediaView;->c()V

    .line 120
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Laae;->a:Lcom/twitter/library/media/widget/MultiTouchImageView;

    invoke-virtual {v0}, Lcom/twitter/library/media/widget/MultiTouchImageView;->d()V

    .line 125
    iget-object v0, p0, Laae;->b:Laac;

    iget-object v0, v0, Laac;->h:Lcom/twitter/android/media/stickers/StickerMediaView;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Laae;->b:Laac;

    iget-object v0, v0, Laac;->h:Lcom/twitter/android/media/stickers/StickerMediaView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/media/stickers/StickerMediaView;->a(Z)V

    .line 128
    :cond_0
    return-void
.end method
