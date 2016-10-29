.class Lcom/twitter/android/moments/ui/maker/viewdelegate/af;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/maker/viewdelegate/ItemCollectionAnimation;

.field final synthetic b:Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;Lcom/twitter/android/moments/ui/maker/viewdelegate/ItemCollectionAnimation;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/af;->b:Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;

    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/af;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/ItemCollectionAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/af;->b:Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;->a(Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;)Lcom/twitter/android/moments/ui/maker/viewdelegate/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ak;->b()Lcom/twitter/android/moments/ui/maker/viewdelegate/an;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/an;->a(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 55
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/af;->b:Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/af;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/ItemCollectionAnimation;

    invoke-interface {v1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ItemCollectionAnimation;->b()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;->a(Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/af;->b:Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/af;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/ItemCollectionAnimation;

    invoke-static {v0, v1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;->a(Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;Lcom/twitter/android/moments/ui/maker/viewdelegate/ItemCollectionAnimation;)V

    .line 57
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/af;->b:Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;->a(Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;)Lcom/twitter/android/moments/ui/maker/viewdelegate/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ak;->d()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 58
    const/4 v0, 0x0

    .line 63
    :goto_0
    return v0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/af;->b:Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;->b(Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;)Lrx/subjects/e;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/moments/ui/maker/viewdelegate/ItemCollectionAnimation$AnimationState;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/ItemCollectionAnimation$AnimationState;

    invoke-virtual {v0, v1}, Lrx/subjects/e;->b_(Ljava/lang/Object;)V

    .line 61
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/af;->b:Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;->b(Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;)Lrx/subjects/e;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/moments/ui/maker/viewdelegate/ItemCollectionAnimation$AnimationState;->b:Lcom/twitter/android/moments/ui/maker/viewdelegate/ItemCollectionAnimation$AnimationState;

    invoke-virtual {v0, v1}, Lrx/subjects/e;->b_(Ljava/lang/Object;)V

    .line 62
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/af;->b:Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;->b(Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;)Lrx/subjects/e;

    move-result-object v0

    invoke-virtual {v0}, Lrx/subjects/e;->bt_()V

    .line 63
    const/4 v0, 0x1

    goto :goto_0
.end method
