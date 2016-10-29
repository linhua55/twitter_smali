.class Lcom/twitter/android/moments/data/aq;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/viewmodels/MomentModule;

.field final synthetic b:Lcom/twitter/android/moments/data/ap;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/data/ap;Lcom/twitter/android/moments/viewmodels/MomentModule;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/twitter/android/moments/data/aq;->b:Lcom/twitter/android/moments/data/ap;

    iput-object p2, p0, Lcom/twitter/android/moments/data/aq;->a:Lcom/twitter/android/moments/viewmodels/MomentModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 37
    iget-object v0, p0, Lcom/twitter/android/moments/data/aq;->b:Lcom/twitter/android/moments/data/ap;

    invoke-static {v0}, Lcom/twitter/android/moments/data/ap;->a(Lcom/twitter/android/moments/data/ap;)Lahl;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/moments/data/aq;->a:Lcom/twitter/android/moments/viewmodels/MomentModule;

    invoke-virtual {v1}, Lcom/twitter/android/moments/viewmodels/MomentModule;->b()Lcom/twitter/model/moments/ad;

    move-result-object v1

    iget-wide v2, v1, Lcom/twitter/model/moments/ad;->b:J

    invoke-virtual {v0, v2, v3}, Lahl;->e(J)V

    .line 38
    iget-object v0, p0, Lcom/twitter/android/moments/data/aq;->b:Lcom/twitter/android/moments/data/ap;

    invoke-static {v0}, Lcom/twitter/android/moments/data/ap;->b(Lcom/twitter/android/moments/data/ap;)Lcom/twitter/android/moments/ui/guide/q;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/moments/data/aq;->a:Lcom/twitter/android/moments/viewmodels/MomentModule;

    invoke-interface {v0, v1}, Lcom/twitter/android/moments/ui/guide/q;->a(Lcom/twitter/android/moments/viewmodels/MomentModule;)V

    .line 39
    return-void
.end method
