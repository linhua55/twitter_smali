.class Lcom/twitter/android/moments/ui/maker/navigation/aj;
.super Lach;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lach",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/maker/navigation/ap;

.field final synthetic b:Lcom/twitter/android/moments/ui/maker/navigation/ah;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/maker/navigation/ah;Lcom/twitter/android/moments/ui/maker/navigation/ap;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/navigation/aj;->b:Lcom/twitter/android/moments/ui/maker/navigation/ah;

    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/navigation/aj;->a:Lcom/twitter/android/moments/ui/maker/navigation/ap;

    invoke-direct {p0}, Lach;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/aj;->b:Lcom/twitter/android/moments/ui/maker/navigation/ah;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/maker/navigation/ah;->a(Lcom/twitter/android/moments/ui/maker/navigation/ah;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/navigation/aj;->a:Lcom/twitter/android/moments/ui/maker/navigation/ap;

    invoke-interface {v1}, Lcom/twitter/android/moments/ui/maker/navigation/ap;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 86
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/aj;->a:Lcom/twitter/android/moments/ui/maker/navigation/ap;

    invoke-interface {v0}, Lcom/twitter/android/moments/ui/maker/navigation/ap;->b()V

    .line 87
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/aj;->b:Lcom/twitter/android/moments/ui/maker/navigation/ah;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/twitter/android/moments/ui/maker/navigation/ah;->a(Lcom/twitter/android/moments/ui/maker/navigation/ah;Z)Z

    .line 88
    return-void
.end method

.method public synthetic b_(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 82
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/maker/navigation/aj;->a(Ljava/lang/Void;)V

    return-void
.end method
