.class Lcom/twitter/android/moments/ui/fullscreen/bd;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Lcom/twitter/android/moments/ui/fullscreen/fb;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/android/moments/ui/fullscreen/ax;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/support/v4/view/ViewPager;

.field private final c:Lcom/twitter/android/moments/ui/fullscreen/fc;

.field private final d:Lcom/twitter/util/object/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/object/c",
            "<",
            "Lcom/twitter/model/moments/viewmodels/a;",
            "Lcom/twitter/android/moments/ui/fullscreen/ax;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/support/v4/view/ViewPager;Lcom/twitter/android/moments/ui/fullscreen/fc;Lcom/twitter/util/object/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/view/ViewPager;",
            "Lcom/twitter/android/moments/ui/fullscreen/fc;",
            "Lcom/twitter/util/object/c",
            "<",
            "Lcom/twitter/model/moments/viewmodels/a;",
            "Lcom/twitter/android/moments/ui/fullscreen/ax;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/bd;->a:Ljava/util/List;

    .line 28
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/bd;->b:Landroid/support/v4/view/ViewPager;

    .line 29
    iput-object p2, p0, Lcom/twitter/android/moments/ui/fullscreen/bd;->c:Lcom/twitter/android/moments/ui/fullscreen/fc;

    .line 30
    iput-object p3, p0, Lcom/twitter/android/moments/ui/fullscreen/bd;->d:Lcom/twitter/util/object/c;

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/bd;->e:Landroid/os/Handler;

    .line 32
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/bd;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/fullscreen/bd;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/bd;->b:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/android/moments/ui/fullscreen/bd;)Lcom/twitter/android/moments/ui/fullscreen/fc;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/bd;->c:Lcom/twitter/android/moments/ui/fullscreen/fc;

    return-object v0
.end method

.method static synthetic c(Lcom/twitter/android/moments/ui/fullscreen/bd;)Ljava/util/List;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/bd;->a:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/twitter/android/moments/ui/fullscreen/ax;)V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/bd;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    return-void
.end method

.method public a(Lcom/twitter/model/moments/viewmodels/a;)V
    .locals 3

    .prologue
    .line 52
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/bd;->c:Lcom/twitter/android/moments/ui/fullscreen/fc;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/bd;->b:Landroid/support/v4/view/ViewPager;

    .line 53
    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    .line 52
    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/fullscreen/fc;->a(I)I

    move-result v0

    .line 54
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/bd;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 55
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/bd;->a:Ljava/util/List;

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/twitter/android/moments/ui/fullscreen/bd;->a:Ljava/util/List;

    .line 56
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 55
    invoke-static {v0}, Lcom/twitter/util/collection/r;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 57
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/ui/fullscreen/ax;

    .line 58
    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/ax;->b()V

    goto :goto_0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/bd;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/bd;->d:Lcom/twitter/util/object/c;

    invoke-interface {v0, p1}, Lcom/twitter/util/object/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/ui/fullscreen/ax;

    .line 63
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/bd;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/bd;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    const/4 v0, 0x0

    .line 47
    :goto_0
    return v0

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/bd;->c:Lcom/twitter/android/moments/ui/fullscreen/fc;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/bd;->b:Landroid/support/v4/view/ViewPager;

    .line 46
    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/fullscreen/fc;->a(I)I

    move-result v0

    .line 47
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/bd;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/ui/fullscreen/ax;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/ax;->a()Z

    move-result v0

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 68
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/bd;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 69
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/bd;->c:Lcom/twitter/android/moments/ui/fullscreen/fc;

    invoke-virtual {v1, v0}, Lcom/twitter/android/moments/ui/fullscreen/fc;->a(I)I

    move-result v1

    .line 70
    iget-object v2, p0, Lcom/twitter/android/moments/ui/fullscreen/bd;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 71
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/bd;->b:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/twitter/android/moments/ui/fullscreen/bd;->c:Lcom/twitter/android/moments/ui/fullscreen/fc;

    invoke-virtual {v2, v0}, Lcom/twitter/android/moments/ui/fullscreen/fc;->b(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 73
    :cond_0
    return-void
.end method

.method public c()Lcom/twitter/android/moments/ui/fullscreen/ax;
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/bd;->c:Lcom/twitter/android/moments/ui/fullscreen/fc;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/fc;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/bd;->c:Lcom/twitter/android/moments/ui/fullscreen/fc;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/bd;->b:Landroid/support/v4/view/ViewPager;

    .line 114
    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/fullscreen/fc;->a(I)I

    move-result v0

    .line 115
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/bd;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/ui/fullscreen/ax;

    .line 117
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Lcom/twitter/model/moments/viewmodels/a;
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/fullscreen/bd;->c()Lcom/twitter/android/moments/ui/fullscreen/ax;

    move-result-object v0

    .line 126
    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/ax;->c()Lcom/twitter/model/moments/viewmodels/a;

    move-result-object v0

    .line 129
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/bd;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 137
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/bd;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/ui/fullscreen/ax;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/ax;->b()V

    .line 136
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 139
    :cond_0
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 2

    .prologue
    .line 87
    if-nez p1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/bd;->c:Lcom/twitter/android/moments/ui/fullscreen/fc;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/bd;->b:Landroid/support/v4/view/ViewPager;

    .line 89
    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    .line 88
    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/fullscreen/fc;->a(I)I

    move-result v0

    .line 90
    if-lez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/bd;->e:Landroid/os/Handler;

    new-instance v1, Lcom/twitter/android/moments/ui/fullscreen/be;

    invoke-direct {v1, p0}, Lcom/twitter/android/moments/ui/fullscreen/be;-><init>(Lcom/twitter/android/moments/ui/fullscreen/bd;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 105
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    .prologue
    .line 81
    return-void
.end method
