.class public Lakh;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lalk;
.implements Lcom/twitter/android/moments/ui/fullscreen/gn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lalk",
        "<",
        "Lcom/twitter/model/moments/viewmodels/y;",
        ">;",
        "Lcom/twitter/android/moments/ui/fullscreen/gn;"
    }
.end annotation


# instance fields
.field private final b:Lcom/twitter/android/moments/ui/fullscreen/cv;

.field private final c:Lakf;

.field private final d:Lcom/twitter/android/moments/ui/fullscreen/ew;

.field private final e:Landroid/content/res/Resources;

.field private final f:Lcin;

.field private final g:Lcom/twitter/android/moments/ui/fullscreen/gl;


# direct methods
.method public constructor <init>(Lakf;Lcom/twitter/android/moments/ui/fullscreen/ew;Lcin;Lcom/twitter/android/moments/ui/fullscreen/gl;Landroid/content/res/Resources;Lcom/twitter/android/moments/ui/fullscreen/cv;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lakh;->c:Lakf;

    .line 52
    iput-object p2, p0, Lakh;->d:Lcom/twitter/android/moments/ui/fullscreen/ew;

    .line 53
    iput-object p5, p0, Lakh;->e:Landroid/content/res/Resources;

    .line 54
    iput-object p6, p0, Lakh;->b:Lcom/twitter/android/moments/ui/fullscreen/cv;

    .line 55
    iput-object p3, p0, Lakh;->f:Lcin;

    .line 56
    iput-object p4, p0, Lakh;->g:Lcom/twitter/android/moments/ui/fullscreen/gl;

    .line 57
    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/view/LayoutInflater;Landroid/content/res/Resources;Lcom/twitter/android/moments/ui/fullscreen/cv;Lcin;)Lakh;
    .locals 7

    .prologue
    .line 38
    invoke-static {p1}, Lakf;->a(Landroid/view/LayoutInflater;)Lakf;

    move-result-object v1

    .line 39
    new-instance v0, Lakh;

    .line 40
    invoke-static {p0}, Lcom/twitter/android/moments/ui/fullscreen/ew;->a(Landroid/content/Context;)Lcom/twitter/android/moments/ui/fullscreen/ew;

    move-result-object v2

    new-instance v4, Lcom/twitter/android/moments/ui/fullscreen/cp;

    invoke-direct {v4}, Lcom/twitter/android/moments/ui/fullscreen/cp;-><init>()V

    move-object v3, p4

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lakh;-><init>(Lakf;Lcom/twitter/android/moments/ui/fullscreen/ew;Lcin;Lcom/twitter/android/moments/ui/fullscreen/gl;Landroid/content/res/Resources;Lcom/twitter/android/moments/ui/fullscreen/cv;)V

    .line 39
    return-object v0
.end method

.method static synthetic a(Lakh;)Lcom/twitter/android/moments/ui/fullscreen/gl;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lakh;->g:Lcom/twitter/android/moments/ui/fullscreen/gl;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/twitter/model/moments/viewmodels/y;Lcom/twitter/model/core/Tweet;)V
    .locals 6

    .prologue
    .line 61
    invoke-static {p2}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lakh;->c:Lakf;

    iget-object v1, p0, Lakh;->d:Lcom/twitter/android/moments/ui/fullscreen/ew;

    iget-object v2, p0, Lakh;->c:Lakf;

    .line 63
    invoke-virtual {v2}, Lakf;->a()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/twitter/android/moments/ui/fullscreen/ew;->a(Lcom/twitter/model/moments/viewmodels/y;Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Lakf;->a(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p0, Lakh;->c:Lakf;

    iget-object v1, p2, Lcom/twitter/model/core/Tweet;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lakf;->b(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v0, p0, Lakh;->c:Lakf;

    iget-object v1, p0, Lakh;->e:Landroid/content/res/Resources;

    const v2, 0x7f0a0a87

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p2, Lcom/twitter/model/core/Tweet;->r:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lakf;->c(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v0, p0, Lakh;->c:Lakf;

    iget-boolean v1, p2, Lcom/twitter/model/core/Tweet;->H:Z

    invoke-virtual {v0, v1}, Lakf;->a(Z)V

    .line 67
    iget-object v0, p0, Lakh;->b:Lcom/twitter/android/moments/ui/fullscreen/cv;

    iget-object v1, p0, Lakh;->c:Lakf;

    invoke-virtual {v1}, Lakf;->d()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p1}, Lcom/twitter/android/moments/ui/fullscreen/cv;->a(Landroid/view/ViewGroup;Lcom/twitter/model/core/Tweet;Lcom/twitter/model/moments/viewmodels/MomentPage;)V

    .line 68
    iget-object v0, p0, Lakh;->c:Lakf;

    iget-object v1, p0, Lakh;->f:Lcin;

    invoke-virtual {v1, p2}, Lcin;->a(Lcom/twitter/model/core/Tweet;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lakf;->d(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, Lakh;->c:Lakf;

    new-instance v1, Laki;

    invoke-direct {v1, p0, p2}, Laki;-><init>(Lakh;Lcom/twitter/model/core/Tweet;)V

    invoke-virtual {v0, v1}, Lakf;->b(Landroid/view/View$OnClickListener;)V

    .line 75
    return-void
.end method

.method public aK_()Landroid/view/View;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lakh;->c:Lakf;

    invoke-virtual {v0}, Lakf;->e()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public aX_()Lrx/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/w",
            "<",
            "Lalk",
            "<",
            "Lcom/twitter/model/moments/viewmodels/y;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {p0}, Lrx/w;->a(Ljava/lang/Object;)Lrx/w;

    move-result-object v0

    return-object v0
.end method

.method public b()Lrx/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/o",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lakh;->c:Lakf;

    invoke-virtual {v0}, Lakf;->b()Lrx/o;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lakh;->b:Lcom/twitter/android/moments/ui/fullscreen/cv;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/cv;->a()V

    .line 86
    return-void
.end method
