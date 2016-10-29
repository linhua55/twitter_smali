.class public Lcom/twitter/android/moments/ui/fullscreen/gv;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lajw;

.field private final b:Lcom/twitter/model/moments/viewmodels/p;

.field private final c:Lcom/twitter/android/moments/ui/fullscreen/dt;


# direct methods
.method public constructor <init>(Lajw;Lcom/twitter/model/moments/viewmodels/p;Lcom/twitter/android/moments/ui/fullscreen/dt;Lcom/twitter/android/moments/ui/fullscreen/gg;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/gv;->a:Lajw;

    .line 22
    iput-object p2, p0, Lcom/twitter/android/moments/ui/fullscreen/gv;->b:Lcom/twitter/model/moments/viewmodels/p;

    .line 23
    iput-object p3, p0, Lcom/twitter/android/moments/ui/fullscreen/gv;->c:Lcom/twitter/android/moments/ui/fullscreen/dt;

    .line 24
    invoke-interface {p4}, Lcom/twitter/android/moments/ui/fullscreen/gg;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/gv;->a:Lajw;

    invoke-virtual {v0}, Lajw;->d()V

    .line 27
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/gv;->c:Lcom/twitter/android/moments/ui/fullscreen/dt;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/dt;->c()V

    .line 40
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/gv;->b:Lcom/twitter/model/moments/viewmodels/p;

    invoke-interface {v0, p1}, Lcom/twitter/model/moments/viewmodels/p;->c(I)Lcom/twitter/model/moments/viewmodels/MomentPage;

    move-result-object v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/gv;->a:Lajw;

    invoke-virtual {v0, p0}, Lajw;->a(Landroid/view/View$OnClickListener;)V

    .line 35
    :cond_0
    return-void
.end method
