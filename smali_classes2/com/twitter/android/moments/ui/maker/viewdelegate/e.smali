.class public Lcom/twitter/android/moments/ui/maker/viewdelegate/e;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/view/View;

.field private final d:Landroid/view/View;

.field private final e:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/e;->a:Landroid/widget/TextView;

    .line 32
    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/e;->b:Landroid/widget/TextView;

    .line 33
    iput-object p3, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/e;->c:Landroid/view/View;

    .line 34
    iput-object p4, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/e;->d:Landroid/view/View;

    .line 35
    iput-object p5, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/e;->e:Landroid/view/View;

    .line 36
    return-void
.end method

.method public static a(Landroid/view/View;)Lcom/twitter/android/moments/ui/maker/viewdelegate/e;
    .locals 6

    .prologue
    .line 20
    const v0, 0x7f130497

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 21
    const v0, 0x7f13049a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 22
    const v0, 0x7f130496

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 23
    const v0, 0x7f130498

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 24
    const v0, 0x7f130499

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 25
    new-instance v0, Lcom/twitter/android/moments/ui/maker/viewdelegate/e;

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/moments/ui/maker/viewdelegate/e;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/e;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 40
    return-void
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/e;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/e;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 44
    return-void
.end method

.method public b(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/e;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    return-void
.end method

.method public c(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/e;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-void
.end method

.method public d(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/e;->d:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    return-void
.end method

.method public e(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/e;->e:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    return-void
.end method
