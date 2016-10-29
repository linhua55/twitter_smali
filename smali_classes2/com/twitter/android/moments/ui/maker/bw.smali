.class Lcom/twitter/android/moments/ui/maker/bw;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/model/moments/viewmodels/MomentPage;

.field final synthetic b:Lcom/twitter/android/moments/ui/maker/bt;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/maker/bt;Lcom/twitter/model/moments/viewmodels/MomentPage;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/bw;->b:Lcom/twitter/android/moments/ui/maker/bt;

    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/bw;->a:Lcom/twitter/model/moments/viewmodels/MomentPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 91
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bw;->b:Lcom/twitter/android/moments/ui/maker/bt;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/maker/bt;->c(Lcom/twitter/android/moments/ui/maker/bt;)Lcom/twitter/android/moments/data/maker/a;

    move-result-object v1

    new-instance v2, Lcom/twitter/model/moments/maker/j;

    invoke-direct {v2}, Lcom/twitter/model/moments/maker/j;-><init>()V

    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bw;->a:Lcom/twitter/model/moments/viewmodels/MomentPage;

    check-cast v0, Lcom/twitter/model/moments/viewmodels/y;

    .line 93
    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/y;->s()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/twitter/model/moments/maker/j;->a(J)Lcom/twitter/model/moments/maker/ap;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/maker/j;

    .line 94
    invoke-virtual {v0}, Lcom/twitter/model/moments/maker/j;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/maker/w;

    .line 92
    invoke-virtual {v1, v0}, Lcom/twitter/android/moments/data/maker/a;->a(Lcom/twitter/model/moments/maker/w;)V

    .line 95
    return-void
.end method
