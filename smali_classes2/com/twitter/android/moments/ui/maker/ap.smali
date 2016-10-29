.class Lcom/twitter/android/moments/ui/maker/ap;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/maker/am;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/maker/am;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/ap;->a:Lcom/twitter/android/moments/ui/maker/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/ap;->a:Lcom/twitter/android/moments/ui/maker/am;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/maker/am;->a(Lcom/twitter/android/moments/ui/maker/am;)Lcom/twitter/android/moments/ui/maker/navigation/ao;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/moments/ui/maker/navigation/NavigationKey;->d:Lcom/twitter/android/moments/ui/maker/navigation/NavigationKey;

    sget-object v2, Lcom/twitter/android/moments/ui/maker/navigation/an;->a:Lcom/twitter/android/moments/ui/maker/navigation/an;

    invoke-interface {v0, v1, v2}, Lcom/twitter/android/moments/ui/maker/navigation/ao;->a(Lcom/twitter/android/moments/ui/maker/navigation/NavigationKey;Lcom/twitter/android/moments/ui/maker/navigation/an;)V

    .line 85
    return-void
.end method
