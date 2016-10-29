.class Lcom/twitter/android/moments/ui/fullscreen/di;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/model/moments/ad;

.field final synthetic b:Lcom/twitter/model/moments/ah;

.field final synthetic c:Lcom/twitter/android/moments/ui/fullscreen/dj;

.field final synthetic d:Lcom/twitter/android/moments/ui/fullscreen/dh;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/fullscreen/dh;Lcom/twitter/model/moments/ad;Lcom/twitter/model/moments/ah;Lcom/twitter/android/moments/ui/fullscreen/dj;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/di;->d:Lcom/twitter/android/moments/ui/fullscreen/dh;

    iput-object p2, p0, Lcom/twitter/android/moments/ui/fullscreen/di;->a:Lcom/twitter/model/moments/ad;

    iput-object p3, p0, Lcom/twitter/android/moments/ui/fullscreen/di;->b:Lcom/twitter/model/moments/ah;

    iput-object p4, p0, Lcom/twitter/android/moments/ui/fullscreen/di;->c:Lcom/twitter/android/moments/ui/fullscreen/dj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 53
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/di;->d:Lcom/twitter/android/moments/ui/fullscreen/dh;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/dh;->a(Lcom/twitter/android/moments/ui/fullscreen/dh;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/di;->d:Lcom/twitter/android/moments/ui/fullscreen/dh;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/dh;->b(Lcom/twitter/android/moments/ui/fullscreen/dh;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/di;->d:Lcom/twitter/android/moments/ui/fullscreen/dh;

    iget-object v2, p0, Lcom/twitter/android/moments/ui/fullscreen/di;->a:Lcom/twitter/model/moments/ad;

    iget-object v3, p0, Lcom/twitter/android/moments/ui/fullscreen/di;->b:Lcom/twitter/model/moments/ah;

    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/di;->d:Lcom/twitter/android/moments/ui/fullscreen/dh;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/dh;->c(Lcom/twitter/android/moments/ui/fullscreen/dh;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/twitter/android/moments/ui/fullscreen/di;->c:Lcom/twitter/android/moments/ui/fullscreen/dj;

    .line 56
    invoke-virtual {v4}, Lcom/twitter/android/moments/ui/fullscreen/dj;->c()Lcom/twitter/media/ui/image/MediaImageView;

    move-result-object v4

    .line 55
    invoke-static {v1, v2, v3, v0, v4}, Lcom/twitter/android/moments/ui/fullscreen/dh;->a(Lcom/twitter/android/moments/ui/fullscreen/dh;Lcom/twitter/model/moments/ad;Lcom/twitter/model/moments/ah;Ljava/lang/String;Lcom/twitter/media/ui/image/MediaImageView;)V

    .line 63
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/di;->d:Lcom/twitter/android/moments/ui/fullscreen/dh;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/di;->b:Lcom/twitter/model/moments/ah;

    invoke-static {v0, v1}, Lcom/twitter/android/moments/ui/fullscreen/dh;->a(Lcom/twitter/android/moments/ui/fullscreen/dh;Lcom/twitter/model/moments/ah;)V

    goto :goto_0

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/di;->c:Lcom/twitter/android/moments/ui/fullscreen/dj;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/dj;->d()V

    goto :goto_0
.end method
