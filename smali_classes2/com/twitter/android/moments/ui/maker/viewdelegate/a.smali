.class public Lcom/twitter/android/moments/ui/maker/viewdelegate/a;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/app/common/inject/m;


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/view/ViewGroup;

.field private final c:Landroid/view/View;

.field private final d:Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/a;->a:Landroid/view/View;

    .line 39
    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/a;->b:Landroid/view/ViewGroup;

    .line 40
    iput-object p3, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/a;->c:Landroid/view/View;

    .line 41
    iput-object p4, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/a;->d:Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;

    .line 42
    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/twitter/android/moments/ui/maker/viewdelegate/a;
    .locals 5

    .prologue
    .line 25
    const v0, 0x7f0401b8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 26
    const v0, 0x7f130491

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 27
    const v1, 0x7f130493

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 28
    const v1, 0x7f130492

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 30
    invoke-static {v1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;->b(Landroid/view/ViewGroup;)Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;

    move-result-object v1

    .line 31
    new-instance v4, Lcom/twitter/android/moments/ui/maker/viewdelegate/a;

    invoke-direct {v4, v2, v0, v3, v1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/a;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;)V

    return-object v4
.end method


# virtual methods
.method public a(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    return-void
.end method

.method public a(Lcom/twitter/android/moments/ui/maker/dt;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 56
    invoke-interface {p1}, Lcom/twitter/android/moments/ui/maker/dt;->a()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/a;->e:Landroid/view/View;

    .line 57
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/a;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/a;->e:Landroid/view/View;

    const/4 v2, 0x0

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 59
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 70
    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/a;->c:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 71
    return-void

    .line 70
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public aK_()Landroid/view/View;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/a;->a:Landroid/view/View;

    return-object v0
.end method

.method public b()Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/a;->d:Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;

    return-object v0
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 74
    if-eqz p1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/a;->c:Landroid/view/View;

    invoke-static {v0}, Lcom/twitter/util/d;->c(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/a;->c:Landroid/view/View;

    invoke-static {v0}, Lcom/twitter/util/d;->a(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/a;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/a;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 63
    return-void
.end method
