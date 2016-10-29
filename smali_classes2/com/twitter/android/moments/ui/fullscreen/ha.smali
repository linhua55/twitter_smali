.class Lcom/twitter/android/moments/ui/fullscreen/ha;
.super Lcom/twitter/android/moments/ui/fullscreen/cu;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/twitter/model/moments/viewmodels/i;",
        ":",
        "Lcom/twitter/model/moments/viewmodels/ai;",
        ">",
        "Lcom/twitter/android/moments/ui/fullscreen/cu;"
    }
.end annotation


# static fields
.field private static final a:Landroid/view/animation/Interpolator;


# instance fields
.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    invoke-static {}, Lcwp;->b()Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/moments/ui/fullscreen/ha;->a:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>(Lcom/twitter/android/moments/ui/fullscreen/bf;Lcom/twitter/model/moments/viewmodels/i;Landroid/view/ViewGroup;Landroid/widget/ProgressBar;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/android/moments/ui/fullscreen/bf;",
            "TT;",
            "Landroid/view/ViewGroup;",
            "Landroid/widget/ProgressBar;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 24
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/moments/ui/fullscreen/cu;-><init>(Lcom/twitter/android/moments/ui/fullscreen/bf;Lcom/twitter/model/moments/viewmodels/i;Landroid/view/ViewGroup;Landroid/widget/ProgressBar;Lcom/twitter/moments/core/ui/widget/sectionpager/d;)V

    .line 26
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    check-cast p2, Lcom/twitter/model/moments/viewmodels/ai;

    invoke-static {v0, p2}, Lcom/twitter/android/moments/ui/fullscreen/ds;->a(Landroid/content/res/Resources;Lcom/twitter/model/moments/viewmodels/ai;)Lcom/twitter/model/moments/bd;

    move-result-object v0

    iget v0, v0, Lcom/twitter/model/moments/bd;->b:I

    .line 25
    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 27
    iput p5, p0, Lcom/twitter/android/moments/ui/fullscreen/ha;->b:I

    .line 28
    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/twitter/android/moments/ui/fullscreen/cu;->a(Landroid/view/View;)V

    .line 33
    iget v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ha;->b:I

    const v1, 0x3f866666    # 1.05f

    sget-object v2, Lcom/twitter/android/moments/ui/fullscreen/ha;->a:Landroid/view/animation/Interpolator;

    invoke-static {p1, v0, v1, v2}, Lcom/twitter/util/d;->a(Landroid/view/View;IFLandroid/view/animation/Interpolator;)V

    .line 34
    return-void
.end method
