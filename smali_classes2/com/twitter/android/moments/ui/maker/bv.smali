.class Lcom/twitter/android/moments/ui/maker/bv;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/model/moments/viewmodels/m;

.field final synthetic b:Lcom/twitter/android/moments/ui/maker/bt;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/maker/bt;Lcom/twitter/model/moments/viewmodels/m;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/bv;->b:Lcom/twitter/android/moments/ui/maker/bt;

    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/bv;->a:Lcom/twitter/model/moments/viewmodels/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bv;->b:Lcom/twitter/android/moments/ui/maker/bt;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/maker/bt;->a(Lcom/twitter/android/moments/ui/maker/bt;)Lcom/twitter/android/moments/ui/maker/dp;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/bv;->a:Lcom/twitter/model/moments/viewmodels/m;

    invoke-virtual {v1}, Lcom/twitter/model/moments/viewmodels/m;->a()Lcom/twitter/model/moments/viewmodels/MomentPage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/maker/dp;->a(Lcom/twitter/model/moments/viewmodels/MomentPage;)V

    .line 82
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bv;->b:Lcom/twitter/android/moments/ui/maker/bt;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/maker/bt;->b(Lcom/twitter/android/moments/ui/maker/bt;)Lcom/twitter/android/moments/ui/maker/navigation/ao;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/android/moments/ui/maker/navigation/ao;->a()V

    .line 83
    return-void
.end method
