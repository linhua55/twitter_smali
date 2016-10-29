.class public Lcom/twitter/android/moments/ui/maker/viewdelegate/u;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/u;->a:Landroid/widget/TextView;

    .line 17
    return-void
.end method

.method public static a(Landroid/view/View;)Lcom/twitter/android/moments/ui/maker/viewdelegate/u;
    .locals 2

    .prologue
    .line 28
    const v0, 0x7f1304a6

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 29
    new-instance v1, Lcom/twitter/android/moments/ui/maker/viewdelegate/u;

    invoke-direct {v1, v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/u;-><init>(Landroid/widget/TextView;)V

    return-object v1
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/u;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 21
    return-void
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/u;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    return-void
.end method
