.class Lcom/twitter/android/moments/ui/guide/ab;
.super Lcom/twitter/app/common/list/ad;
.source "Twttr"


# instance fields
.field final synthetic a:Landroid/widget/AbsListView$OnScrollListener;

.field final synthetic b:Lcom/twitter/android/moments/ui/guide/aa;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/guide/aa;Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/twitter/android/moments/ui/guide/ab;->b:Lcom/twitter/android/moments/ui/guide/aa;

    iput-object p2, p0, Lcom/twitter/android/moments/ui/guide/ab;->a:Landroid/widget/AbsListView$OnScrollListener;

    invoke-direct {p0}, Lcom/twitter/app/common/list/ad;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/app/common/list/aa;I)V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/ab;->a:Landroid/widget/AbsListView$OnScrollListener;

    iget-object v1, p1, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    invoke-interface {v0, v1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 33
    return-void
.end method
