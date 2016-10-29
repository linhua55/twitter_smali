.class Lcom/twitter/android/moments/ui/maker/viewdelegate/ag;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldje;


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ag;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ag;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;->a(Lcom/twitter/android/moments/ui/maker/viewdelegate/ae;)Lcom/twitter/android/moments/ui/maker/viewdelegate/ak;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ak;->a(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 83
    return-void
.end method
