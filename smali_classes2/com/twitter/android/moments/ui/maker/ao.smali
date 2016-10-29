.class Lcom/twitter/android/moments/ui/maker/ao;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/model/moments/viewmodels/m;

.field final synthetic b:Lcom/twitter/android/moments/ui/maker/am;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/maker/am;Lcom/twitter/model/moments/viewmodels/m;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/ao;->b:Lcom/twitter/android/moments/ui/maker/am;

    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/ao;->a:Lcom/twitter/model/moments/viewmodels/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 75
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/ao;->b:Lcom/twitter/android/moments/ui/maker/am;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/maker/am;->a(Lcom/twitter/android/moments/ui/maker/am;)Lcom/twitter/android/moments/ui/maker/navigation/ao;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/moments/ui/maker/navigation/NavigationKey;->c:Lcom/twitter/android/moments/ui/maker/navigation/NavigationKey;

    new-instance v2, Lcom/twitter/android/moments/ui/maker/navigation/t;

    iget-object v3, p0, Lcom/twitter/android/moments/ui/maker/ao;->a:Lcom/twitter/model/moments/viewmodels/m;

    invoke-direct {v2, v3}, Lcom/twitter/android/moments/ui/maker/navigation/t;-><init>(Lcom/twitter/model/moments/viewmodels/m;)V

    invoke-interface {v0, v1, v2}, Lcom/twitter/android/moments/ui/maker/navigation/ao;->a(Lcom/twitter/android/moments/ui/maker/navigation/NavigationKey;Lcom/twitter/android/moments/ui/maker/navigation/an;)V

    .line 76
    return-void
.end method
