.class Lami;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/model/moments/viewmodels/MomentPage;

.field final synthetic b:Lamh;


# direct methods
.method constructor <init>(Lamh;Lcom/twitter/model/moments/viewmodels/MomentPage;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lami;->b:Lamh;

    iput-object p2, p0, Lami;->a:Lcom/twitter/model/moments/viewmodels/MomentPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lami;->b:Lamh;

    invoke-static {v0}, Lamh;->a(Lamh;)Lcom/twitter/android/moments/ui/maker/aq;

    move-result-object v0

    iget-object v1, p0, Lami;->a:Lcom/twitter/model/moments/viewmodels/MomentPage;

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/maker/aq;->a(Lcom/twitter/model/moments/viewmodels/MomentPage;)V

    .line 43
    iget-object v0, p0, Lami;->b:Lamh;

    invoke-static {v0}, Lamh;->b(Lamh;)Lcom/twitter/android/moments/ui/maker/navigation/ao;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/android/moments/ui/maker/navigation/ao;->a()V

    .line 44
    return-void
.end method
