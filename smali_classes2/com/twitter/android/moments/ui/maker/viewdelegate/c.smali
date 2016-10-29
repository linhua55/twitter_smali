.class public Lcom/twitter/android/moments/ui/maker/viewdelegate/c;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/app/common/inject/m;


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/support/v4/view/ViewPager;

.field private final c:Lcom/twitter/android/moments/ui/maker/viewdelegate/al;

.field private final d:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/twitter/android/moments/ui/maker/viewdelegate/al;Landroid/support/v4/view/ViewPager;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/c;->a:Landroid/view/View;

    .line 36
    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/c;->c:Lcom/twitter/android/moments/ui/maker/viewdelegate/al;

    .line 37
    iput-object p3, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/c;->b:Landroid/support/v4/view/ViewPager;

    .line 38
    iput-object p4, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/c;->d:Landroid/view/View;

    .line 39
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/twitter/android/moments/ui/maker/viewdelegate/c;
    .locals 5

    .prologue
    .line 26
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0401b4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 27
    new-instance v2, Lcom/twitter/android/moments/ui/maker/viewdelegate/al;

    const v0, 0x7f130364

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    invoke-direct {v2, v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/al;-><init>(Landroid/support/design/widget/TabLayout;)V

    .line 28
    const v0, 0x7f13048b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 29
    const v3, 0x7f130152

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 30
    new-instance v4, Lcom/twitter/android/moments/ui/maker/viewdelegate/c;

    invoke-direct {v4, v1, v2, v0, v3}, Lcom/twitter/android/moments/ui/maker/viewdelegate/c;-><init>(Landroid/view/View;Lcom/twitter/android/moments/ui/maker/viewdelegate/al;Landroid/support/v4/view/ViewPager;Landroid/view/View;)V

    return-object v4
.end method


# virtual methods
.method public a(Landroid/support/v4/view/PagerAdapter;)V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/c;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 49
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/c;->c:Lcom/twitter/android/moments/ui/maker/viewdelegate/al;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/c;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/al;->a(Landroid/support/v4/view/ViewPager;)V

    .line 50
    return-void
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/c;->d:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    return-void
.end method

.method public aK_()Landroid/view/View;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/c;->a:Landroid/view/View;

    return-object v0
.end method
