.class Lcom/twitter/android/ok;
.super Lcom/twitter/library/widget/af;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/library/widget/SlidingPanel;

.field private final b:Lcom/twitter/android/ol;


# direct methods
.method constructor <init>(Lcom/twitter/library/widget/SlidingPanel;Lcom/twitter/android/ol;)V
    .locals 0

    .prologue
    .line 1575
    invoke-direct {p0}, Lcom/twitter/library/widget/af;-><init>()V

    .line 1576
    iput-object p1, p0, Lcom/twitter/android/ok;->a:Lcom/twitter/library/widget/SlidingPanel;

    .line 1577
    iput-object p2, p0, Lcom/twitter/android/ok;->b:Lcom/twitter/android/ol;

    .line 1578
    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1582
    iget-object v0, p0, Lcom/twitter/android/ok;->b:Lcom/twitter/android/ol;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/android/ol;->a(Z)V

    .line 1583
    iget-object v0, p0, Lcom/twitter/android/ok;->a:Lcom/twitter/library/widget/SlidingPanel;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/SlidingPanel;->a(I)V

    .line 1584
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1588
    iget-object v0, p0, Lcom/twitter/android/ok;->b:Lcom/twitter/android/ol;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/ol;->a(Z)V

    .line 1589
    return-void
.end method
