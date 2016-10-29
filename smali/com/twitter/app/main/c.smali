.class Lcom/twitter/app/main/c;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/app/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/twitter/app/main/MainActivity;)V
    .locals 0

    .prologue
    .line 446
    iput-object p1, p0, Lcom/twitter/app/main/c;->a:Lcom/twitter/app/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 449
    iget-object v0, p0, Lcom/twitter/app/main/c;->a:Lcom/twitter/app/main/MainActivity;

    iget-object v0, v0, Lcom/twitter/app/main/MainActivity;->m:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 450
    if-ne p3, v0, :cond_0

    .line 451
    iget-object v1, p0, Lcom/twitter/app/main/c;->a:Lcom/twitter/app/main/MainActivity;

    iget-object v2, p0, Lcom/twitter/app/main/c;->a:Lcom/twitter/app/main/MainActivity;

    iget-object v2, v2, Lcom/twitter/app/main/MainActivity;->n:Lcom/twitter/app/main/m;

    invoke-virtual {v2, v0}, Lcom/twitter/app/main/m;->a(I)Lcom/twitter/library/client/ax;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/twitter/app/main/MainActivity;->a(Lcom/twitter/app/main/MainActivity;Lcom/twitter/library/client/ax;)V

    .line 452
    iget-object v0, p0, Lcom/twitter/app/main/c;->a:Lcom/twitter/app/main/MainActivity;

    invoke-virtual {v0}, Lcom/twitter/app/main/MainActivity;->s()V

    .line 456
    :goto_0
    return-void

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/twitter/app/main/c;->a:Lcom/twitter/app/main/MainActivity;

    iget-object v0, v0, Lcom/twitter/app/main/MainActivity;->m:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0
.end method
