.class public Lcom/twitter/android/moments/ui/maker/viewdelegate/k;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/app/common/inject/m;


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/k;->a:Landroid/view/View;

    .line 26
    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/k;->b:Landroid/view/View;

    .line 27
    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/twitter/android/moments/ui/maker/viewdelegate/k;
    .locals 3

    .prologue
    .line 19
    const v0, 0x7f0401c3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 20
    const v1, 0x7f1304a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 21
    new-instance v2, Lcom/twitter/android/moments/ui/maker/viewdelegate/k;

    invoke-direct {v2, v0, v1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/k;-><init>(Landroid/view/View;Landroid/view/View;)V

    return-object v2
.end method


# virtual methods
.method public a(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/k;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    return-void
.end method

.method public aK_()Landroid/view/View;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/k;->a:Landroid/view/View;

    return-object v0
.end method
