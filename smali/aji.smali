.class Laji;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final synthetic a:Lajg;


# direct methods
.method constructor <init>(Lajg;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Laji;->a:Lajg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Laji;->a:Lajg;

    invoke-static {v0}, Lajg;->b(Lajg;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 52
    iget-object v0, p0, Laji;->a:Lajg;

    invoke-static {v0}, Lajg;->b(Lajg;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Laji;->a:Lajg;

    invoke-static {v1}, Lajg;->c(Lajg;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 53
    const/4 v0, 0x1

    return v0
.end method
