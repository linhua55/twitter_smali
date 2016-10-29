.class Lcom/twitter/android/mc;
.super Lcom/twitter/internal/android/widget/i;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/widget/LoggedOutBar;

.field final synthetic b:Lcom/twitter/android/ProfileActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/ProfileActivity;Lcom/twitter/android/widget/LoggedOutBar;)V
    .locals 0

    .prologue
    .line 658
    iput-object p1, p0, Lcom/twitter/android/mc;->b:Lcom/twitter/android/ProfileActivity;

    iput-object p2, p0, Lcom/twitter/android/mc;->a:Lcom/twitter/android/widget/LoggedOutBar;

    invoke-direct {p0}, Lcom/twitter/internal/android/widget/i;-><init>()V

    return-void
.end method

.method private g()V
    .locals 4

    .prologue
    .line 679
    iget-object v0, p0, Lcom/twitter/android/mc;->b:Lcom/twitter/android/ProfileActivity;

    invoke-static {v0}, Lcom/twitter/android/ProfileActivity;->b(Lcom/twitter/android/ProfileActivity;)Lcom/twitter/android/composer/ComposerDockLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/composer/ComposerDockLayout;->getBottomDockView()Landroid/view/View;

    move-result-object v0

    .line 680
    if-eqz v0, :cond_0

    .line 681
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    .line 682
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 681
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/twitter/android/mc;->b(IIII)V

    .line 684
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 661
    invoke-direct {p0}, Lcom/twitter/android/mc;->g()V

    .line 662
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 666
    invoke-direct {p0}, Lcom/twitter/android/mc;->g()V

    .line 667
    return-void
.end method

.method public b(IIII)V
    .locals 2

    .prologue
    .line 673
    iget-object v0, p0, Lcom/twitter/android/mc;->b:Lcom/twitter/android/ProfileActivity;

    invoke-static {v0}, Lcom/twitter/android/ProfileActivity;->a(Lcom/twitter/android/ProfileActivity;)Lcom/twitter/android/composer/ComposerDockLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/composer/ComposerDockLayout;->getHeight()I

    move-result v0

    sub-int v0, p4, v0

    .line 674
    iget-object v1, p0, Lcom/twitter/android/mc;->a:Lcom/twitter/android/widget/LoggedOutBar;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/twitter/android/widget/LoggedOutBar;->setTranslationY(F)V

    .line 675
    iget-object v0, p0, Lcom/twitter/android/mc;->a:Lcom/twitter/android/widget/LoggedOutBar;

    invoke-virtual {v0}, Lcom/twitter/android/widget/LoggedOutBar;->bringToFront()V

    .line 676
    return-void
.end method
