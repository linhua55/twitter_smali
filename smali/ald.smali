.class public Lald;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lalk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lalk",
        "<",
        "Lcom/twitter/model/moments/viewmodels/af;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/res/Resources;

.field private final b:Lcom/twitter/android/moments/ui/fullscreen/ew;

.field private final c:Lcin;

.field private final d:Lcom/twitter/android/moments/ui/maker/cv;

.field private final e:Lalc;

.field private final f:Lrx/subjects/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/a",
            "<",
            "Lalk",
            "<",
            "Lcom/twitter/model/moments/viewmodels/af;",
            ">;>;"
        }
    .end annotation
.end field

.field private final g:Lcom/twitter/android/moments/ui/fullscreen/cv;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lalc;Lcom/twitter/android/moments/ui/fullscreen/ew;Lcin;Lcom/twitter/android/moments/ui/maker/cv;Lcom/twitter/android/moments/ui/fullscreen/cv;)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Lrx/subjects/a;->q()Lrx/subjects/a;

    move-result-object v0

    iput-object v0, p0, Lald;->f:Lrx/subjects/a;

    .line 60
    iput-object p1, p0, Lald;->a:Landroid/content/res/Resources;

    .line 61
    iput-object p3, p0, Lald;->b:Lcom/twitter/android/moments/ui/fullscreen/ew;

    .line 62
    iput-object p4, p0, Lald;->c:Lcin;

    .line 63
    iput-object p2, p0, Lald;->e:Lalc;

    .line 64
    iput-object p5, p0, Lald;->d:Lcom/twitter/android/moments/ui/maker/cv;

    .line 65
    iput-object p6, p0, Lald;->g:Lcom/twitter/android/moments/ui/fullscreen/cv;

    .line 66
    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/view/LayoutInflater;Landroid/content/res/Resources;Lcom/twitter/android/moments/ui/fullscreen/cv;Lcin;)Lald;
    .locals 7

    .prologue
    .line 47
    invoke-static {p1}, Lalc;->a(Landroid/view/LayoutInflater;)Lalc;

    move-result-object v2

    .line 48
    new-instance v0, Lald;

    .line 49
    invoke-static {p0}, Lcom/twitter/android/moments/ui/fullscreen/ew;->a(Landroid/content/Context;)Lcom/twitter/android/moments/ui/fullscreen/ew;

    move-result-object v3

    new-instance v5, Lcom/twitter/android/moments/ui/maker/cv;

    invoke-direct {v5}, Lcom/twitter/android/moments/ui/maker/cv;-><init>()V

    move-object v1, p2

    move-object v4, p4

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lald;-><init>(Landroid/content/res/Resources;Lalc;Lcom/twitter/android/moments/ui/fullscreen/ew;Lcin;Lcom/twitter/android/moments/ui/maker/cv;Lcom/twitter/android/moments/ui/fullscreen/cv;)V

    .line 48
    return-object v0
.end method

.method static synthetic a(Lald;)Lrx/subjects/a;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lald;->f:Lrx/subjects/a;

    return-object v0
.end method

