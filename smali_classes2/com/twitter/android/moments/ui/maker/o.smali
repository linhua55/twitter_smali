.class public Lcom/twitter/android/moments/ui/maker/o;
.super Landroid/support/v4/view/PagerAdapter;
.source "Twttr"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/twitter/util/object/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/object/e",
            "<",
            "Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;",
            "Landroid/view/ViewGroup;",
            "Lcom/twitter/android/moments/ui/maker/j;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/content/res/Resources;

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/twitter/android/moments/ui/maker/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Ljava/util/List;Lcom/twitter/util/object/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;",
            ">;",
            "Lcom/twitter/util/object/e",
            "<",
            "Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;",
            "Landroid/view/ViewGroup;",
            "Lcom/twitter/android/moments/ui/maker/j;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 23
    invoke-static {}, Lcom/twitter/util/collection/MutableSet;->a()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/ui/maker/o;->d:Ljava/util/Set;

    .line 27
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/o;->c:Landroid/content/res/Resources;

    .line 28
    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/o;->a:Ljava/util/List;

    .line 29
    iput-object p3, p0, Lcom/twitter/android/moments/ui/maker/o;->b:Lcom/twitter/util/object/e;

    .line 30
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/o;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/ui/maker/j;

    .line 72
    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/j;->c()V

    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/o;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 75
    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 56
    instance-of v0, p3, Lcom/twitter/android/moments/ui/maker/j;

    invoke-static {v0}, Lcom/twitter/util/j;->b(Z)Z

    .line 57
    invoke-static {p3}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/ui/maker/j;

    .line 58
    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/j;->aK_()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 59
    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/o;->d:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 60
    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/j;->c()V

    .line 61
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/o;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 40
    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/o;->c:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/o;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/AddTweetsCategory;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/o;->b:Lcom/twitter/util/object/e;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/o;->a:Ljava/util/List;

    .line 47
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/twitter/util/object/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/ui/maker/j;

    .line 48
    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/j;->b()V

    .line 49
    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/j;->aK_()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 50
    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/o;->d:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 65
    instance-of v0, p2, Lcom/twitter/android/moments/ui/maker/j;

    invoke-static {v0}, Lcom/twitter/util/j;->b(Z)Z

    .line 66
    invoke-static {p2}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/ui/maker/j;

    .line 67
    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/j;->aK_()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
