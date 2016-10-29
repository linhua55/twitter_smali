.class public Lcom/twitter/android/moments/ui/maker/viewdelegate/d;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/app/common/inject/m;


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/view/ViewGroup;

.field private final c:Landroid/view/View;

.field private final d:Lcom/twitter/android/moments/ui/maker/viewdelegate/am;

.field private final e:Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;

.field private final f:Landroid/view/View;

.field private g:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;Lcom/twitter/android/moments/ui/maker/viewdelegate/am;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/d;->a:Landroid/view/View;

    .line 41
    iput-object p3, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/d;->c:Landroid/view/View;

    .line 42
    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/d;->b:Landroid/view/ViewGroup;

    .line 43
    iput-object p4, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/d;->f:Landroid/view/View;

    .line 44
    iput-object p6, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/d;->d:Lcom/twitter/android/moments/ui/maker/viewdelegate/am;

    .line 45
    iput-object p5, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/d;->e:Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;

    .line 46
    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/twitter/android/moments/ui/maker/viewdelegate/d;
    .locals 7

    .prologue
    .line 26
    const v0, 0x7f0401bd

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 27
    const v0, 0x7f130491

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 28
    const v0, 0x7f13049b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 29
    const v0, 0x7f13049c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 30
    const v0, 0x7f130492

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 32
    invoke-static {v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;->b(Landroid/view/ViewGroup;)Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;

    move-result-object v5

    .line 33
    new-instance v0, Lcom/twitter/android/moments/ui/maker/viewdelegate/d;

    new-instance v6, Lcom/twitter/android/moments/ui/maker/viewdelegate/am;

    invoke-direct {v6}, Lcom/twitter/android/moments/ui/maker/viewdelegate/am;-><init>()V

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/moments/ui/maker/viewdelegate/d;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;Lcom/twitter/android/moments/ui/maker/viewdelegate/am;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/d;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-void
.end method

.method public a(Lcom/twitter/android/moments/ui/maker/dt;Z)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 60
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/d;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/d;->c()V

    .line 63
    :cond_0
    invoke-interface {p1}, Lcom/twitter/android/moments/ui/maker/dt;->a()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/d;->g:Landroid/view/View;

    .line 64
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/d;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/d;->g:Landroid/view/View;

    const/4 v2, 0x0

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 66
    if-eqz p2, :cond_1

    .line 67
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/d;->d:Lcom/twitter/android/moments/ui/maker/viewdelegate/am;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/d;->g:Landroid/view/View;

    const/16 v2, 0x12c

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/moments/ui/maker/viewdelegate/am;->a(Landroid/view/View;I)V

    .line 69
    :cond_1
    return-void
.end method

.method public aK_()Landroid/view/View;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/d;->a:Landroid/view/View;

    return-object v0
.end method

.method public b()Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/d;->e:Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;

    return-object v0
.end method

.method public b(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/d;->f:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/d;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/d;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/d;->g:Landroid/view/View;

    .line 74
    return-void
.end method

.method public c(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/d;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/d;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 86
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/d;->f:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 90
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/d;->c:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 94
    return-void
.end method
