.class Lcom/twitter/android/moments/ui/maker/al;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/model/moments/viewmodels/m;

.field final synthetic b:Lcom/twitter/android/moments/ui/maker/aj;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/maker/aj;Lcom/twitter/model/moments/viewmodels/m;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/al;->b:Lcom/twitter/android/moments/ui/maker/aj;

    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/al;->a:Lcom/twitter/model/moments/viewmodels/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 85
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/al;->b:Lcom/twitter/android/moments/ui/maker/aj;

    iget-object v0, v0, Lcom/twitter/android/moments/ui/maker/aj;->a:Lcom/twitter/android/moments/ui/maker/navigation/ao;

    sget-object v1, Lcom/twitter/android/moments/ui/maker/navigation/NavigationKey;->c:Lcom/twitter/android/moments/ui/maker/navigation/NavigationKey;

    new-instance v2, Lcom/twitter/android/moments/ui/maker/navigation/t;

    iget-object v3, p0, Lcom/twitter/android/moments/ui/maker/al;->a:Lcom/twitter/model/moments/viewmodels/m;

    invoke-direct {v2, v3}, Lcom/twitter/android/moments/ui/maker/navigation/t;-><init>(Lcom/twitter/model/moments/viewmodels/m;)V

    invoke-interface {v0, v1, v2}, Lcom/twitter/android/moments/ui/maker/navigation/ao;->a(Lcom/twitter/android/moments/ui/maker/navigation/NavigationKey;Lcom/twitter/android/moments/ui/maker/navigation/an;)V

    .line 86
    return-void
.end method
