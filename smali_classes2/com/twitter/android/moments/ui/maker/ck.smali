.class Lcom/twitter/android/moments/ui/maker/ck;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/app/common/inject/m;


# instance fields
.field private final a:Landroid/view/ViewGroup;

.field private final b:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/LayoutInflater;)V
    .locals 2

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const v0, 0x7f0401c7

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/twitter/android/moments/ui/maker/ck;->a:Landroid/view/ViewGroup;

    .line 103
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/ck;->a:Landroid/view/ViewGroup;

    const v1, 0x7f1304e5

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/ui/maker/ck;->b:Landroid/view/View;

    .line 104
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/ck;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 105
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/ck;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/ck;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 109
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/ck;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 110
    return-void
.end method

.method public aK_()Landroid/view/View;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/ck;->a:Landroid/view/ViewGroup;

    return-object v0
.end method
