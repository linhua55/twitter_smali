.class Lcom/twitter/android/moments/ui/maker/viewdelegate/y;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:F

.field final synthetic c:Lrx/subjects/k;

.field final synthetic d:Lcom/twitter/android/moments/ui/maker/viewdelegate/x;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/maker/viewdelegate/x;Landroid/view/View;FLrx/subjects/k;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/y;->d:Lcom/twitter/android/moments/ui/maker/viewdelegate/x;

    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/y;->a:Landroid/view/View;

    iput p3, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/y;->b:F

    iput-object p4, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/y;->c:Lrx/subjects/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/y;->a:Landroid/view/View;

    iget v1, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/y;->b:F

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 63
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/y;->c:Lrx/subjects/k;

    sget-object v1, Lcom/twitter/android/moments/ui/maker/viewdelegate/ItemCollectionAnimation$AnimationState;->b:Lcom/twitter/android/moments/ui/maker/viewdelegate/ItemCollectionAnimation$AnimationState;

    invoke-virtual {v0, v1}, Lrx/subjects/k;->b_(Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/y;->c:Lrx/subjects/k;

    invoke-virtual {v0}, Lrx/subjects/k;->bt_()V

    .line 65
    return-void
.end method
