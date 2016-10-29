.class public Lcom/twitter/android/moments/ui/maker/viewdelegate/t;
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


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;Lcom/twitter/android/moments/ui/maker/viewdelegate/am;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/t;->a:Landroid/view/View;

    .line 43
    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/t;->b:Landroid/view/ViewGroup;

    .line 44
    iput-object p3, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/t;->c:Landroid/view/View;

    .line 45
    iput-object p5, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/t;->d:Lcom/twitter/android/moments/ui/maker/viewdelegate/am;

    .line 46
    iput-object p4, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/t;->e:Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;

    .line 47
    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/twitter/android/moments/ui/maker/viewdelegate/t;
    .locals 6

    .prologue
    .line 30
    const v0, 0x7f0401c6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 31
    const v0, 0x7f130491

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 32
    const v0, 0x7f1304a7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 33
    const v0, 0x7f130492

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 35
    invoke-static {v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;->a(Landroid/view/ViewGroup;)Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;

    move-result-object v4

    .line 36
    new-instance v0, Lcom/twitter/android/moments/ui/maker/viewdelegate/t;

    new-instance v5, Lcom/twitter/android/moments/ui/maker/viewdelegate/am;

    invoke-direct {v5}, Lcom/twitter/android/moments/ui/maker/viewdelegate/am;-><init>()V

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/moments/ui/maker/viewdelegate/t;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;Lcom/twitter/android/moments/ui/maker/viewdelegate/am;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/t;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    return-void
.end method

.method public a(Lcom/twitter/android/moments/ui/maker/dt;Z)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 67
    invoke-interface {p1}, Lcom/twitter/android/moments/ui/maker/dt;->a()Landroid/view/View;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/t;->b:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 70
    if-eqz p2, :cond_0

    .line 71
    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/t;->d:Lcom/twitter/android/moments/ui/maker/viewdelegate/am;

    const/16 v2, 0x12c

    invoke-virtual {v1, v0, v2}, Lcom/twitter/android/moments/ui/maker/viewdelegate/am;->a(Landroid/view/View;I)V

    .line 73
    :cond_0
    return-void
.end method

.method public aK_()Landroid/view/View;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/t;->a:Landroid/view/View;

    return-object v0
.end method

.method public b()Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/t;->e:Lcom/twitter/android/moments/ui/maker/viewdelegate/ab;

    return-object v0
.end method

.method public b(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/t;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/t;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 80
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/t;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 88
    return-void
.end method
