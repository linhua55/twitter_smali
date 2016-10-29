.class Ltv/periscope/android/ui/love/k;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ltv/periscope/android/ui/love/j;


# direct methods
.method constructor <init>(Ltv/periscope/android/ui/love/j;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Ltv/periscope/android/ui/love/k;->a:Ltv/periscope/android/ui/love/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Ltv/periscope/android/ui/love/k;->a:Ltv/periscope/android/ui/love/j;

    iget-object v0, v0, Ltv/periscope/android/ui/love/j;->a:Ltv/periscope/android/ui/love/HeartView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ltv/periscope/android/ui/love/HeartView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 83
    iget-object v0, p0, Ltv/periscope/android/ui/love/k;->a:Ltv/periscope/android/ui/love/j;

    iget-object v0, v0, Ltv/periscope/android/ui/love/j;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Ltv/periscope/android/ui/love/k;->a:Ltv/periscope/android/ui/love/j;

    iget-object v1, v1, Ltv/periscope/android/ui/love/j;->a:Ltv/periscope/android/ui/love/HeartView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 84
    iget-object v0, p0, Ltv/periscope/android/ui/love/k;->a:Ltv/periscope/android/ui/love/j;

    iget-object v0, v0, Ltv/periscope/android/ui/love/j;->c:Ltv/periscope/android/ui/love/h;

    iget-object v0, v0, Ltv/periscope/android/ui/love/h;->a:Ltv/periscope/android/ui/love/c;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Ltv/periscope/android/ui/love/k;->a:Ltv/periscope/android/ui/love/j;

    iget-object v0, v0, Ltv/periscope/android/ui/love/j;->c:Ltv/periscope/android/ui/love/h;

    iget-object v0, v0, Ltv/periscope/android/ui/love/h;->a:Ltv/periscope/android/ui/love/c;

    iget-object v1, p0, Ltv/periscope/android/ui/love/k;->a:Ltv/periscope/android/ui/love/j;

    iget-object v1, v1, Ltv/periscope/android/ui/love/j;->a:Ltv/periscope/android/ui/love/HeartView;

    invoke-interface {v0, v1}, Ltv/periscope/android/ui/love/c;->b(Ltv/periscope/android/ui/love/HeartView;)V

    .line 87
    :cond_0
    return-void
.end method
