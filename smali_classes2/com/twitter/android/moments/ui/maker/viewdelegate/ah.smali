.class Lcom/twitter/android/moments/ui/maker/viewdelegate/ah;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldje;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

.field final synthetic b:Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ah;->b:Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;

    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ah;->a:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ah;->b:Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;->a(Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;)Lcom/twitter/android/moments/ui/maker/viewdelegate/ak;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ah;->a:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ak;->a(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 93
    return-void
.end method