.method static synthetic b(Lald;)Lalc;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lald;->e:Lalc;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/twitter/android/moments/ui/fullscreen/gl;Lcom/twitter/model/core/Tweet;)V
    .locals 2

    .prologue
    .line 92
    if-eqz p2, :cond_0

    .line 93
    iget-object v0, p0, Lald;->e:Lalc;

    new-instance v1, Lalf;

    invoke-direct {v1, p0, p1, p2}, Lalf;-><init>(Lald;Lcom/twitter/android/moments/ui/fullscreen/gl;Lcom/twitter/model/core/Tweet;)V

    invoke-virtual {v0, v1}, Lalc;->a(Landroid/view/View$OnClickListener;)V

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lald;->e:Lalc;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lalc;->a(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public a(Lcom/twitter/android/moments/ui/fullscreen/w;)V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lald;->e:Lalc;

    new-instance v1, Lalg;

    invoke-direct {v1, p0, p1}, Lalg;-><init>(Lald;Lcom/twitter/android/moments/ui/fullscreen/w;)V

    invoke-virtual {v0, v1}, Lalc;->b(Landroid/view/View$OnClickListener;)V

    .line 117
    return-void
.end method

.method public a(Lcom/twitter/model/moments/viewmodels/af;Lcom/twitter/model/core/Tweet;)V
    .locals 7

    .prologue
    .line 70
    iget-object v0, p0, Lald;->a:Landroid/content/res/Resources;

    invoke-static {v0, p1}, Lcom/twitter/android/moments/ui/fullscreen/ds;->a(Landroid/content/res/Resources;Lcom/twitter/model/moments/viewmodels/ai;)Lcom/twitter/model/moments/bd;

    move-result-object v0

    .line 71
    invoke-static {p2}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v1, p0, Lald;->e:Lalc;

    iget-object v2, p0, Lald;->b:Lcom/twitter/android/moments/ui/fullscreen/ew;

    iget-object v3, p0, Lald;->e:Lalc;

    invoke-virtual {v3}, Lalc;->b()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/twitter/android/moments/ui/fullscreen/ew;->a(Lcom/twitter/model/moments/viewmodels/y;Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lalc;->a(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v1, p0, Lald;->e:Lalc;

    iget-object v2, p2, Lcom/twitter/model/core/Tweet;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lalc;->b(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v1, p0, Lald;->e:Lalc;

    iget-object v2, p0, Lald;->a:Landroid/content/res/Resources;

    const v3, 0x7f0a0a87

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p2, Lcom/twitter/model/core/Tweet;->r:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lalc;->c(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v1, p0, Lald;->e:Lalc;

    iget-object v2, p2, Lcom/twitter/model/core/Tweet;->n:Ljava/lang/String;

    new-instance v3, Lale;

    invoke-direct {v3, p0}, Lale;-><init>(Lald;)V

    invoke-virtual {v1, v2, v3}, Lalc;->a(Ljava/lang/String;Lcom/twitter/media/request/c;)V

    .line 83
    iget-object v1, p0, Lald;->e:Lalc;

    invoke-virtual {v1, v0}, Lalc;->a(Lcom/twitter/model/moments/bd;)V

    .line 84
    iget-object v0, p0, Lald;->e:Lalc;

    iget-boolean v1, p2, Lcom/twitter/model/core/Tweet;->H:Z

    invoke-virtual {v0, v1}, Lalc;->a(Z)V

    .line 86
    iget-object v0, p0, Lald;->g:Lcom/twitter/android/moments/ui/fullscreen/cv;

    iget-object v1, p0, Lald;->e:Lalc;

    invoke-virtual {v1}, Lalc;->a()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p1}, Lcom/twitter/android/moments/ui/fullscreen/cv;->a(Landroid/view/ViewGroup;Lcom/twitter/model/core/Tweet;Lcom/twitter/model/moments/viewmodels/MomentPage;)V

    .line 87
    iget-object v0, p0, Lald;->e:Lalc;

    iget-object v1, p0, Lald;->c:Lcin;

    invoke-virtual {v1, p2}, Lcin;->a(Lcom/twitter/model/core/Tweet;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lalc;->a(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public aK_()Landroid/view/View;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lald;->e:Lalc;

    invoke-virtual {v0}, Lalc;->a()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public aX_()Lrx/w;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/w",
            "<",
            "Lalk",
            "<",
            "Lcom/twitter/model/moments/viewmodels/af;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lald;->d:Lcom/twitter/android/moments/ui/maker/cv;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/cv;->a()Lrx/t;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lald;->f:Lrx/subjects/a;

    .line 124
    invoke-virtual {v1, v0}, Lrx/subjects/a;->a(Lrx/t;)Lrx/o;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lrx/o;->b()Lrx/w;

    move-result-object v0

    .line 123
    return-object v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lald;->g:Lcom/twitter/android/moments/ui/fullscreen/cv;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/cv;->a()V

    .line 131
    return-void
.end method
