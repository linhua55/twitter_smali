.class public Lakc;
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
        "Lcom/twitter/model/moments/viewmodels/MomentPage;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/twitter/android/moments/viewmodels/q;

.field private final b:Lajx;

.field private final c:Lcom/twitter/android/moments/ui/maker/cv;

.field private d:Lcom/twitter/media/request/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/media/request/i",
            "<",
            "Lcom/twitter/media/request/ImageResponse;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lrx/subjects/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/a",
            "<",
            "Lalk",
            "<",
            "Lcom/twitter/model/moments/viewmodels/MomentPage;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:Lrx/ap;


# direct methods
.method public constructor <init>(Lajx;Lcom/twitter/android/moments/viewmodels/q;Lcom/twitter/android/moments/ui/maker/cv;)V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Lrx/subjects/a;->q()Lrx/subjects/a;

    move-result-object v0

    iput-object v0, p0, Lakc;->e:Lrx/subjects/a;

    .line 69
    iput-object p1, p0, Lakc;->b:Lajx;

    .line 70
    iput-object p2, p0, Lakc;->a:Lcom/twitter/android/moments/viewmodels/q;

    .line 71
    iput-object p3, p0, Lakc;->c:Lcom/twitter/android/moments/ui/maker/cv;

    .line 72
    return-void
.end method

.method public static a(Lajx;Lcom/twitter/android/moments/viewmodels/q;)Lakc;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Lakc;

    new-instance v1, Lcom/twitter/android/moments/ui/maker/cv;

    invoke-direct {v1}, Lcom/twitter/android/moments/ui/maker/cv;-><init>()V

    invoke-direct {v0, p0, p1, v1}, Lakc;-><init>(Lajx;Lcom/twitter/android/moments/viewmodels/q;Lcom/twitter/android/moments/ui/maker/cv;)V

    return-object v0
.end method

.method public static a(Landroid/view/LayoutInflater;Lcom/twitter/android/moments/viewmodels/q;Lcom/twitter/model/moments/k;Lcom/twitter/android/moments/ui/fullscreen/gn;)Lakc;
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    .line 54
    invoke-static {p0, p2, p3, v0}, Lajx;->a(Landroid/view/LayoutInflater;Lcom/twitter/model/moments/k;Lcom/twitter/android/moments/ui/fullscreen/gn;Z)Lajx;

    move-result-object v0

    .line 53
    invoke-static {v0, p1}, Lakc;->a(Lajx;Lcom/twitter/android/moments/viewmodels/q;)Lakc;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lakc;)Lcom/twitter/media/request/i;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lakc;->d:Lcom/twitter/media/request/i;

    return-object v0
.end method

.method static synthetic b(Lakc;)Lcom/twitter/android/moments/viewmodels/q;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lakc;->a:Lcom/twitter/android/moments/viewmodels/q;

    return-object v0
.end method

.method private b(Lajx;Lcom/twitter/android/moments/viewmodels/q;)V
    .locals 2

    .prologue
    .line 116
    .line 117
    invoke-interface {p2}, Lcom/twitter/android/moments/viewmodels/q;->c()Lcom/twitter/model/moments/k;

    move-result-object v0

    invoke-virtual {p1}, Lajx;->d()F

    move-result v1

    .line 116
    invoke-static {v0, v1}, Lcom/twitter/model/moments/k;->a(Lcom/twitter/model/moments/k;F)Lcom/twitter/model/moments/g;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_0

    .line 119
    iget-object v1, v0, Lcom/twitter/model/moments/g;->f:Lcom/twitter/util/math/Size;

    invoke-virtual {v0}, Lcom/twitter/model/moments/g;->a()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lajx;->a(Lcom/twitter/util/math/Size;Landroid/graphics/Rect;)V

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    invoke-interface {p2}, Lcom/twitter/android/moments/viewmodels/q;->b()Lcom/twitter/util/math/Size;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lajx;->a(Lcom/twitter/util/math/Size;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method static synthetic c(Lakc;)Lajx;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lakc;->b:Lajx;

    return-object v0
.end method

.method private d()Ldjj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldjj",
            "<-",
            "Lcom/twitter/media/request/ImageResponse;",
            "+",
            "Lrx/w",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Lakd;

    invoke-direct {v0, p0}, Lakd;-><init>(Lakc;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/twitter/media/request/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/media/request/i",
            "<",
            "Lcom/twitter/media/request/ImageResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    iput-object p1, p0, Lakc;->d:Lcom/twitter/media/request/i;

    .line 77
    return-void
.end method

.method public a(Lcom/twitter/model/moments/viewmodels/MomentPage;Lcom/twitter/model/core/Tweet;)V
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lakc;->c:Lcom/twitter/android/moments/ui/maker/cv;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/cv;->a()Lrx/t;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lakc;->b:Lajx;

    .line 84
    invoke-virtual {v1}, Lajx;->c()Lrx/w;

    move-result-object v1

    .line 85
    invoke-virtual {v1, v0}, Lrx/w;->a(Lrx/t;)Lrx/w;

    move-result-object v1

    .line 86
    invoke-direct {p0}, Lakc;->d()Ldjj;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/w;->a(Ldjj;)Lrx/w;

    move-result-object v1

    .line 87
    invoke-virtual {v1, v0}, Lrx/w;->a(Lrx/t;)Lrx/w;

    move-result-object v0

    .line 88
    invoke-static {p0}, Ldcn;->a(Ljava/lang/Object;)Ldjj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/w;->c(Ldjj;)Lrx/w;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lrx/w;->b()Lrx/o;

    move-result-object v0

    iget-object v1, p0, Lakc;->e:Lrx/subjects/a;

    .line 90
    invoke-virtual {v0, v1}, Lrx/o;->a(Lrx/r;)Lrx/ap;

    move-result-object v0

    iput-object v0, p0, Lakc;->f:Lrx/ap;

    .line 91
    iget-object v0, p0, Lakc;->b:Lajx;

    iget-object v1, p0, Lakc;->a:Lcom/twitter/android/moments/viewmodels/q;

    invoke-interface {v1}, Lcom/twitter/android/moments/viewmodels/q;->a()Lcom/twitter/media/request/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lajx;->a(Lcom/twitter/media/request/b;)V

    .line 92
    iget-object v0, p0, Lakc;->b:Lajx;

    iget-object v1, p0, Lakc;->a:Lcom/twitter/android/moments/viewmodels/q;

    invoke-direct {p0, v0, v1}, Lakc;->b(Lajx;Lcom/twitter/android/moments/viewmodels/q;)V

    .line 93
    return-void
.end method

.method public aK_()Landroid/view/View;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lakc;->b:Lajx;

    invoke-virtual {v0}, Lajx;->a()Landroid/view/ViewGroup;

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
            "Lcom/twitter/model/moments/viewmodels/MomentPage;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lakc;->e:Lrx/subjects/a;

    invoke-virtual {v0}, Lrx/subjects/a;->b()Lrx/w;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lakc;->f:Lrx/ap;

    invoke-static {v0}, Lddg;->a(Lrx/ap;)V

    .line 134
    return-void
.end method
