.class public Lcom/twitter/android/moments/ui/fullscreen/dl;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/twitter/model/moments/viewmodels/p;

.field private final b:Lcom/twitter/android/moments/ui/maker/cn;

.field private c:Lcom/twitter/model/moments/viewmodels/MomentPage;


# direct methods
.method public constructor <init>(Lajw;Lcom/twitter/model/moments/viewmodels/p;Lcom/twitter/android/moments/ui/maker/cd;Lcom/twitter/android/moments/ui/maker/cn;Lcom/twitter/android/moments/ui/fullscreen/gg;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    .line 37
    iput-object p2, p0, Lcom/twitter/android/moments/ui/fullscreen/dl;->a:Lcom/twitter/model/moments/viewmodels/p;

    .line 38
    iput-object p4, p0, Lcom/twitter/android/moments/ui/fullscreen/dl;->b:Lcom/twitter/android/moments/ui/maker/cn;

    .line 39
    invoke-interface {p5}, Lcom/twitter/android/moments/ui/fullscreen/gg;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p1}, Lajw;->c()V

    .line 41
    invoke-virtual {p1}, Lajw;->a()V

    .line 48
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-virtual {p3}, Lcom/twitter/android/moments/ui/maker/cd;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    invoke-virtual {p1}, Lajw;->b()V

    .line 44
    invoke-virtual {p1, p0}, Lajw;->b(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {p1}, Lajw;->c()V

    goto :goto_0
.end method

.method public static a(Lajw;Lcom/twitter/model/moments/viewmodels/p;Landroid/app/Activity;Lcom/twitter/android/moments/ui/fullscreen/gg;)Lcom/twitter/android/moments/ui/fullscreen/dl;
    .locals 6

    .prologue
    .line 27
    new-instance v0, Lcom/twitter/android/moments/ui/fullscreen/dl;

    .line 28
    invoke-static {p2}, Lcom/twitter/android/moments/ui/maker/cd;->a(Landroid/content/Context;)Lcom/twitter/android/moments/ui/maker/cd;

    move-result-object v3

    new-instance v4, Lcom/twitter/android/moments/ui/maker/cn;

    invoke-direct {v4, p2}, Lcom/twitter/android/moments/ui/maker/cn;-><init>(Landroid/app/Activity;)V

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/moments/ui/fullscreen/dl;-><init>(Lajw;Lcom/twitter/model/moments/viewmodels/p;Lcom/twitter/android/moments/ui/maker/cd;Lcom/twitter/android/moments/ui/maker/cn;Lcom/twitter/android/moments/ui/fullscreen/gg;)V

    .line 27
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 58
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/dl;->c:Lcom/twitter/model/moments/viewmodels/MomentPage;

    if-eqz v0, :cond_0

    .line 59
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/dl;->b:Lcom/twitter/android/moments/ui/maker/cn;

    new-instance v2, Lcom/twitter/android/moments/ui/maker/cm;

    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/dl;->c:Lcom/twitter/model/moments/viewmodels/MomentPage;

    .line 60
    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/MomentPage;->g()Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/dl;->c:Lcom/twitter/model/moments/viewmodels/MomentPage;

    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/MomentPage;->i()Lcom/twitter/model/moments/ak;

    move-result-object v0

    invoke-direct {v2, v4, v5, v0}, Lcom/twitter/android/moments/ui/maker/cm;-><init>(JLcom/twitter/model/moments/ak;)V

    .line 59
    invoke-virtual {v1, v2}, Lcom/twitter/android/moments/ui/maker/cn;->b(Lauc;)V

    .line 62
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/dl;->a:Lcom/twitter/model/moments/viewmodels/p;

    invoke-interface {v0, p1}, Lcom/twitter/model/moments/viewmodels/p;->c(I)Lcom/twitter/model/moments/viewmodels/MomentPage;

    move-result-object v0

    .line 53
    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/dl;->c:Lcom/twitter/model/moments/viewmodels/MomentPage;

    .line 54
    return-void
.end method
