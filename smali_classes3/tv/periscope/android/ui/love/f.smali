.class Ltv/periscope/android/ui/love/f;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ltv/periscope/android/ui/love/e;


# direct methods
.method constructor <init>(Ltv/periscope/android/ui/love/e;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Ltv/periscope/android/ui/love/f;->a:Ltv/periscope/android/ui/love/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Ltv/periscope/android/ui/love/f;->a:Ltv/periscope/android/ui/love/e;

    iget-object v0, v0, Ltv/periscope/android/ui/love/e;->a:Ltv/periscope/android/ui/love/HeartView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ltv/periscope/android/ui/love/HeartView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 72
    iget-object v0, p0, Ltv/periscope/android/ui/love/f;->a:Ltv/periscope/android/ui/love/e;

    iget-object v0, v0, Ltv/periscope/android/ui/love/e;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Ltv/periscope/android/ui/love/f;->a:Ltv/periscope/android/ui/love/e;

    iget-object v1, v1, Ltv/periscope/android/ui/love/e;->a:Ltv/periscope/android/ui/love/HeartView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 73
    iget-object v0, p0, Ltv/periscope/android/ui/love/f;->a:Ltv/periscope/android/ui/love/e;

    iget-object v0, v0, Ltv/periscope/android/ui/love/e;->c:Ltv/periscope/android/ui/love/d;

    iget-object v0, v0, Ltv/periscope/android/ui/love/d;->a:Ltv/periscope/android/ui/love/c;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Ltv/periscope/android/ui/love/f;->a:Ltv/periscope/android/ui/love/e;

    iget-object v0, v0, Ltv/periscope/android/ui/love/e;->c:Ltv/periscope/android/ui/love/d;

    iget-object v0, v0, Ltv/periscope/android/ui/love/d;->a:Ltv/periscope/android/ui/love/c;

    iget-object v1, p0, Ltv/periscope/android/ui/love/f;->a:Ltv/periscope/android/ui/love/e;

    iget-object v1, v1, Ltv/periscope/android/ui/love/e;->a:Ltv/periscope/android/ui/love/HeartView;

    invoke-interface {v0, v1}, Ltv/periscope/android/ui/love/c;->b(Ltv/periscope/android/ui/love/HeartView;)V

    .line 76
    :cond_0
    return-void
.end method
