.class Lcom/twitter/android/moments/ui/maker/an;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/model/moments/viewmodels/MomentPage;

.field final synthetic b:Lcom/twitter/android/moments/ui/maker/am;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/maker/am;Lcom/twitter/model/moments/viewmodels/MomentPage;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/an;->b:Lcom/twitter/android/moments/ui/maker/am;

    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/an;->a:Lcom/twitter/model/moments/viewmodels/MomentPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 66
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/an;->b:Lcom/twitter/android/moments/ui/maker/am;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/maker/am;->a(Lcom/twitter/android/moments/ui/maker/am;)Lcom/twitter/android/moments/ui/maker/navigation/ao;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/moments/ui/maker/navigation/NavigationKey;->e:Lcom/twitter/android/moments/ui/maker/navigation/NavigationKey;

    new-instance v2, Lcom/twitter/android/moments/ui/maker/navigation/p;

    iget-object v3, p0, Lcom/twitter/android/moments/ui/maker/an;->a:Lcom/twitter/model/moments/viewmodels/MomentPage;

    invoke-direct {v2, v3}, Lcom/twitter/android/moments/ui/maker/navigation/p;-><init>(Lcom/twitter/model/moments/viewmodels/MomentPage;)V

    invoke-interface {v0, v1, v2}, Lcom/twitter/android/moments/ui/maker/navigation/ao;->a(Lcom/twitter/android/moments/ui/maker/navigation/NavigationKey;Lcom/twitter/android/moments/ui/maker/navigation/an;)V

    .line 67
    return-void
.end method
