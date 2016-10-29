.class Lcom/twitter/android/moments/ui/maker/navigation/i;
.super Lach;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lach",
        "<",
        "Lcom/twitter/android/moments/ui/maker/viewdelegate/ItemCollectionAnimation$AnimationState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/maker/navigation/af;

.field final synthetic b:Lcom/twitter/android/moments/ui/maker/navigation/af;

.field final synthetic c:Lcom/twitter/android/moments/ui/maker/navigation/h;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/maker/navigation/h;Lcom/twitter/android/moments/ui/maker/navigation/af;Lcom/twitter/android/moments/ui/maker/navigation/af;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/navigation/i;->c:Lcom/twitter/android/moments/ui/maker/navigation/h;

    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/navigation/i;->a:Lcom/twitter/android/moments/ui/maker/navigation/af;

    iput-object p3, p0, Lcom/twitter/android/moments/ui/maker/navigation/i;->b:Lcom/twitter/android/moments/ui/maker/navigation/af;

    invoke-direct {p0}, Lach;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/android/moments/ui/maker/viewdelegate/ItemCollectionAnimation$AnimationState;)V
    .locals 2

    .prologue
    .line 51
    sget-object v0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ItemCollectionAnimation$AnimationState;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/ItemCollectionAnimation$AnimationState;

    if-ne p1, v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/i;->a:Lcom/twitter/android/moments/ui/maker/navigation/af;

    invoke-interface {v0}, Lcom/twitter/android/moments/ui/maker/navigation/af;->a()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 53
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/i;->b:Lcom/twitter/android/moments/ui/maker/navigation/af;

    invoke-interface {v0}, Lcom/twitter/android/moments/ui/maker/navigation/af;->a()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 58
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/i;->c:Lcom/twitter/android/moments/ui/maker/navigation/h;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/maker/navigation/h;->a(Lcom/twitter/android/moments/ui/maker/navigation/h;)Lrx/subjects/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lrx/subjects/a;->b_(Ljava/lang/Object;)V

    .line 56
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/i;->c:Lcom/twitter/android/moments/ui/maker/navigation/h;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/maker/navigation/h;->a(Lcom/twitter/android/moments/ui/maker/navigation/h;)Lrx/subjects/a;

    move-result-object v0

    invoke-virtual {v0}, Lrx/subjects/a;->bt_()V

    goto :goto_0
.end method

.method public synthetic b_(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 48
    check-cast p1, Lcom/twitter/android/moments/ui/maker/viewdelegate/ItemCollectionAnimation$AnimationState;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/maker/navigation/i;->a(Lcom/twitter/android/moments/ui/maker/viewdelegate/ItemCollectionAnimation$AnimationState;)V

    return-void
.end method
